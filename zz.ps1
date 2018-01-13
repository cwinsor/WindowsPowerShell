###########################################
Set-PSReadlineKeyHandler -Key Tab -Function Complete
set-PSReadlineOption -BellStyle none
Set-Alias lsa  Get-ChildItem
Set-Alias lsat Get-ChildItem | Sort-Object -Property LastWriteTime

function vi ($File) {
    $File2=$File.replace('\','/');
    bash -c "vi $File2"
}
###########################################







