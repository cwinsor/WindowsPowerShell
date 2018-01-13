# WindowsPowerShell
This is a Microsoft.PowerShell_profile.ps1  (.bashrc equivalent) and README - if you come from Linux/bash


# how to set up powershell in Windows 10

mkdir C:\Users\CWinsor\Documents\WindowsPowerShell 
cd    C:\Users\CWinsor\Documents\WindowsPowerShell 
git clone https://github.com/cwinsor/WindowsPowerShell.git

<above will give you a powershell .ps1 (.bashrc equivalent)>

+===============================
to run bash from within powershell

1b) set windows powershell execution policy to allow scripts
run powershell as "administrator"
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned


2) enable bash/linux commands from within powershell
as detailed in:
https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/

set Windows to 'developer mode':
<windows, settings developer-mode>
enable bash/linux subsystem:
<windows, control-panel, programs, windows features, Windows Subsystem for Linux>
go to "cmd" prompt and enter "bash" - this will direct ytou to download Ubuntu from the "Microsoft Store" - this takes FOREVER but eventually works


from with the bash shell - set up "vi" color scheme to as to not conflict with the horrible blue from powershell
echo "colorscheme elflord" > .vimrc







