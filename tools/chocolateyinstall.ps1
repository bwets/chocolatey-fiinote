﻿
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.fiinote.com/pub/appdownload.jsp?os=2'
$url64      = ''

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'FiiNote*'

  checksum      = 'A94FD0CDA4746616FA6F38D83AD6A5293015E71AD425AFDA4C14CEE978F49758'
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs










    








