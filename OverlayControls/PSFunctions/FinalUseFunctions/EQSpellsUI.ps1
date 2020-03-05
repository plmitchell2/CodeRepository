function EQSpellsUI
{
.'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CreateSpellHotkeys.ps1'
$ButtonLength = 48
$ButtonHight = 20
<#
Add-Type -AssemblyName presentationCore
$mediaPlayer = New-Object system.windows.media.mediaplayer
$mediaPlayer.open('C:\Users\Paul\Downloads\Everquest Intro.mp3')
$mediaPlayer.Play()
#>

$Image = [system.drawing.image]::FromFile("C:\Users\Paul\Desktop\Powershell Scripts\Everquest.jpg")
$form = New-Object System.Windows.Forms.Form
$form.Text = 'Open Spell Creation Files'
$form.Size = New-Object System.Drawing.Size($Image.Width,$Image.Height)
$Form.maximumsize = New-Object System.Drawing.Size($Image.Width,$Image.Height)
$form.StartPosition = '0'
$form.location = New-Object System.Drawing.Point(732,421)
$Form.BackgroundImage = $Image
$form.TopMost = $true
$form.FormBorderStyle = 'FixedDialog'

$Tank = New-Object System.Windows.Forms.Button
$Tank.Location = New-Object System.Drawing.Point(($ButtonLength*0),0)
$Tank.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Tank.Text = 'Paladin'
$Tank.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\Sanctificus.ps1'})
$Tank.BackColor = [System.Drawing.Color]::LightGray
$Tank.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Tank)

$Mage = New-Object System.Windows.Forms.Button
$Mage.Location = New-Object System.Drawing.Point(($ButtonLength*1),0)
$Mage.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Mage.Text = 'Mage4'
$Mage.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\criticamassua.ps1'})
$Mage.BackColor = [System.Drawing.Color]::LightGray
$Mage.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Mage)


$Wizard = New-Object System.Windows.Forms.Button
$Wizard.Location = New-Object System.Drawing.Point(($ButtonLength*2),0)
$Wizard.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Wizard.Text = 'Wizard'
$Wizard.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\nuclearcrepitus.ps1'})
$Wizard.BackColor = [System.Drawing.Color]::LightGray
$Wizard.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Wizard)


$Cleric = New-Object System.Windows.Forms.Button
$Cleric.Location = New-Object System.Drawing.Point(($ButtonLength*0),$ButtonHight)
$Cleric.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Cleric.Text = 'Cleric'
$Cleric.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\Divinater.ps1'})
$Cleric.BackColor = [System.Drawing.Color]::LightGray
$Cleric.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Cleric)


$Enchanter = New-Object System.Windows.Forms.Button
$Enchanter.Location = New-Object System.Drawing.Point(($ButtonLength*1),$ButtonHight)
$Enchanter.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Enchanter.Text = 'Ench'
$Enchanter.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\Mentalinteritus.ps1'})
$Enchanter.BackColor = [System.Drawing.Color]::LightGray
$Enchanter.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Enchanter)


$Bard = New-Object System.Windows.Forms.Button
$Bard.Location = New-Object System.Drawing.Point(($ButtonLength*2),$ButtonHight)
$Bard.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Bard.Text = 'Bard'
$Bard.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\Sanavatis.ps1'})
$Bard.BackColor = [System.Drawing.Color]::LightGray
$Bard.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Bard)

<#---------------#>

$Tank2 = New-Object System.Windows.Forms.Button
$Tank2.Location = New-Object System.Drawing.Point(($ButtonLength*0),($ButtonHight*3))
$Tank2.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Tank2.Text = 'Tank2'
$Tank2.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\Tankr.ps1'})
$Tank2.BackColor = [System.Drawing.Color]::LightGray
$Tank2.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Tank2)

$Mage2 = New-Object System.Windows.Forms.Button
$Mage2.Location = New-Object System.Drawing.Point(($ButtonLength*1),($ButtonHight*3))
$Mage2.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Mage2.Text = 'Mage2'
$Mage2.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\Magicianr.ps1'})
$Mage2.BackColor = [System.Drawing.Color]::LightGray
$Mage2.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Mage2)


