Function ChangeToPoPEQMusic{
 Param( [parameter(Mandatory=$True)]$EQPath)
#$EQPath = 'C:\Users\Public\Daybreak Game Company\Installed Games\EverQuest #2\'
$MediaChangePath = 'C:\Users\Paul\Desktop\Powershell Scripts\Functions\EQsubUI\MediaFIles\ClientMediaChange\Current\'

$OriginalCombatTheme1 = if((random -Minimum 1 -Maximum 1000) -ige 500) {'combattheme1.mp3'} else {'combattheme2.mp3'}

if($OriginalCombatTheme1 -eq 'combattheme1.mp3') {$OriginalCombatTheme2 = 'combattheme2.mp3'}
if($OriginalCombatTheme1 -eq 'combattheme2.mp3') {$OriginalCombatTheme2 = 'combattheme1.mp3'}
$LengthOfProposedOriginalCombatTheme1 = (Get-ItemProperty "$($MediaChangePath)$($OriginalCombatTheme1)").Length
$LengthOfProposedOriginalCombatTheme2 = (Get-ItemProperty "$($MediaChangePath)$($OriginalCombatTheme2)").Length

$EQFile = 'eqtheme.mp3'
$LengthOfCurrentCombatFile = (Get-ItemProperty "$($EQPath)$($EQFile)").Length
if( ($LengthOfCurrentCombatFile -ne 1527121))
    {Copy-Item -Path "$($MediaChangePath)$($EQFile)" -Destination "$($EQPath)$($EQFile)" -Force}

$EQFile = 'combattheme1.mp3'
$LengthOfCurrentCombatFile = (Get-ItemProperty "$($EQPath)$($EQFile)").Length
if( ($LengthOfCurrentCombatFile -ne $LengthOfProposedOriginalCombatTheme1))
    {Copy-Item -Path "$($MediaChangePath)$($OriginalCombatTheme1)" -Destination "$($EQPath)$($EQFile)" -Force}

$EQFile = 'combattheme2.mp3'
$LengthOfCurrentCombatFile = (Get-ItemProperty "$($EQPath)$($EQFile)").Length
if( ($LengthOfCurrentCombatFile -ne $LengthOfProposedOriginalCombatTheme2))
    {Copy-Item -Path "$($MediaChangePath)$($OriginalCombatTheme2)" -Destination "$($EQPath)$($EQFile)" -Force}
}