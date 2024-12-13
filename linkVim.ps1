$currentDir = Get-Location
cmd /c mklink /D %HOMEDRIVE%%HOMEPATH%\vimfiles $currentDir\vimfiles
