# hosts-android - Unified hosts file for Android

An extension to @StevenBlack's Unified hosts file project to make a flashable zip for rooted Android devices
* Original Project: **https://github.com/StevenBlack/hosts**.

## Installation

Simply add this project to the root directory of the Unified hosts file project

## Generate your own Android flashable zip

The `makeAndroidFlashable.bat` script launches 'makeAndroidFlashable.py', which is python 2.7-compatible.
It will generate a unified hosts file which is flashable under Android recovery on rooted devices using TWRP or ClockworkMod
The zip uses busybox, so make sure your rom has at least the bare essentials of busybox.

### Usage

Simply run the 'makeAndroidFlashable.bat' script as Administrator after generating your preferred hosts file using the original project.
