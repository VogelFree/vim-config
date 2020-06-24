$currentDir = Get-Location
cmd /c mklink /D %HOMEDRIVE%%HOMEPATH%\vimfiles $currentDir
cmd /c mklink /D %HOMEDRIVE%%HOMEPATH%\.vim $currentDir
