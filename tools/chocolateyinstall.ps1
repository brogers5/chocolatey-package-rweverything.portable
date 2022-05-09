$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'http://rweverything.com/downloads/RwPortableV1.7.zip'
$url64      = 'http://rweverything.com/downloads/RwPortableX64V1.7.zip'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url            = $url
  url64bit       = $url64
  checksum       = '2ca2e108159c6a93f8d152a3c9eca83948e7d6749bfc7ba856bf80061d94c2ef'
  checksumType   = 'sha256'
  checksum64     = '34e5ae66f1417c12ea09219e6582964bd836da0535355a31aa268be9a563051b'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

if ((Get-OSArchitectureWidth -eq 64) -and ($env:chocolateyForceX86 -ne $true))
{
  $extractedDirectory = 'Win64'
}
else
{
  $extractedDirectory = 'Win32'
}
$binaryDirectoryPath = Join-Path -Path $toolsDir -ChildPath $extractedDirectory | Join-Path -ChildPath 'Portable'
$binaryFileName = 'Rw.exe'

$guiShimPath = Join-Path -Path $binaryDirectoryPath -ChildPath "$binaryFileName.gui"
Set-Content -Path $guiShimPath -Value $null -ErrorAction SilentlyContinue

$linkName = 'RWEverything.lnk'
$programsDirectory = [Environment]::GetFolderPath([Environment+SpecialFolder]::Programs)
$shortcutFilePath = Join-Path -Path $programsDirectory -ChildPath $linkName
$targetPath = Join-Path -Path $binaryDirectoryPath -ChildPath $binaryFileName
Install-ChocolateyShortcut -shortcutFilePath $shortcutFilePath -targetPath $targetPath -WorkingDirectory $binaryDirectoryPath -ErrorAction SilentlyContinue
