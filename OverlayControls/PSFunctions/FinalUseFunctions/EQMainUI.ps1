function EQMainUI
{ Param( [ValidateSet('Alpha','Beta')][Parameter(Mandatory=$False,Position=1)][string]$CharacterSet)


$ErrorActionPreference = 'Continue'
.'C:\Users\Paul\Desktop\Powershell Scripts\Functions\Hide-Powershell.ps1'
.'C:\Users\Paul\Desktop\Powershell Scripts\Functions\ActivateWindow.ps1'

if((Test-Path -Path 'C:\Users\Paul\SetForegroundWindow.dll') -eq $false)
{
$Csharp = @"
    using System;
    using System.Runtime.InteropServices;
    public class StartActivateProgramClass {
        [DllImport("user32.dll")]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool SetForegroundWindow(IntPtr hWnd);
    }
"@ 

$OutputAssembly = '{0}\SetForegroundWindow.dll' -f $env:USERPROFILE
Add-Type -TypeDefinition $Csharp -OutputAssembly $OutputAssembly -OutputType Library;
}
if((get-module -name CursorPosition) -eq $Null) {Install-Module -Name CursorPosition ; import-module CursorPosition}
[System.Reflection.Assembly]::LoadFile('C:\Users\Paul\SetForegroundWindow.dll')

Hide-Powershell
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
[system.Reflection.Assembly]::LoadWithPartialName("Microsoft.Forms") | Out-Null
Add-Type -AssemblyName System.Windows.Forms

add-type -assemblyname PresentationCore
add-type -assemblyname PresentationFramework
add-type -assemblyname PresentationFramework-SystemCore
add-type -assemblyname PresentationFramework-SystemData
add-type -assemblyname PresentationFramework-SystemXml
add-type -assemblyname System.Xaml
add-type -assemblyname WindowsBase
add-type -Path C:\WINDOWS\Microsoft.Net\assembly\GAC_MSIL\PresentationFramework.Aero2\v4.0_4.0.0.0__31bf3856ad364e35\PresentationFramework.Aero2.dll
#add-type -Path C:\WINDOWS\system32\WinMetadata\Windows.UI.winmd
<#
$Global:CharacterSet = $Null
$Global:TankHandle = $Null
$Global:ClericHandle = $Null
$Global:ChanterHandle = $Null
$Global:BardHandle = $Null
$Global:WizHandle = $Null
$Global:MageHandle = $Null
#>
#([appdomain]::currentdomain.getassemblies() | sort -property fullname) | select fullname, location

$ButtonLength = 45
$ButtonHight = 17

$form = New-Object System.Windows.Forms.Form
$form.Text = 'Set Focus'
$form.Size = New-Object System.Drawing.Size(($ButtonLength*6+50),(($ButtonHight*2+7)*2))
$Form.maximumsize = New-Object System.Drawing.Size(($ButtonLength*6+50),(($ButtonHight*2+12)*2))
$form.StartPosition = '0'
$form.location = New-Object System.Drawing.Point(732,421)
$Form.backcolor = [System.Drawing.Color]::MidnightBlue
$form.TopMost = $true
$form.FormBorderStyle = 'FixedDialog'

<#much of the below click was housed in a funciton. I put it like this instead for speed purposes as it had to do the get process, get wmiobject and load the c#wraper every time the function was called, slowing down the transition to the new window.#>
$CharacterSetA = New-Object System.Windows.Forms.Button
$CharacterSetA.Location = New-Object System.Drawing.Point(($ButtonLength*0),($ButtonHight*1.4))
$CharacterSetA.Size = New-Object System.Drawing.Size($ButtonHight,$ButtonHight)
$CharacterSetA.Text = 'A'
$CharacterSetA.Add_Click({$Global:CharacterSet = 'Alpha' ; $Global:WizAccount = 'boramur3' ; $Global:TankAccount = 'plmitchell' ; $Global:MageAccount = 'emmitchell' ; $Global:ClericAccount = 'emmitchell2' ; $Global:ChanterAccount = 'plmitchell2' ; $Global:BardAccount = 'boramur'

$Global:TankHandle = (Get-Process -name 'eqgame' | Where {$_.Id -eq ((Get-WmiObject Win32_Process -Filter "CommandLine like '%$Global:TankAccount' and Name = 'eqgame.exe'" | Select-Object ProcessId).ProcessId)}).MainWindowHandle
$Global:ClericHandle = (Get-Process -name 'eqgame' | Where {$_.Id -eq ((Get-WmiObject Win32_Process -Filter "CommandLine like '%$Global:ClericAccount' and Name = 'eqgame.exe'" | Select-Object ProcessId).ProcessId)}).MainWindowHandle
$Global:ChanterHandle = (Get-Process -name 'eqgame' | Where {$_.Id -eq ((Get-WmiObject Win32_Process -Filter "CommandLine like '%$Global:ChanterAccount' and Name = 'eqgame.exe'" | Select-Object ProcessId).ProcessId)}).MainWindowHandle
$Global:BardHandle = (Get-Process -name 'eqgame' | Where {$_.Id -eq ((Get-WmiObject Win32_Process -Filter "CommandLine like '%$Global:BardAccount' and Name = 'eqgame.exe'" | Select-Object ProcessId).ProcessId)}).MainWindowHandle
$Global:WizHandle = (Get-Process -name 'eqgame' | Where {$_.Id -eq ((Get-WmiObject Win32_Process -Filter "CommandLine like '%$Global:WizAccount' and Name = 'eqgame.exe'" | Select-Object ProcessId).ProcessId)}).MainWindowHandle
$Global:MageHandle = (Get-Process -name 'eqgame' | Where {$_.Id -eq ((Get-WmiObject Win32_Process -Filter "CommandLine like '%$Global:MageAccount' and Name = 'eqgame.exe'" | Select-Object ProcessId).ProcessId)}).MainWindowHandle

})
$CharacterSetA.BackColor = [System.Drawing.Color]::LightGray
$CharacterSetA.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($CharacterSetA)

$CharacterSetB = New-Object System.Windows.Forms.Button
$CharacterSetB.Location = New-Object System.Drawing.Point(($ButtonHight*1),($ButtonHight*1.4))
$CharacterSetB.Size = New-Object System.Drawing.Size($ButtonHight,$ButtonHight)
$CharacterSetB.Text = 'B'
$CharacterSetB.Add_Click({$Global:CharacterSet = 'Beta' ; $Global:TankAccount = 'excruciator1' ; $Global:ClericAccount = 'excruciator2' ; $Global:ChanterAccount = 'excruciator3' ; $Global:BardAccount = 'excruciator4' ; $Global:WizAccount = 'excruciator5' ; $Global:MageAccount = 'excruciator6'

$Global:TankHandle = (Get-Process -name 'eqgame' | Where {$_.Id -eq ((Get-WmiObject Win32_Process -Filter "CommandLine like '%$Global:TankAccount' and Name = 'eqgame.exe'" | Select-Object ProcessId).ProcessId)}).MainWindowHandle
$Global:ClericHandle = (Get-Process -name 'eqgame' | Where {$_.Id -eq ((Get-WmiObject Win32_Process -Filter "CommandLine like '%$Global:ClericAccount' and Name = 'eqgame.exe'" | Select-Object ProcessId).ProcessId)}).MainWindowHandle
$Global:ChanterHandle = (Get-Process -name 'eqgame' | Where {$_.Id -eq ((Get-WmiObject Win32_Process -Filter "CommandLine like '%$Global:ChanterAccount' and Name = 'eqgame.exe'" | Select-Object ProcessId).ProcessId)}).MainWindowHandle
$Global:BardHandle = (Get-Process -name 'eqgame' | Where {$_.Id -eq ((Get-WmiObject Win32_Process -Filter "CommandLine like '%$Global:BardAccount' and Name = 'eqgame.exe'" | Select-Object ProcessId).ProcessId)}).MainWindowHandle
$Global:WizHandle = (Get-Process -name 'eqgame' | Where {$_.Id -eq ((Get-WmiObject Win32_Process -Filter "CommandLine like '%$Global:WizAccount' and Name = 'eqgame.exe'" | Select-Object ProcessId).ProcessId)}).MainWindowHandle
$Global:MageHandle = (Get-Process -name 'eqgame' | Where {$_.Id -eq ((Get-WmiObject Win32_Process -Filter "CommandLine like '%$Global:MageAccount' and Name = 'eqgame.exe'" | Select-Object ProcessId).ProcessId)}).MainWindowHandle

})
$CharacterSetB.BackColor = [System.Drawing.Color]::LightGray
$CharacterSetB.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($CharacterSetB)

$TankS = New-Object System.Windows.Forms.Button
$TankS.Location = New-Object System.Drawing.Point(($ButtonLength*0),($ButtonHight/2))
$TankS.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$TankS.Text = 'TankS'
$TankS.Add_Click({[StartActivateProgramClass]::SetForegroundWindow($Global:TankHandle) ; if([System.Windows.Forms.Cursor]::Position.X -gt 1){[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(-1025,460)}})
$TankS.BackColor = [System.Drawing.Color]::LightGray
$TankS.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($TankS)

$Tank = New-Object System.Windows.Forms.Button
$Tank.Location = New-Object System.Drawing.Point(($ButtonLength+10),0)
$Tank.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Tank.Text = 'Tank'
$Tank.Add_Click({[StartActivateProgramClass]::SetForegroundWindow($Global:TankHandle)})
$Tank.BackColor = [System.Drawing.Color]::LightGray
$Tank.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Tank)
#EQMainUI
$TankEasy = New-Object System.Windows.Forms.Button
$TankEasy.Location = New-Object System.Drawing.Point(($ButtonLength+10),(($ButtonHight*2)))
$TankEasy.Size = New-Object System.Drawing.Size(10,10)
$TankEasy.Add_Click({[StartActivateProgramClass]::SetForegroundWindow($Global:TankHandle) ; set-cursor -x ((Get-Cursor).x + 10) -y ((Get-Cursor).y)})
$TankEasy.BackColor = [System.Drawing.Color]::LightGray
$TankEasy.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($TankEasy)

$ClericEasy = New-Object System.Windows.Forms.Button
$ClericEasy.Location = New-Object System.Drawing.Point(($ButtonLength+20),(($ButtonHight*2)))
$ClericEasy.Size = New-Object System.Drawing.Size(10,10)
$ClericEasy.Add_Click({[StartActivateProgramClass]::SetForegroundWindow($Global:ClericHandle) ; set-cursor -x ((Get-Cursor).x + 10) -y ((Get-Cursor).y)})
$ClericEasy.BackColor = [System.Drawing.Color]::LightGray
$ClericEasy.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($ClericEasy)

$ChanterEasy = New-Object System.Windows.Forms.Button
$ChanterEasy.Location = New-Object System.Drawing.Point(($ButtonLength+30),(($ButtonHight*2)))
$ChanterEasy.Size = New-Object System.Drawing.Size(10,10)
$ChanterEasy.Add_Click({[StartActivateProgramClass]::SetForegroundWindow($Global:ChanterHandle) ; set-cursor -x ((Get-Cursor).x + 10) -y ((Get-Cursor).y)})
$ChanterEasy.BackColor = [System.Drawing.Color]::LightGray
$ChanterEasy.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($ChanterEasy)

$MageEasy = New-Object System.Windows.Forms.Button
$MageEasy.Location = New-Object System.Drawing.Point(($ButtonLength+40),(($ButtonHight*2)))
$MageEasy.Size = New-Object System.Drawing.Size(10,10)
$MageEasy.Add_Click({[StartActivateProgramClass]::SetForegroundWindow($Global:MageHandle) ; set-cursor -x ((Get-Cursor).x + 10) -y ((Get-Cursor).y)})
$MageEasy.BackColor = [System.Drawing.Color]::LightGray
$MageEasy.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($MageEasy)

$WizEasy = New-Object System.Windows.Forms.Button
$WizEasy.Location = New-Object System.Drawing.Point(($ButtonLength+50),(($ButtonHight*2)))
$WizEasy.Size = New-Object System.Drawing.Size(10,10)
$WizEasy.Add_Click({[StartActivateProgramClass]::SetForegroundWindow($Global:WizHandle) ; set-cursor -x ((Get-Cursor).x + 10) -y ((Get-Cursor).y)})
$WizEasy.BackColor = [System.Drawing.Color]::LightGray
$WizEasy.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($WizEasy)

$BardEasy = New-Object System.Windows.Forms.Button
$BardEasy.Location = New-Object System.Drawing.Point(($ButtonLength+60),(($ButtonHight*2)))
$BardEasy.Size = New-Object System.Drawing.Size(10,10)
$BardEasy.Add_Click({[StartActivateProgramClass]::SetForegroundWindow($Global:BardHandle) ; set-cursor -x ((Get-Cursor).x - 50) -y ((Get-Cursor).y)})
$BardEasy.BackColor = [System.Drawing.Color]::LightGray
$BardEasy.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($BardEasy)

$Mage = New-Object System.Windows.Forms.Button
$Mage.Location = New-Object System.Drawing.Point(($ButtonLength*2+11),0)
$Mage.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Mage.Text = 'Mage'
$Mage.Add_Click({[StartActivateProgramClass]::SetForegroundWindow($Global:MageHandle)})
$Mage.BackColor = [System.Drawing.Color]::LightGray
$Mage.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Mage)

