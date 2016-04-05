' SYNOPSIS
' 	Run a PowerShell script in the user context without a script window
' EXAMPLE
'	wscript.exe PsRun.vbs MyPsScript.ps1
' AUTHOR
'	Glen Buktenica

Set objShell = CreateObject("Wscript.Shell")
Set args = Wscript.Arguments
For Each arg In args
	Dim PSRun
	PSRun = "powershell.exe -WindowStyle hidden -ExecutionPolicy bypass -NonInteractive -File " & arg
	objShell.Run(PSRun),0
Next
