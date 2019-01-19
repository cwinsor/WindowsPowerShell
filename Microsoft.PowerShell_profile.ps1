
# references
# http://unxutils.sourceforge.net/
# https://stackoverflow.com/questions/503846/how-do-i-echo-and-send-console-output-to-a-file-in-a-bat-script
#
# example:
#   .\run_pyinstaller_0_super_basic.ps1  2>&1 | tee tempfile
#   type tempfile | less


$Env:Path += ";C:\Users\CWinsor\Documents\WindowsPowerShell\UnxUpdates"


# -------------------------------
# change the god-awful colors on power shell (actually just make the foreground brighter)
$Host.UI.RawUI.ForegroundColor = 'White'


# --------------------------
Set-Alias which Get-Command

Set-Alias lsa Get-ChildItem


