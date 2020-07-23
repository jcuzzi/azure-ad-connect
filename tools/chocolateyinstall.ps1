$checksum = '601fe3b20792668d0f140b040c3d7feeeb54616391d5a5ab6c2fb42feccae20c'
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
