# StandardAutomationScripts
---
 This repository will hold all my current scripts that I use to automate certain tasks in various languages I have enncountered so far <br>
 Feel free to click on the links below those are pointed to the files within this repository and will take you to the code of  the script mentioned below.
 Scripts can range from launching certain application to executing certain task

[`compress.sh`](https://github.com/n0ts0lazy/StandardAutomationScripts/blob/main/compress.sh)<br>
Dependency: To be executed from the directory desired to be compressed<br>
Scans directory of the script for python scripts in the root folder of the script while also including readme.md, requirements.txt.
Then it will create a zip file for all the files in the directory and if the zip file already exist then delete and recreate a new file.


[`compress_source_dev.sh`](https://github.com/n0ts0lazy/StandardAutomationScripts/blob/main/compress_source_dev.sh)<br>
Dependency: Same directory as `compress.sh`<br>
This script will execute a compression script then open Visual Studio Code along with the terminal set to run in the environment,
currently I use sitePackage for the environment folder you can replace the same for your case.


[`startup_launcher.bat`](https://github.com/n0ts0lazy/StandardAutomationScripts/blob/main/startup_launcher.bat) -- Windows Specific<br>
Dependency: Place this script's shortcut in `:startup` / `shell:common startup`<br>
This is used for non conventional programs that you may use but also want to be presented to you on startup.

[`res_custom_app.bat`](https://github.com/n0ts0lazy/StandardAutomationScripts/blob/main/res_custom_app.bat) -- Windows Specific <br>
Dependency: Recommended to be placed in same folder as application <br>
Force any application with fixed window size to run in your set resolution.

---
