# StandardAutomationScripts
---
 This repository will hold all my current scripts that I use to automate certain tasks in various languages I have enncountered so far

 Scripts can range from launching certain application to executing certain task

`compress.sh`<br>
Dependency: '`None`'<br>
Scans directory of the script for python scripts in the root folder of the script while also including readme.md, requirements.txt
Then it will create a zip file for all the files in the directory and if the zip file already exist then delete and recreate a new file


`compress_source_dev.sh` <br>
Dependency: `compress.sh`<br>
This script will execute a compression script then open Visual Studio Code along with the terminal set to run in the environment,
currently I use sitePackage for the environment folder you can replace the same for your case


`startup_launcher.bat` -- Windows Specific<br>
Dependency: Place this script's shortcut in `:startup` / `shell:common startup`<br>
This is used for non conventional programs that you may use but also want to be presented to you on startup

---