# CDT
Tools for CDT

# Red Team
NTDS.dit dump tool for Windows AD

## NTDS.dit Stealer
This tool will use an already established RDP connection to quietly dump the NTDS.dit and the registry keys needed to perform an attack and clear the logs. This attack will help the Red Team to obtain all Windows Domain Users password hashes. 

### Usage
1. Prerequisite: Have an established RDP Connection to the Windows DC
2. Using the RDP Connection to the Windows DC: run the "ActiveDirectory.ps1 | outnull" script in an Admin Powershell.
4. Using Attacking Windows Box: Minus out of the RDP Connection and paste the item on your system
5. Optional: If you would like to connect to the Windows DC again and manaully delete the file run "PS1> Remove-Item C:\Windows\NTSD -Recurse -Force"
6. Transfer to Files Linux Machine 
7. Use secretsdump.py to extract the hashes using the ntds.dit & SYSTEM key

## References
https://github.com/SecureAuthCorp/impacket/blob/master/impacket/ImpactPacket.py