$Wizard = New-Object System.Windows.Forms.Button
$Wizard.Location = New-Object System.Drawing.Point(($ButtonLength*3+11),0)
$Wizard.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Wizard.Text = 'Wizard'
$Wizard.Add_Click({[StartActivateProgramClass]::SetForegroundWindow($Global:WizHandle)})
$Wizard.BackColor = [System.Drawing.Color]::LightGray
$Wizard.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Wizard)

$Cleric = New-Object System.Windows.Forms.Button
$Cleric.Location = New-Object System.Drawing.Point(($ButtonLength+10),$ButtonHight)
$Cleric.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Cleric.Text = 'Cleric'
$Cleric.Add_Click({[StartActivateProgramClass]::SetForegroundWindow($Global:ClericHandle)})
$Cleric.BackColor = [System.Drawing.Color]::LightGray
$Cleric.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Cleric)

$Enchanter = New-Object System.Windows.Forms.Button
$Enchanter.Location = New-Object System.Drawing.Point(($ButtonLength*2+11),$ButtonHight)
$Enchanter.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Enchanter.Text = 'Ench'
$Enchanter.Add_Click({[StartActivateProgramClass]::SetForegroundWindow($Global:ChanterHandle)})
$Enchanter.BackColor = [System.Drawing.Color]::LightGray
$Enchanter.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Enchanter)