$Mage3 = New-Object System.Windows.Forms.Button
$Mage3.Location = New-Object System.Drawing.Point(($ButtonLength*2),($ButtonHight*3))
$Mage3.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Mage3.Text = 'Mage3'
$Mage3.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\Magicianar.ps1'})
$Mage3.BackColor = [System.Drawing.Color]::LightGray
$Mage3.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Mage3)


$Cleric2 = New-Object System.Windows.Forms.Button
$Cleric2.Location = New-Object System.Drawing.Point(($ButtonLength*0),($ButtonHight*4))
$Cleric2.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Cleric2.Text = 'Cleric2'
$Cleric2.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\Clericr.ps1'})
$Cleric2.BackColor = [System.Drawing.Color]::LightGray
$Cleric2.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Cleric2)


$Shaman = New-Object System.Windows.Forms.Button
$Shaman.Location = New-Object System.Drawing.Point(($ButtonLength*1),($ButtonHight*4))
$Shaman.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Shaman.Text = 'Shaman'
$Shaman.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\Shamanr.ps1'})
$Shaman.BackColor = [System.Drawing.Color]::LightGray
$Shaman.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Shaman)

$Bard2 = New-Object System.Windows.Forms.Button
$Bard2.Location = New-Object System.Drawing.Point(($ButtonLength*2),($ButtonHight*4))
$Bard2.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Bard2.Text = 'Bard2'
$Bard2.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\Bardr.ps1'})
$Bard2.BackColor = [System.Drawing.Color]::LightGray
$Bard2.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Bard2)

<#---------------#>

$Tank3 = New-Object System.Windows.Forms.Button
$Tank3.Location = New-Object System.Drawing.Point(($ButtonLength*0),($ButtonHight*6))
$Tank3.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Tank3.Text = 'Tank'
$Tank3.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\Excruciator.ps1'})
$Tank3.BackColor = [System.Drawing.Color]::LightGray
$Tank3.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Tank3)

$Mage4 = New-Object System.Windows.Forms.Button
$Mage4.Location = New-Object System.Drawing.Point(($ButtonLength*1),($ButtonHight*6))
$Mage4.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Mage4.Text = 'Mage'
$Mage4.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\CriticallMass.ps1'})
$Mage4.BackColor = [System.Drawing.Color]::LightGray
$Mage4.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Mage4)


$Wizard1 = New-Object System.Windows.Forms.Button
$Wizard1.Location = New-Object System.Drawing.Point(($ButtonLength*2),($ButtonHight*6))
$Wizard1.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Wizard1.Text = 'Mage'
$Wizard1.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\Nuclearmeltdown.ps1'})
$Wizard1.BackColor = [System.Drawing.Color]::LightGray
$Wizard1.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Wizard1)


$Cleric3 = New-Object System.Windows.Forms.Button
$Cleric3.Location = New-Object System.Drawing.Point(($ButtonLength*0),($ButtonHight*7))
$Cleric3.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Cleric3.Text = 'Cleric'
$Cleric3.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\Divinatus.ps1'})
$Cleric3.BackColor = [System.Drawing.Color]::LightGray
$Cleric3.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Cleric3)


$Enchanter2 = New-Object System.Windows.Forms.Button
$Enchanter2.Location = New-Object System.Drawing.Point(($ButtonLength*1),($ButtonHight*7))
$Enchanter2.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Enchanter2.Text = 'Enchanter'
$Enchanter2.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\Mentalblur.ps1'})
$Enchanter2.BackColor = [System.Drawing.Color]::LightGray
$Enchanter2.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Enchanter2)

