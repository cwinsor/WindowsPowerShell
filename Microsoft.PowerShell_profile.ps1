# commit 190930

# references
# http://unxutils.sourceforge.net/
# https://stackoverflow.com/questions/503846/how-do-i-echo-and-send-console-output-to-a-file-in-a-bat-script
#
# example:
#   .\run_pyinstaller_0_super_basic.ps1  2>&1 | tee tempfile
#   type tempfile | less


$Env:Path += ";C:\Users\Chris\Documents\WindowsPowerShell\UnxUpdates"


# -------------------------------
# change the god-awful colors on power shell (actually just make the foreground brighter)
$Host.UI.RawUI.ForegroundColor = 'White'


# --------------------------
Set-Alias which Get-Command

Set-Alias lsa Get-ChildItem


# --------------------------
# unxutils has annoying bell sent from shell when you hit backspace if you are already at the start of the line
# cannot figure out how to turn it off in unixutils/linux
# so the following turns off speakers in Power Shell

Function Set-Speaker($Volume){$wshShell = new-object -com wscript.shell;1..50 | % {$wshShell.SendKeys([char]174)};1..$Volume | % {$wshShell.SendKeys([char]175)}}
#
#Example usage. Remember each tick is 2%
#Sets volume to 60%
#Set-Speaker -Volume 30
#Sets volume to 80%
#Set-Speaker -Volume 40
#Sets volume to 100%
#Set-Speaker -Volume 50
#and This function will Toggle-Mute
Function Toggle-Mute(){$wshShell = new-object -com wscript.shell;$wshShell.SendKeys([char]173)}
#
Set-Speaker -Volume 10
Toggle-Mute


# crop the prompt line (to keep it from getting too long)
# Reference:
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_prompts?view=powershell-6

function prompt {"PS $(($executionContext.SessionState.Path.CurrentLocation.ToString()).split("\")[-1])$('\' * ($nestedPromptLevel + 1)) "}



