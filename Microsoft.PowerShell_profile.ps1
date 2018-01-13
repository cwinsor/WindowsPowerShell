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

###########################################