$Bard3 = New-Object System.Windows.Forms.Button
$Bard3.Location = New-Object System.Drawing.Point(($ButtonLength*2),($ButtonHight*7))
$Bard3.Size = New-Object System.Drawing.Size($ButtonLength,$ButtonHight)
$Bard3.Text = 'Bard'
$Bard3.Add_Click({Start-Process powershell_ise.exe -file 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\Reverbinator.ps1'})
$Bard3.BackColor = [System.Drawing.Color]::LightGray
$Bard3.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($Bard3)

<#---------------------#>

$ButtonNameLabel = New-Object System.Windows.Forms.Label
$ButtonNameLabel.Location = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*0))
$ButtonNameLabel.Size = New-Object System.Drawing.Size(($ButtonLength*1),($ButtonHight*1))
$ButtonNameLabel.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$ButtonNameLabel.TextAlign = 'MiddleCenter'
$ButtonNameLabel.Text = "Name:"
$form.Controls.Add($ButtonNameLabel)

<#Make another button by this that loads a hotbutton. but not from page 1 button 1 style but from the actual hotbar. It would have to look at 2 files I beleive. One to find the hotbar button assignments, then look that up in the other file and load the details into the boxes.#>
$ButtonName = New-Object System.Windows.Forms.TextBox 
$ButtonName.Location = New-Object System.Drawing.Size(($ButtonLength*4),($ButtonHight*0))
$ButtonName.Size = New-Object System.Drawing.Size(($ButtonLength*2),($ButtonHight*1))
$ButtonName.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($ButtonName)

<#Think about if you want to put casting order in the lines rather than have it implied that blank lines and casting order will fit together. to do this, add an if statment like if line -eq 'regexfordigit and only digits up to the end of the line' then assign that to the casting order for the if statment in CreateSpellHotkeys.ps1#>
$FirstRowTextLabel = New-Object System.Windows.Forms.Label
$FirstRowTextLabel.Location = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*1))
$FirstRowTextLabel.Size = New-Object System.Drawing.Size(($ButtonLength*1),($ButtonHight*1))
$FirstRowTextLabel.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$FirstRowTextLabel.TextAlign = 'MiddleCenter'
$FirstRowTextLabel.Text = "Line1:"
$form.Controls.Add($FirstRowTextLabel)

<#swap the lines for the hotkey to the bottom row to avoid as much confusion#>
$FirstRowText = New-Object System.Windows.Forms.TextBox 
$FirstRowText.Location = New-Object System.Drawing.Size(($ButtonLength*4),($ButtonHight*1))
$FirstRowText.Size = New-Object System.Drawing.Size(($ButtonLength*6),($ButtonHight*1))
$FirstRowText.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($FirstRowText)

$SecondRowTextLabel = New-Object System.Windows.Forms.Label
$SecondRowTextLabel.Location = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*2))
$SecondRowTextLabel.Size = New-Object System.Drawing.Size(($ButtonLength*1),($ButtonHight*1))
$SecondRowTextLabel.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$SecondRowTextLabel.TextAlign = 'MiddleCenter'
$SecondRowTextLabel.Text = "Line2:"
$form.Controls.Add($SecondRowTextLabel)

$SecondRowText = New-Object System.Windows.Forms.TextBox 
$SecondRowText.Location = New-Object System.Drawing.Size(($ButtonLength*4),($ButtonHight*2))
$SecondRowText.Size = New-Object System.Drawing.Size(($ButtonLength*6),($ButtonHight*1))
$SecondRowText.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($SecondRowText)

$ThirdRowTextLabel = New-Object System.Windows.Forms.Label
$ThirdRowTextLabel.Location = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*3))
$ThirdRowTextLabel.Size = New-Object System.Drawing.Size(($ButtonLength*1),($ButtonHight*1))
$ThirdRowTextLabel.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$ThirdRowTextLabel.TextAlign = 'MiddleCenter'
$ThirdRowTextLabel.Text = "Line3:"
$form.Controls.Add($ThirdRowTextLabel)

$ThirdRowText = New-Object System.Windows.Forms.TextBox 
$ThirdRowText.Location = New-Object System.Drawing.Size(($ButtonLength*4),($ButtonHight*3))
$ThirdRowText.Size = New-Object System.Drawing.Size(($ButtonLength*6),($ButtonHight*1))
$ThirdRowText.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($ThirdRowText)

