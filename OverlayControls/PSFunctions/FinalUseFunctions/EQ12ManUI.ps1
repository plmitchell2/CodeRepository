function EQ12ManUI
{
$ErrorActionPreference = 'Continue'
.'C:\Users\Paul\Desktop\Powershell Scripts\Functions\Hide-Powershell.ps1'
.'C:\Users\Paul\Desktop\Powershell Scripts\Functions\ActivateWindow.ps1'
.'C:\Users\Paul\Desktop\Powershell Scripts\Functions\EQControls2'
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


#[appdomain]::currentdomain.getassemblies() | sort -property fullname | format-table fullname 

$ButtonLength = 45
$ButtonHight = 17




$form = New-Object System.Windows.Forms.Form
$form.Text = 'Set Focus'
$form.Size = New-Object System.Drawing.Size(($ButtonLength*6+40),(($ButtonHight*2+5)*3.2))
$Form.maximumsize = New-Object System.Drawing.Size(($ButtonLength*6+40),(($ButtonHight*2+5)*3.2))
$form.StartPosition = '0'
$form.location = New-Object System.Drawing.Point(732,421)
$Form.backcolor = [System.Drawing.Color]::MidnightBlue
$form.TopMost = $true
$form.FormBorderStyle = 'FixedDialog'


$TankS = New-Object System.Windows.Forms.Button
$TankS.Location = New-Object System.Drawing.Point(($ButtonHight*0),($ButtonHight/2))
$TankS.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$TankS.Text = 'TankS'
$TankS.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText plmitchell -WaitTime 0 ; [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(800,400)})
$TankS.BackColor = [System.Drawing.Color]::LightGray
$TankS.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($TankS)

$Tank = New-Object System.Windows.Forms.Button
$Tank.Location = New-Object System.Drawing.Point(($ButtonLength+10),0)
$Tank.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Tank.Text = 'Tank'
$Tank.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText plmitchell -WaitTime 0})
$Tank.BackColor = [System.Drawing.Color]::LightGray
$Tank.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Tank)

$Mage = New-Object System.Windows.Forms.Button
$Mage.Location = New-Object System.Drawing.Point(($ButtonLength*2+11),0)
$Mage.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Mage.Text = 'Mage'
$Mage.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText emmitchell -WaitTime 0})
$Mage.BackColor = [System.Drawing.Color]::LightGray
$Mage.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Mage)


$Wizard = New-Object System.Windows.Forms.Button
$Wizard.Location = New-Object System.Drawing.Point(($ButtonLength*3+11),0)
$Wizard.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Wizard.Text = 'Wizard'
$Wizard.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText boramur3 -WaitTime 0})
$Wizard.BackColor = [System.Drawing.Color]::LightGray
$Wizard.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Wizard)


$Cleric = New-Object System.Windows.Forms.Button
$Cleric.Location = New-Object System.Drawing.Point(($ButtonLength+10),$ButtonHight)
$Cleric.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Cleric.Text = 'Cleric'
$Cleric.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText emmitchell2 -WaitTime 0})
$Cleric.BackColor = [System.Drawing.Color]::LightGray
$Cleric.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Cleric)


$Enchanter = New-Object System.Windows.Forms.Button
$Enchanter.Location = New-Object System.Drawing.Point(($ButtonLength*2+11),$ButtonHight)
$Enchanter.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Enchanter.Text = 'Ench'
$Enchanter.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText plmitchell2 -WaitTime 0})
$Enchanter.BackColor = [System.Drawing.Color]::LightGray
$Enchanter.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Enchanter)


$Bard = New-Object System.Windows.Forms.Button
$Bard.Location = New-Object System.Drawing.Point(($ButtonLength*3+11),$ButtonHight)
$Bard.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Bard.Text = 'Bard'
$Bard.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText boramur -WaitTime 0})
$Bard.BackColor = [System.Drawing.Color]::LightGray
$Bard.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Bard)

$BardS = New-Object System.Windows.Forms.Button
$BardS.Location = New-Object System.Drawing.Point(($ButtonLength*4+21),($ButtonHight/2))
$BardS.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$BardS.Text = 'BardS'
$BardS.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText boramur -WaitTime 0 ; [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(1075,740)})
$BardS.BackColor = [System.Drawing.Color]::LightGray
$BardS.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($BardS)


<#---------------#>

$Tank2S = New-Object System.Windows.Forms.Button
$Tank2S.Location = New-Object System.Drawing.Point(($ButtonHight*0),(($ButtonHight*4) -($ButtonHight/2)))
$Tank2S.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Tank2S.Text = 'Tank2S'
$Tank2S.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText excruciator1 -WaitTime 0 ; [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(-1125,400)})
$Tank2S.BackColor = [System.Drawing.Color]::LightGray
$Tank2S.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Tank2S)

