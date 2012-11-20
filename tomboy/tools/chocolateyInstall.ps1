﻿$packageName = 'tomboy'
$installerType = 'msi' 
$url = 'http://download.gnome.org/binaries/win32/tomboy/1.10/Tomboy-1.10.2.msi'
$url64 = $url # 64bit URL here or just use the same as $url
$silentArgs = '/quiet'
$validExitCodes = @(0,3010) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

# main helpers - these have error handling tucked into them already
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
