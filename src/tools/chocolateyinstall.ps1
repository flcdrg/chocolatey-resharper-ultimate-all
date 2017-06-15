$ErrorActionPreference = 'Stop'; # stop on all errors

$platformPackageName = 'resharper-platform'
$packageName = 'ReSharper-Ultimate-All'
$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$commonPath = $(Split-Path -parent $(Split-Path -parent $scriptPath))
$installPath = Join-Path  (Join-Path $commonPath $platformPackageName) 'JetBrains.ReSharperUltimate.2017.1.3.exe'
$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  file          = $installPath
  silentArgs    = "/Silent=True /SpecificProductNames=ReSharper;dotTrace;dotMemory;dotCover;dotPeek /VsVersion=*"
  validExitCodes= @(0)
  softwareName  = 'ReSharper'
}
Install-ChocolateyInstallPackage @packageArgs