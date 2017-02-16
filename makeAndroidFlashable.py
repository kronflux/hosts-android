#!/usr/bin/env python
import os
import zipfile

def zipdir(path, ziph):
    length = len(path)

    # ziph is zipfile handle
    for root, dirs, files in os.walk(path):
        folder = root[length:] # path without "parent"
        for file in files:
            ziph.write(os.path.join(root, file), os.path.join(folder, file))

if __name__ == '__main__':
    zipf = zipfile.ZipFile('AndroidFlashableHosts.zip', 'w', zipfile.ZIP_DEFLATED)
    zipdir('android', zipf)
    zipf.close()