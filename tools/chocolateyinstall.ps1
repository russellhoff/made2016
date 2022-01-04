
$ErrorActionPreference = 'Stop';

$packageName        = 'made2016'
#$scriptPath         = $(Split-Path $MyInvocation.MyCommand.Path)
$url_local          = "https://download.microsoft.com/download/3/5/C/35C84C36-661A-44E6-9324-8786B8DBE231/accessdatabaseengine.exe"
$url_local64        = "https://download.microsoft.com/download/3/5/C/35C84C36-661A-44E6-9324-8786B8DBE231/accessdatabaseengine_X64.exe"
$checksum           = "ADC0504656F390D225530AC09F1FC2113295C4F9BAEFFEA1E983FECF4AC960F0"
$checksum64         = "04E96C9F1A1F7D251A88AECECF1DC10FF65950392787427C00814A43308003DE"
$killexec           = 0
$killexecprocess    = ""

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "/quiet /norestart REBOOT=ReallySuppress"
  validExitCodes= @(0, 3010, 1603, 1641)
  url           = $url_local
  url64bit      = $url_local64
  checksumType  = 'sha256'
  checksumType64= 'sha256'
  checksum      = $checksum
  checksum64    = $checksum64
}

# Should we kill some exec ?
if ($killexec) {
  Stop-Process -processname $killexecprocess -force
  }

  Install-ChocolateyPackage @packageArgs














