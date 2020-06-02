$checksum = 'ad3f594aaf532f42aae7760787b749995eb3f5769c9044ce088cf502ed60e337'
$url = 'https://download.microsoft.com/download/B/0/0/B00291D0-5A83-4DE7-86F5-980BC00DE05A/AzureADConnect.msi'

$softwareName = 'Microsoft Azure AD Connect'

$packageArgs = @{
  packageName   = 'azure-ad-connect'
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType      = 'msi'
  url           = $url
  silentArgs    = '/quiet /norestart'
  validExitCodes = @(0, 3010, 1641)
  softwareName  = $softwareName
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
