Function OpenEQ 
{ Param( [ValidateSet('12Man','6ManAlpha','6ManBeta')] [parameter(Mandatory=$False)]$SetupType
  ,[ValidateSet('Live','Test')][parameter(Mandatory=$True)]$ServerType
  ,[parameter(Mandatory=$False)]$SpecificClient
  )

if(($SetupType -eq '12Man') -and ($ServerType -eq 'Test'))
{
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest1 - plmitchell - Tank.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest2 - emmitchell2 - Cleric.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest3 - plmitchell2 - Enchanter.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest4 - Boramur - Bard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest5 - boramur3 - Wizard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest6 - emmitchell - Mage.lnk'

invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest7 - excruciator1 - Tank.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest8 - excruciator2 - Cleric.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest9 - excruciator3 - Shaman.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest10 - excruciator4 - Bard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest11 - excruciator5 - Wizard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest12 - excruciator6 - Mage.lnk'
}

if(($SetupType -eq '6ManAlpha') -and ($ServerType -eq 'Test'))
{
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest1 - plmitchell - Tank.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest2 - emmitchell2 - Cleric.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest3 - plmitchell2 - Enchanter.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest4 - Boramur - Bard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest5 - boramur3 - Wizard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest6 - emmitchell - Mage.lnk'
}

if(($SetupType -eq '6ManBeta') -and ($ServerType -eq 'Test'))
{
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest7 - excruciator1 - Tank.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest8 - excruciator2 - Cleric.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest9 - excruciator3 - Shaman.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest10 - excruciator4 - Bard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest11 - excruciator5 - Wizard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest12 - excruciator6 - Mage.lnk'
}

<#Live#>

if(($SetupType -eq '12Man') -and ($ServerType -eq 'Live'))
{
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest1 #2 - plmitchell - Tank.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest2 #2 - emmitchell2 - Cleric.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest3 #2 - plmitchell2 - Enchanter.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest4 #2 - Boramur - Bard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest5 #2 - boramur3 - Wizard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest6 #2 - emmitchell - Mage.lnk'

invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest7 #2 - excruciator1 - Tank.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest8 #2 - excruciator2 - Cleric.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest9 #2 - excruciator3 - Shaman.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest10 #2 - excruciator4 - Bard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest11 #2 - excruciator5 - Wizard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest12 #2 - excruciator6 - Mage.lnk'
}

if(($SetupType -eq '6ManAlpha') -and ($ServerType -eq 'Live'))
{
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest1 #2 - plmitchell - Tank.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest2 #2 - emmitchell2 - Cleric.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest3 #2 - plmitchell2 - Enchanter.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest4 #2 - Boramur - Bard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest5 #2 - boramur3 - Wizard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest6 #2 - emmitchell - Mage.lnk'
}

if(($SetupType -eq '6ManBeta') -and ($ServerType -eq 'Live'))
{
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest7 #2 - excruciator1 - Tank.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest8 #2 - excruciator2 - Cleric.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest9 #2 - excruciator3 - Shaman.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest10 #2 - excruciator4 - Bard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest11 #2 - excruciator5 - Wizard.lnk'
invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest12 #2 - excruciator6 - Mage.lnk'
}

if(($SpecificClient -eq 'plmitchell') -and ($ServerType -eq 'Live')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest1 #2 - plmitchell - Tank.lnk'}
if(($SpecificClient -eq 'emmitchell2') -and ($ServerType -eq 'Live')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest2 #2 - emmitchell2 - Cleric.lnk'}
if(($SpecificClient -eq 'plmitchell2') -and ($ServerType -eq 'Live')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest3 #2 - plmitchell2 - Enchanter.lnk'}
if(($SpecificClient -eq 'Boramur') -and ($ServerType -eq 'Live')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest4 #2 - Boramur - Bard.lnk'}
if(($SpecificClient -eq 'boramur3') -and ($ServerType -eq 'Live')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest5 #2 - boramur3 - Wizard.lnk'}
if(($SpecificClient -eq 'emmitchell') -and ($ServerType -eq 'Live')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest6 #2 - emmitchell - Mage.lnk'}

if(($SpecificClient -eq 'boramur2') -and ($ServerType -eq 'Live')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest13 #2 - boramur2 - Ranger.lnk'}
if(($SpecificClient -eq 'excruciatorUI') -and ($ServerType -eq 'Live')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest14 #2 - excruciatorUI - User Interface Defaults.lnk'}

if(($SpecificClient -eq 'plmitchell') -and ($ServerType -eq 'Test')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest1 - plmitchell - Tank.lnk'}
if(($SpecificClient -eq 'emmitchell2') -and ($ServerType -eq 'Test')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest2 - emmitchell2 - Cleric.lnk'}
if(($SpecificClient -eq 'plmitchell2') -and ($ServerType -eq 'Test')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest3 - plmitchell2 - Enchanter.lnk'}
if(($SpecificClient -eq 'Boramur') -and ($ServerType -eq 'Test')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest4 - Boramur - Bard.lnk'}
if(($SpecificClient -eq 'boramur3') -and ($ServerType -eq 'Test')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest5 - boramur3 - Wizard.lnk'}
if(($SpecificClient -eq 'emmitchell') -and ($ServerType -eq 'Test')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest6 - emmitchell - Mage.lnk'}

if(($SpecificClient -eq 'boramur2') -and ($ServerType -eq 'Test')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest13 - boramur2 - Ranger.lnk'}
if(($SpecificClient -eq 'excruciatorUI') -and ($ServerType -eq 'Test')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest14 - excruciatorUI - User Interface Defaults.lnk'}

if(($SpecificClient -eq 'excruciator1') -and ($ServerType -eq 'Test')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest7 - excruciator1 - Tank.lnk'}
if(($SpecificClient -eq 'excruciator2') -and ($ServerType -eq 'Test')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest8 - excruciator2 - Cleric.lnk'}
if(($SpecificClient -eq 'excruciator3') -and ($ServerType -eq 'Test')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest9 - excruciator3 - Shaman.lnk'}
if(($SpecificClient -eq 'excruciator4') -and ($ServerType -eq 'Test')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest10 - excruciator4 - Bard.lnk'}
if(($SpecificClient -eq 'excruciator5') -and ($ServerType -eq 'Test')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest11 - excruciator5 - Wizard.lnk'}
if(($SpecificClient -eq 'excruciator6') -and ($ServerType -eq 'Test')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest12 - excruciator6 - Mage.lnk'}

if(($SpecificClient -eq 'excruciator1') -and ($ServerType -eq 'Live')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest7 #2 - excruciator1 - Tank.lnk'}
if(($SpecificClient -eq 'excruciator2') -and ($ServerType -eq 'Live')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest8 #2 - excruciator2 - Cleric.lnk'}
if(($SpecificClient -eq 'excruciator3') -and ($ServerType -eq 'Live')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest9 #2 - excruciator3 - Shaman.lnk'}
if(($SpecificClient -eq 'excruciator4') -and ($ServerType -eq 'Live')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest10 #2 - excruciator4 - Bard.lnk'}
if(($SpecificClient -eq 'excruciator5') -and ($ServerType -eq 'Live')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest11 #2 - excruciator5 - Wizard.lnk'}
if(($SpecificClient -eq 'excruciator6') -and ($ServerType -eq 'Live')) {invoke-item 'C:\Users\Paul\Desktop\Misc\EverQuest12 #2 - excruciator6 - Mage.lnk'}
}