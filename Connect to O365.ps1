Set-ExecutionPolicy RemoteSigned
$UserCredential = Get-Credential

$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
Import-PSSession $Session -DisableNameChecking

Get-IRMConfiguration
Test-IRMConfiguration -Sender sbitech@smithschafer.com

End Session
Remove-PSSession $Session