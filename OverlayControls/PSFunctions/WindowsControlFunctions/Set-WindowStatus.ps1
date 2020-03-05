Function Set-WindowStatus{
#1..2 | % { Notepad.exe }
    Param (
        [parameter(ValueFromPipelineByPropertyName=$True)]
        $ProcessName,
        $CommandLineText,
   [ValidateSet('FORCEMINIMIZE', 'HIDE', 'MAXIMIZE', 'MINIMIZE', 'RESTORE', 'SHOW', 'SHOWDEFAULT', 'SHOWMAXIMIZED', 'SHOWMINIMIZED', 'SHOWMINNOACTIVE', 'SHOWNA', 'SHOWNOACTIVATE', 'SHOWNORMAL')]
[string]$DesiredStatus,
        [int]$X,
        [int]$Y,
        [int]$Width,
        [int]$Height,
        [switch]$Passthru
)

<#
Set-WindowStatus -ProcessName eqgame -CommandLineText 'plmitchell' -DesiredStatus SHOWNOACTIVATE
Set-WindowStatus -ProcessName eqgame -CommandLineText 'plmitchell' -DesiredStatus SHOWNORMAL
Set-WindowStatus -ProcessName eqgame -CommandLineText 'plmitchell' -DesiredStatus SHOW
Set-WindowStatus -ProcessName eqgame -CommandLineText 'plmitchell' -DesiredStatus SHOWMINNOACTIVE
Set-WindowStatus -ProcessName eqgame -CommandLineText 'plmitchell' -DesiredStatus FORCEMINIMIZE
$ProcessName = 'eqgame'
$CommandLineText = 'plmitchell'
$DesiredStatus = 'SHOWNOACTIVATE'
#>

$WindowStates = @{
'FORCEMINIMIZE'   = 11
'HIDE'            = 0
'MAXIMIZE'        = 3
'MINIMIZE'        = 6
'RESTORE'         = 9
'SHOW'            = 5
'SHOWDEFAULT'     = 10
'SHOWMAXIMIZED'   = 3
'SHOWMINIMIZED'   = 2
'SHOWMINNOACTIVE' = 7
'SHOWNA'          = 8
'SHOWNOACTIVATE'  = 4
'SHOWNORMAL'      = 1
}
$ErrorActionPreference = 'Continue'
$DesiredStatusID = $WindowStates.$DesiredStatus
$ProcessID = (Get-WmiObject Win32_Process -Filter "CommandLine like '%$CommandLineText' and Name = '$ProcessName.exe'" | Select-Object ProcessId).ProcessId
$WindowCode = '[DllImport("user32.dll")] public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);'
$AsyncWindow = Add-Type -MemberDefinition $WindowCode -Name Win32ShowWindowAsync -namespace Win32Functions -PassThru
# get the handles for each window
    if($hwnd0 = (Get-Process -Name $ProcessName | Where {$_.Id -eq $ProcessID}).MainWindowHandle -eq $null)
    {Write-Host "Cannot find a process ID with the combination of ProcessName: $ProcessName and CommandLineText: $CommandLineText `r`n Please Check your input parameters and compare them to the [Image Name] and [Command Line] columns in windows task manager" -ForegroundColor Red}
    Else
    {$hwnd0 = (Get-Process -Name $ProcessName | Where {$_.Id -eq $ProcessID}).MainWindowHandle
    if($AsyncWindow::ShowWindowAsync($hwnd0, $DesiredStatusID) -eq $false)
        {$AsyncWindow::ShowWindowAsync($hwnd0, $DesiredStatusID)}
    }
}