$FourthRowTextLabel = New-Object System.Windows.Forms.Label
$FourthRowTextLabel.Location = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*4))
$FourthRowTextLabel.Size = New-Object System.Drawing.Size(($ButtonLength*1),($ButtonHight*1))
$FourthRowTextLabel.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$FourthRowTextLabel.TextAlign = 'MiddleCenter'
$FourthRowTextLabel.Text = "Line4:"
$form.Controls.Add($FourthRowTextLabel)

$FourthRowText = New-Object System.Windows.Forms.TextBox 
$FourthRowText.Location = New-Object System.Drawing.Size(($ButtonLength*4),($ButtonHight*4))
$FourthRowText.Size = New-Object System.Drawing.Size(($ButtonLength*6),($ButtonHight*1))
$FourthRowText.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($FourthRowText)

$LastRowTextLabel = New-Object System.Windows.Forms.Label
$LastRowTextLabel.Location = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*5))
$LastRowTextLabel.Size = New-Object System.Drawing.Size(($ButtonLength*1),($ButtonHight*1))
$LastRowTextLabel.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$LastRowTextLabel.TextAlign = 'MiddleCenter'
$LastRowTextLabel.Text = "Line5:"
$form.Controls.Add($LastRowTextLabel)

$LastRowText = New-Object System.Windows.Forms.TextBox 
$LastRowText.Location = New-Object System.Drawing.Size(($ButtonLength*4),($ButtonHight*5))
$LastRowText.Size = New-Object System.Drawing.Size(($ButtonLength*6),($ButtonHight*1))
$LastRowText.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($LastRowText)

$EQDirectoryLabel  = New-Object System.Windows.Forms.Label
$EQDirectoryLabel.Location = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*7))
$EQDirectoryLabel.Size = New-Object System.Drawing.Size(($ButtonLength*1),($ButtonHight*1))
$EQDirectoryLabel.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$EQDirectoryLabel.TextAlign = 'MiddleCenter'
$EQDirectoryLabel.Text = "EQpath:"
$form.Controls.Add($EQDirectoryLabel)

$EQDirectory  = New-Object System.Windows.Forms.TextBox
$EQDirectory.Location = New-Object System.Drawing.Size(($ButtonLength*4),($ButtonHight*7))
$EQDirectory.Size = New-Object System.Drawing.Size(($ButtonLength*6),($ButtonHight*1))
$EQDirectory.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$EQDirectory.text = 'C:\Users\Public\Daybreak Game Company\Installed Games\EverQuest\'
$form.Controls.Add($EQDirectory)

$ServerNameLabel  = New-Object System.Windows.Forms.Label
$ServerNameLabel.Location = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*8))
$ServerNameLabel.Size = New-Object System.Drawing.Size(($ButtonLength*1),($ButtonHight*1))
$ServerNameLabel.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$ServerNameLabel.TextAlign = 'MiddleCenter'
$ServerNameLabel.Text = "Server:"
$form.Controls.Add($ServerNameLabel)

$ServerName  = New-Object System.Windows.Forms.TextBox
$ServerName.Location = New-Object System.Drawing.Size(($ButtonLength*4),($ButtonHight*8))
$ServerName.Size = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*1))
$ServerName.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$ServerName.text = 'test'
$form.Controls.Add($ServerName)

$SpellLoadoutNameLabel  = New-Object System.Windows.Forms.Label
$SpellLoadoutNameLabel.Location = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*9))
$SpellLoadoutNameLabel.Size = New-Object System.Drawing.Size(($ButtonLength*1),($ButtonHight*1))
$SpellLoadoutNameLabel.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$SpellLoadoutNameLabel.TextAlign = 'MiddleCenter'
$SpellLoadoutNameLabel.Text = "SetName:"
$form.Controls.Add($SpellLoadoutNameLabel)

<#arrange this below character name. have it pull in the spell loadout names from the ini file and make it a drop down. Probably will require a seperate function to make this script readable.#>
$SpellLoadoutName  = New-Object System.Windows.Forms.TextBox
$SpellLoadoutName.Location = New-Object System.Drawing.Size(($ButtonLength*4),($ButtonHight*9))
$SpellLoadoutName.Size = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*1))
$SpellLoadoutName.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$SpellLoadoutName.text = 'default'
$form.Controls.Add($SpellLoadoutName)