$Bard = New-Object System.Windows.Forms.Button
$Bard.Location = New-Object System.Drawing.Point(($ButtonLength*3+11),$ButtonHight)
$Bard.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Bard.Text = 'Bard'
$Bard.Add_Click({[StartActivateProgramClass]::SetForegroundWindow($Global:BardHandle)})
$Bard.BackColor = [System.Drawing.Color]::LightGray
$Bard.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Bard)

$BardS = New-Object System.Windows.Forms.Button
$BardS.Location = New-Object System.Drawing.Point(($ButtonLength*4+21),($ButtonHight/2))
$BardS.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$BardS.Text = 'BardS'
$BardS.Add_Click({[StartActivateProgramClass]::SetForegroundWindow($Global:BardHandle) ; if([System.Windows.Forms.Cursor]::Position.X -lt 1){[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(885,500)}})
$BardS.BackColor = [System.Drawing.Color]::LightGray
$BardS.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($BardS)

$LaunchForm2 = New-Object System.Windows.Forms.Button
$LaunchForm2.Location = New-Object System.Drawing.Point(($ButtonLength*5+21),($ButtonHight))
$LaunchForm2.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$LaunchForm2.Text = 'ShowF2'
$LaunchForm2.Add_Click({.'C:\Users\Paul\Desktop\Powershell Scripts\Functions\EQControls2' ; EQControls2})
$LaunchForm2.BackColor = [System.Drawing.Color]::LightGray
$LaunchForm2.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($LaunchForm2)

$SpellUI = New-Object System.Windows.Forms.Button
$SpellUI.Location = New-Object System.Drawing.Point(($ButtonLength*5+21),($ButtonHight*0))
$SpellUI.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$SpellUI.Text = 'Spells'
$SpellUI.Add_Click({.'C:\Users\Paul\Desktop\Powershell Scripts\Functions\EQSpellsUI'; EQSpellsUI})
$SpellUI.BackColor = [System.Drawing.Color]::LightGray
$SpellUI.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($SpellUI)

[System.Windows.Forms.Application]::EnableVisualStyles();
$Form.ShowDialog()
}