# PsRun

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Copyright Glen Buktenica](https://img.shields.io/badge/Copyright-Glen_Buktenica-blue.svg)](http://buktenica.com)

Running PowerShell scripts in a user context without any window being displayed at all is not possible.  
The closest in the WindowStyle hidden switch available from version 2 onwards:

```powershell
PowerShell.exe -WindowStyle hidden Run-Script.ps1
```

This will still display a temporary PowerShell window.  
To completely remove the window from the use context use this vbs to call the PowerShell script:

```command
wscript.exe PsRun.vbs Run-Script.ps1
```

The most common use case for this operation is a scheduled task that needs to run in the user context and needs to not display an annoying pop-up.