$CastTimeFocusLabel  = New-Object System.Windows.Forms.Label
$CastTimeFocusLabel.Location = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*10))
$CastTimeFocusLabel.Size = New-Object System.Drawing.Size(($ButtonLength*1),($ButtonHight*1))
$CastTimeFocusLabel.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$CastTimeFocusLabel.TextAlign = 'MiddleCenter'
$CastTimeFocusLabel.Text = "SpellHaste"
$form.Controls.Add($CastTimeFocusLabel)

$CastTimeFocus  = New-Object System.Windows.Forms.TextBox
$CastTimeFocus.Location = New-Object System.Drawing.Size(($ButtonLength*4),($ButtonHight*10))
$CastTimeFocus.Size = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*1))
$CastTimeFocus.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$CastTimeFocus.Text = '.1'
$form.Controls.Add($CastTimeFocus)

<#Make this a button that pulls up all the character names (make it definable in another place) and enters it for you into the text box#>
$CharacterNameLabel  = New-Object System.Windows.Forms.Label
$CharacterNameLabel.Location = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*11))
$CharacterNameLabel.Size = New-Object System.Drawing.Size(($ButtonLength*1),($ButtonHight*1))
$CharacterNameLabel.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$CharacterNameLabel.TextAlign = 'MiddleCenter'
$CharacterNameLabel.Text = "Character:"
$form.Controls.Add($CharacterNameLabel)

$CharacterName  = New-Object System.Windows.Forms.TextBox
$CharacterName.Location = New-Object System.Drawing.Size(($ButtonLength*4),($ButtonHight*11))
$CharacterName.Size = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*1))
$CharacterName.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($CharacterName)

$SpellSlotCastingOrderLabel  = New-Object System.Windows.Forms.Label
$SpellSlotCastingOrderLabel.Location = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*12))
$SpellSlotCastingOrderLabel.Size = New-Object System.Drawing.Size(($ButtonLength*1),($ButtonHight*1))
$SpellSlotCastingOrderLabel.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$SpellSlotCastingOrderLabel.TextAlign = 'MiddleCenter'
$SpellSlotCastingOrderLabel.Text = "CastOrder:"
$form.Controls.Add($SpellSlotCastingOrderLabel)

$SpellSlotCastingOrder  = New-Object System.Windows.Forms.TextBox
$SpellSlotCastingOrder.Location = New-Object System.Drawing.Size(($ButtonLength*4),($ButtonHight*12))
$SpellSlotCastingOrder.Size = New-Object System.Drawing.Size(($ButtonLength*3),($ButtonHight*1))
$SpellSlotCastingOrder.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($SpellSlotCastingOrder) <#Segment these out into 1 box each and concat them later into an array when you pass them to the other variables.#>

$Pages = @{ '' = 0; page1 = 1; page2 = 2; page3 = 3; page4 = 4;page5 = 5; page6 = 6; page7 = 7; page8 = 8; page9 = 9; page10 = 10}
$Buttons = @{ '' = 0; button1 = 1; button2 = 2; button3 = 3; button4 = 4;button5 = 5; button6 = 6; button7 = 7; button8 = 8; button9 = 9; button10 = 10; button11 = 11; button12 = 12}
$Lines = @{ '' = 0; Line1 = 1; Line2 = 2; Line3 = 3; Line4 = 4; Line5 = 5}

$PagesList = New-Object System.Windows.Forms.ComboBox
$PagesList.Location = New-Object System.Drawing.Size(($ButtonLength*4),($ButtonHight*13))
$PagesList.Size = New-Object System.Drawing.Size(($ButtonLength*1.5),($ButtonHight*1))
$PagesList.DisplayMember = 'Items'
$Pages.GetEnumerator() | sort -Property value | select -ExpandProperty name  | Foreach {$PagesList.Items.Add($_)} > $null
#$PagesList.Items.AddRange(('test', $textBox2.Text));
$PagesList.SelectedIndex = 0
$PagesList.add_SelectedIndexChanged({$TargetHotkeyPage = $PagesList.Text})
$Form.Controls.Add($PagesList)

