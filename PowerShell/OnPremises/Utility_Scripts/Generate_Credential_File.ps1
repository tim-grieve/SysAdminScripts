#Create Script Credentials
#Author: Tim Grieve
#Date: May 6, 2019
#Version 1.0

#Import Credential details and output file name
$filename = Read-Host "What would you like to name the Credential file?"
$credential = Get-Credential

#Export encrypted password file
$credential.password | ConvertFrom-SecureString | Out-File $filename