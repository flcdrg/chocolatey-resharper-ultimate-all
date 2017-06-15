$ErrorActionPreference = 'Stop'; # stop on all errors

$platformPackageName = 'resharper-platform'
$packageName = 'ReSharper-Ultimate-All'
$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$commonPath = $(Split-Path -parent $(Split-Path -parent $scriptPath))
$installPath = Join-Path  (Join-Path $commonPath $platformPackageName) 'JetBrains.ReSharperUltimate.2017.1.3.exe'
Uninstall-ChocolateyPackage $packageName 'exe' '/Silent=True /SpecificProductNamesToRemove=ReSharper;dotTrace;dotMemory;dotCover;dotPeek /VsVersion=* /ReSharper9PlusMsi=True' $installPath