$ButtonsList = New-Object System.Windows.Forms.ComboBox
$ButtonsList.Location = New-Object System.Drawing.Size(($ButtonLength*5.5),($ButtonHight*13))
$ButtonsList.Size = New-Object System.Drawing.Size(($ButtonLength*1.5),($ButtonHight*1))
$ButtonsList.DisplayMember = 'Items'
$Buttons.GetEnumerator() | sort -Property value | select -ExpandProperty name | Foreach {$ButtonsList.Items.Add($_)} > $null
$ButtonsList.SelectedIndex = 0
$ButtonsList.add_SelectedIndexChanged({$TargetHotkeyButton = $ButtonsList.Text})
$Form.Controls.Add($ButtonsList)


$ValuesToFile = New-Object System.Windows.Forms.Button
$ValuesToFile.Location = New-Object System.Drawing.Size(($ButtonLength*7),($ButtonHight*13))
$ValuesToFile.Size = New-Object System.Drawing.Size(($ButtonLength*1.5),($ButtonHight*1))
$ValuesToFile.Text = 'ExportData'
$ValuesToFile.Add_Click({
  $EQDirectory = if($EQDirectory.Text -eq $Null){'$Null'} else {$EQDirectory.Text}
  $CharacterName = if($CharacterName.Text -eq $Null){'$Null'} else {$CharacterName.Text}
  $ServerName = if($ServerName.Text -eq $Null){'$Null'} else {$ServerName.Text}
  $SpellLoadoutName = if($SpellLoadoutName.Text -eq $Null){'$Null'} else {$SpellLoadoutName.Text}
  $ButtonName = if($ButtonName.Text -eq $Null){'$Null'} else {$ButtonName.Text}

  $FirstRowText = if($FirstRowText.Text -eq $Null){'$Null'} else {$FirstRowText.Text}
  $SecondRowText = if($SecondRowText.Text -eq $Null){'$Null'} else {$SecondRowText.Text}
  $ThirdRowText = if($ThirdRowText.Text -eq $Null){'$Null'} else {$ThirdRowText.Text}
  $FourthRowText = if($FourthRowText.Text -eq $Null){'$Null'} else {$FourthRowText.Text}
  $LastRowText = if($LastRowText.Text -eq $Null){'$Null'} else {$LastRowText.Text}

  $SpellSlotCastingOrder = if($SpellSlotCastingOrder.Text -eq $Null){'$Null'} else {$SpellSlotCastingOrder.Text}
  $TargetHotkeyPage = if($PagesList.Text -eq $Null){'$Null'} else {$PagesList.Text }
  $TargetHotkeyButton = if($ButtonsList.Text -eq $Null){'$Null'} else {$ButtonsList.Text}
  $CastTimeFocus = if($CastTimeFocus.Text -eq $Null){'$Null'} else {$CastTimeFocus.Text}
  add-content -Path "C:\Users\Paul\Desktop\Powershell Scripts\Functions\CharacterHotkeyFunctionSets\$CharacterName.ps1" -Value "CreateSpellHotkeys -SpellSlotCastingOrder '$SpellSlotCastingOrder' -SpellLoadoutName '$SpellLoadoutName' -TargetHotkeyPage '$TargetHotkeyPage' -TargetHotkeyButton '$TargetHotkeyButton' -ButtonName '$ButtonName' -FirstRowText '$FirstRowText' -SecondRowText '$SecondRowText' -ThirdRowText '$ThirdRowText' -FourthRowText '$FourthRowText' -LastRowText '$LastRowText' -CastTimeFocus '$CastTimeFocus'  -EQDirectory '$EQDirectory' -ServerName '$ServerName' -CharacterName '$CharacterName' `r`n"
})
$ValuesToFile.BackColor = [System.Drawing.Color]::LightGray
$ValuesToFile.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($ValuesToFile)


