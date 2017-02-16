@ECHO OFF
TITLE Make Android Flashable Hosts Zip
SETLOCAL ENABLEDELAYEDEXPANSION

if not exist "%WINDIR%\py.exe" (
	ECHO :: ERROR :: Python 3.5 Runtime NOT FOUND...
	ECHO :: ERROR :: Download and install lastest Python 3.5 for Windows from https://www.python.org/downloads/
	ECHO :: ERROR :: Exit...
	GOTO END
) ELSE (
	GOTO PY35RT
 )
:PY35RT
if not exist "%LOCALAPPDATA%\Programs\Python\Python35\Python35.dll" (
	ECHO :: ERROR :: Python 3.5 Runtime NOT FOUND...
	ECHO :: ERROR :: Download and install lastest Python 3.5 for Windows from https://www.python.org/downloads/
	ECHO :: ERROR :: Exit...
	GOTO END
) ELSE (
	ECHO :: INFO :: Python 3.5 Runtime was found!
	ECHO :: INFO :: Running main script...
	GOTO :MAKEZIP
 )
:MAKEZIP
	::Delete hosts file if it exists already
	DEL /F /Q %~dp0android\system\etc\hosts

	::Copy the hosts file to the appropriate directory
	COPY /Y %~dp0hosts %~dp0android\system\etc\hosts

	::Run the script to zip android directory.
	makeAndroidFlashable.py

	GOTO END
:END

ENDLOCAL
EXIT