$Tank2 = New-Object System.Windows.Forms.Button
$Tank2.Location = New-Object System.Drawing.Point(($ButtonLength+10),($ButtonHight*3))
$Tank2.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Tank2.Text = 'Tank2'
$Tank2.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText excruciator1 -WaitTime 0})
$Tank2.BackColor = [System.Drawing.Color]::LightGray
$Tank2.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Tank2)

$Mage2 = New-Object System.Windows.Forms.Button
$Mage2.Location = New-Object System.Drawing.Point(($ButtonLength*2+11),($ButtonHight*3))
$Mage2.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Mage2.Text = 'Mage2'
$Mage2.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText excruciator6 -WaitTime 0})
$Mage2.BackColor = [System.Drawing.Color]::LightGray
$Mage2.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Mage2)


$Mage3 = New-Object System.Windows.Forms.Button
$Mage3.Location = New-Object System.Drawing.Point(($ButtonLength*3+11),($ButtonHight*3))
$Mage3.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Mage3.Text = 'Mage3'
$Mage3.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText excruciator5 -WaitTime 0})
$Mage3.BackColor = [System.Drawing.Color]::LightGray
$Mage3.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Mage3)


$Cleric2 = New-Object System.Windows.Forms.Button
$Cleric2.Location = New-Object System.Drawing.Point(($ButtonLength+10),($ButtonHight*4))
$Cleric2.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Cleric2.Text = 'Cleric2'
$Cleric2.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText excruciator2 -WaitTime 0})
$Cleric2.BackColor = [System.Drawing.Color]::LightGray
$Cleric2.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Cleric2)


$Shaman = New-Object System.Windows.Forms.Button
$Shaman.Location = New-Object System.Drawing.Point(($ButtonLength*2+11),($ButtonHight*4))
$Shaman.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Shaman.Text = 'Shaman'
$Shaman.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText excruciator3 -WaitTime 0})
$Shaman.BackColor = [System.Drawing.Color]::LightGray
$Shaman.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Shaman)


$Bard2 = New-Object System.Windows.Forms.Button
$Bard2.Location = New-Object System.Drawing.Point(($ButtonLength*3+11),($ButtonHight*4))
$Bard2.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Bard2.Text = 'Bard2'
$Bard2.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText excruciator4 -WaitTime 0})
$Bard2.BackColor = [System.Drawing.Color]::LightGray
$Bard2.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Bard2)

$Bard2S = New-Object System.Windows.Forms.Button
$Bard2S.Location = New-Object System.Drawing.Point(($ButtonLength*4+21),(($ButtonHight*4) -($ButtonHight/2)))
$Bard2S.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Bard2S.Text = 'Bard2S'
$Bard2S.Add_Click({ActivateWindow -ProcessName eqgame -CommandLineText excruciator4 -WaitTime 0 ; [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(-850,725)})
$Bard2S.BackColor = [System.Drawing.Color]::LightGray
$Bard2S.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Bard2S)




$LaunchForm2 = New-Object System.Windows.Forms.Button
$LaunchForm2.Location = New-Object System.Drawing.Point(($ButtonLength*5+21),($ButtonHight*1.5))
$LaunchForm2.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$LaunchForm2.Text = 'ShowF2'
$LaunchForm2.Add_Click({EQControls2})
$LaunchForm2.BackColor = [System.Drawing.Color]::LightGray
$LaunchForm2.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($LaunchForm2)

$LaunchForm2 = New-Object System.Windows.Forms.Button
$LaunchForm2.Location = New-Object System.Drawing.Point(($ButtonLength*5+21),($ButtonHight*2.5))
$LaunchForm2.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$LaunchForm2.Text = '6ManUI'
$LaunchForm2.Add_Click({Start-Job -ScriptBlock {C:\Users\Paul\Desktop\Powershell Scripts\Functions\EQMainUI.ps1} -ArgumentList 'no', 'test'})
$LaunchForm2.BackColor = [System.Drawing.Color]::LightGray
$LaunchForm2.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($LaunchForm2)

$SpellUI = New-Object System.Windows.Forms.Button
$SpellUI.Location = New-Object System.Drawing.Point(($ButtonLength*5+21),($ButtonHight*.5))
$SpellUI.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$SpellUI.Text = 'Spells'
$SpellUI.Add_Click({EQSpellsUI})
$SpellUI.BackColor = [System.Drawing.Color]::LightGray
$SpellUI.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($SpellUI)


[System.Windows.Forms.Application]::EnableVisualStyles();
$Form.ShowDialog()
}