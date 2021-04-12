# CDT
Tools for CDT

# Red Team
NTDS.dit dump tool for Windows AD

## NTDS.dit Stealer
This tool will use an already established RDP connection to quietly dump the NTDS.dit and the registry keys needed to perform an attack and clear the logs.

### Usage
1. Prerequisite: Have an established RDP Connection to the Windows AD
2. RDP Connection: ./ActiveDirectory.ps1 | outnull (Need to be ran as an Admin in powershell)
3. Attacker Machine: Paste the item outside the RDP Connection
4. Transfer to Files Linux Machine 
5. Use secretsdump.py to extract the hashes using the ntds.dit & SYSTEM key


