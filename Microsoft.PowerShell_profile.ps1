###########################################
Set-PSReadlineKeyHandler -Key Tab -Function Complete
set-PSReadlineOption -BellStyle none
Set-Alias lsa  Get-ChildItem
Set-Alias lsat Get-ChildItem | sort LastWriteTime -Descending
Set-Alias which Get-Command



function vi ($File) {
    $File2=$File.replace('\','/');
    bash -c "vi $File2"
}




## always start and work from Documents
## cd ~/Documents


$Host.UI.RawUI.BackgroundColor = ($bckgrnd = 'Black')
$Host.UI.RawUI.ForegroundColor = 'White'
$Host.PrivateData.ErrorForegroundColor = 'Red'
$Host.PrivateData.ErrorBackgroundColor = $bckgrnd
$Host.PrivateData.WarningForegroundColor = 'Magenta'
$Host.PrivateData.WarningBackgroundColor = $bckgrnd
$Host.PrivateData.DebugForegroundColor = 'Yellow'
$Host.PrivateData.DebugBackgroundColor = $bckgrnd
$Host.PrivateData.VerboseForegroundColor = 'Green'
$Host.PrivateData.VerboseBackgroundColor = $bckgrnd
$Host.PrivateData.ProgressForegroundColor = 'Cyan'
$Host.PrivateData.ProgressBackgroundColor = $bckgrnd
Clear-Host


###########################################







