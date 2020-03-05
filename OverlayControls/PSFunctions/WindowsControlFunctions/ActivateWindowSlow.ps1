Function ActivateWindow{
param (
    [Parameter(Mandatory=$True,Position=1)][string]$ProcessName,
    [Parameter(Mandatory=$True,Position=2)][string]$CommandLineText,
    [Parameter(Mandatory=$True)][int] $WaitTime
    )
Add-Type @"
    using System;
    using System.Runtime.InteropServices;
    public class StartActivateProgramClass {
        [DllImport("user32.dll")]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool SetForegroundWindow(IntPtr hWnd);
    }
"@

$ProcessID = (Get-WmiObject Win32_Process -Filter "CommandLine like '%$CommandLineText' and Name = '$ProcessName.exe'" | Select-Object ProcessId).ProcessId

if ($ProcessID)
{
    # get the window handle of the first application
    $Handle = (Get-Process -name $ProcessName | Where {$_.Id -eq $ProcessID}).MainWindowHandle
    # set the application to foreground
    [StartActivateProgramClass]::SetForegroundWindow($Handle)
    if ($WaitTime) {Start-Sleep -Seconds $WaitTime}
}

}