$CommitToEQ = New-Object System.Windows.Forms.Button
$CommitToEQ.Location = New-Object System.Drawing.Size(($ButtonLength*8.5),($ButtonHight*13))
$CommitToEQ.Size = New-Object System.Drawing.Size(($ButtonLength*1.5),($ButtonHight*1))
$CommitToEQ.Text = 'CommitToEQ'
$CommitToEQ.Add_Click({
  $EQDirectory = if($EQDirectory.Text -eq $Null){'$Null'} else {$EQDirectory.Text}
  $CharacterName = if($CharacterName.Text -eq $Null){'$Null'} else {$CharacterName.Text}
  $ServerName = if($ServerName.Text -eq $Null){'$Null'} else {$ServerName.Text}
  $SpellLoadoutName = if($SpellLoadoutName.Text -eq $Null){'$Null'} else {$SpellLoadoutName.Text}
  $ButtonName = if($ButtonName.Text -eq $Null){'$Null'} else {$ButtonName.Text}

  $FirstRowText = if($FirstRowText.Text -eq $Null){'$Null'} else {$FirstRowText.Text}
  $SecondRowText = if($SecondRowText.Text -eq $Null){'$Null'} else {$SecondRowText.Text}
  $ThirdRowText = if($ThirdRowText.Text -eq $Null){'$Null'} else {$ThirdRowText.Text}
  $FourthRowText = if($FourthRowText.Text -eq $Null){'$Null'} else {$FourthRowText.Text}
  $LastRowText = if($LastRowText.Text -eq $Null){'$Null'} else {$LastRowText.Text}

  $SpellSlotCastingOrder = if($SpellSlotCastingOrder.Text -eq $Null){'$Null'} else {$SpellSlotCastingOrder.Text}
  $TargetHotkeyPage = if($PagesList.Text -eq $Null){'$Null'} else {$PagesList.Text }
  $TargetHotkeyButton = if($ButtonsList.Text -eq $Null){'$Null'} else {$ButtonsList.Text}
  $CastTimeFocus = if($CastTimeFocus.Text -eq $Null){'$Null'} else {$CastTimeFocus.Text}

  CreateSpellHotkeys -SpellSlotCastingOrder $SpellSlotCastingOrder -SpellLoadoutName $SpellLoadoutName -TargetHotkeyPage $TargetHotkeyPage -TargetHotkeyButton $TargetHotkeyButton -ButtonName $ButtonName -FirstRowText $FirstRowText -SecondRowText $SecondRowText -ThirdRowText $ThirdRowText -FourthRowText $FourthRowText -LastRowText $LastRowText -CastTimeFocus $CastTimeFocus  -EQDirectory $EQDirectory -ServerName $ServerName -CharacterName $CharacterName})
$CommitToEQ.BackColor = [System.Drawing.Color]::LightGray
$CommitToEQ.font = New-Object System.Drawing.Font("Microsoft Sans Serif", 6.5)
$form.Controls.Add($CommitToEQ)



[System.Windows.Forms.Application]::EnableVisualStyles();
$Form.ShowDialog()



<#
Features to add:
    1. link to zone viewer.
    2. randomize the music.
    3. play more music until closed.
    4. randomize the background picture.
    4. link to lore info.
    5. Have it edit buttons as well as create them.
    6. have it copy full buttons and socials 
    7. have it pull spell set names and put it in a dropdown
    8. have it pull server names and put them in a dropdown
    9.
    test 1
    /say this a test
    /say please stand by

    C:\Users\Public\Daybreak Game Company\Installed Games\EverQuest\
    test
    default
    .1
    Sanctificus
    1,2,3
#>
<#
$EQDirectory
$CharacterName
$ServerName
$SpellLoadoutName
$ButtonName

$FirstRowText
$SecondRowText
$ThirdRowText
$FourthRowText
$LastRowText

$SpellSlotCastingOrder
$TargetHotkeyPage
$TargetHotkeyButton
$CastTimeFocus
$ShowFinalHotkeyCreations
$ShowModifiedFile
#>




}