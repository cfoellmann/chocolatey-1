$packageName	= 'KeePassX'
$installerType	= 'EXE'
$url			= '{{DownloadUrl}}'
$silentArgs		= '/VERYSILENT'
$validExitCodes	= @(0)
$pwd			= "$(split-path -parent $MyInvocation.MyCommand.Definition)"

#Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

Install-ChocolateyZipPackage "$packageName" "$url" "$pwd"

# Add to start menu

$appData = [environment]::GetFolderPath([environment+specialfolder]::ApplicationData)
$destPath = Join-Path "$appData" "Microsoft\Windows\Start Menu\Programs\"
$destLink = Join-Path "$destPath" "KeePassX.lnk"

$shell = New-Object -comObject WScript.Shell
$shortcut = $shell.CreateShortcut($destLink)
$shortcut.TargetPath = Join-Path "$pwd" "KeePassX\KeePassX.exe"
$shortcut.Save()