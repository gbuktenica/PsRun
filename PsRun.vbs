' SYNOPSIS
'   Run a PowerShell script in the user context without a script window being displayed.
' EXAMPLE
'   wscript.exe PsRun.vbs Run-Script.ps1
' EXAMPLE
'   wscript.exe PsRun.vbs C:\Scripts\Run-Script.ps1
' AUTHOR
'   Glen Buktenica

Set objShell = CreateObject("Wscript.Shell")
Set args = Wscript.Arguments
Dim PsPath

Set fso = CreateObject("Scripting.FileSystemObject")
If fso.FileExists("C:\Program Files\PowerShell\7\pwsh.exe") Then
    PsPath="""C:\Program Files\PowerShell\7-preview\pwsh.exe"""
ElseIf fso.FileExists("C:\Program Files\PowerShell\7-preview\pwsh.exe") Then
    PsPath="""C:\Program Files\PowerShell\7-preview\pwsh.exe"""
ElseIf fso.FileExists("C:\Program Files\PowerShell\6\pwsh.exe") Then
    PsPath="""C:\Program Files\PowerShell\6\pwsh.exe"""
Else
    PsPath="""C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"""
End If

For Each arg In args
    Dim PSRun
    PSRun = PsPath & " -WindowStyle hidden -ExecutionPolicy bypass -NonInteractive -File " & arg
    objShell.Run(PSRun), 0
Next
