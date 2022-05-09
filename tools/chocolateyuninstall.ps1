$ErrorActionPreference = 'Stop'

$linkName = 'RWEverything.lnk'

$programsDirectory = [Environment]::GetFolderPath([Environment+SpecialFolder]::Programs)

$shortcutFilePath = Join-Path -Path $programsDirectory -ChildPath $linkName
if (Test-Path $shortcutFilePath) {
  Remove-Item $shortcutFilePath
}
