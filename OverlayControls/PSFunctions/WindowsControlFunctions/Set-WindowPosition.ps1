Function Set-WindowPosition{
    [OutputType('System.Automation.WindowInfo')]
    [cmdletbinding()]
    Param (
        [parameter(ValueFromPipelineByPropertyName=$True)]
        $ProcessName,
        $CommandLineText,
        [int]$X,
        [int]$Y,
        [int]$Width,
        [int]$Height,
        [switch]$Passthru
    )

<#
$ProcessName = 'eqgame'
$CommandLineText = 'plmitchell'
$X = 0
$Y = 0
$Width = 1646
$Height = 708
#>
<#Load the assembly needed to run the script#>
Begin {
    Try { 
        [void][Window]
    } Catch {
    Add-Type @"
        using System;
        using System.Runtime.InteropServices;
        public class Window {
        [DllImport("user32.dll")]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool GetWindowRect(
            IntPtr hWnd, out RECT lpRect);

        [DllImport("user32.dll")]
        [return: MarshalAs(UnmanagedType.Bool)]
        public extern static bool MoveWindow( 
            IntPtr handle, int x, int y, int width, int height, bool redraw);

        [DllImport("user32.dll")] 
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool ShowWindow(
            IntPtr handle, int state);
        }
        public struct RECT
        {
        public int Left;        // x position of upper-left corner
        public int Top;         // y position of upper-left corner
        public int Right;       // x position of lower-right corner
        public int Bottom;      // y position of lower-right corner
        }
"@
    }
}

    Process {
        $ErrorActionPreference = 'Continue'
        $ProcessID = (Get-WmiObject Win32_Process -Filter "CommandLine like '%$CommandLineText' and Name = '$ProcessName.exe'" | Select-Object ProcessId).ProcessId
        $Rectangle = New-Object rect
        $Handle = (Get-Process -name $ProcessName | Where {$_.Id -eq $ProcessID}).MainWindowHandle
        $Return = [Window]::GetWindowRect($Handle,[ref]$Rectangle)
        if ((Get-Process -name $ProcessName | Where {$_.Id -eq $ProcessID}).MainWindowHandle -eq $null)
            {Write-Host "Cannot find a process ID with the combination of ProcessName: $ProcessName and CommandLineText: $CommandLineText `r`n Please Check your input parameters and compare them to the [Image Name] and [Command Line] columns in windows task manager" -ForegroundColor Red; break}
        If (-NOT $PSBoundParameters.ContainsKey('Width')) {
            $Width = $Rectangle.Right - $Rectangle.Left
        }
        If (-NOT $PSBoundParameters.ContainsKey('Height')) {
            $Height = $Rectangle.Bottom - $Rectangle.Top
        }
        If ($Return) {
            $Return = [Window]::MoveWindow($Handle, $x, $y, $Width, $Height,$True)
        }
    }
}



