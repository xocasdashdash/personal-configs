Set-Variable -Name uriGist -Value "https://gist.githubusercontent.com/xocasdashdash/2bb1d74adf954a21f343e3c681bf1aad/raw"
Get-ChildItem "modules\*.ps1" | %{.$_} 
$currPath=(Get-Item -Path ".\" -Verbose).FullName
Write-Output "Path: ${currPath}"
Add-StartMenuShortcut -Name "laplock" -Folder "Startup" -Target "${currPath}\laplock\Debug\laplock.exe" -WorkingDirectory "${currPath}\laplock\Debug" -Icon "${currPath}\laplock\Debug\laplock.exe" -IconIndex 0 -Description "Lock Laptop" -Force
Write-Output "Using gist: ${uriGist}"
Install-BoxstarterPackage -PackageName $uriGist -DisableReboots -Verbose
