.'C:\Users\Paul\Desktop\Powershell Scripts\Functions\CreateSpellHotkeys.ps1'

$EQDirectory = 'C:\Users\Public\Daybreak Game Company\Installed Games\EverQuest\'
<#Put this in a function and hash table it#>
$TankName = 'Sanctificus'
$ClericName = 'Divinater'
$ChanterName = 'Mentalinteritus'
$BardName = 'sanavatis'
$WizName = 'nuclearcrepitus'
$MageName = 'criticamassua'

$CharacterName = $BardName
$ServerName = 'test'
$SpellLoadoutName = 'default'
$CastTimeFocus ='.1'

$FirstRowText = '/pause 4, /assist group' ; $SecondRowText = '/attack on' ; $ThirdRowText = '/stopsong' ; $FourthRowText = '/melody 1 2 3 4'  ; $LastRowText = $NULL
$TargetHotkeyPage = 'page4' ; $TargetHotkeyButton = 'button1' ; $ButtonName = 'Assist' ; $SpellSlotCastingOrder = $NULL
    CreateSpellHotkeys -SpellSlotCastingOrder $SpellSlotCastingOrder -SpellLoadoutName $SpellLoadoutName -TargetHotkeyPage $TargetHotkeyPage -TargetHotkeyButton $TargetHotkeyButton -ButtonName $ButtonName -FirstRowText $FirstRowText -SecondRowText $SecondRowText -ThirdRowText $ThirdRowText -FourthRowText $FourthRowText -LastRowText $LastRowText -CastTimeFocus $CastTimeFocus  -EQDirectory $EQDirectory -ServerName $ServerName -CharacterName $CharacterName -ShowFinalHotkeyCreations 1 -ShowModifiedFile 1; sleep -Seconds 1
$FirstRowText = $NULL ; $SecondRowText = $NULL ; $ThirdRowText = '/stopsong' ; $FourthRowText = '/melody 2 1 3 4'  ; $LastRowText = $NULL
$TargetHotkeyPage = 'page4' ; $TargetHotkeyButton = 'button2' ; $ButtonName = 'Slow' ; $SpellSlotCastingOrder = $NULL
    CreateSpellHotkeys -SpellSlotCastingOrder $SpellSlotCastingOrder -SpellLoadoutName $SpellLoadoutName -TargetHotkeyPage $TargetHotkeyPage -TargetHotkeyButton $TargetHotkeyButton -ButtonName $ButtonName -FirstRowText $FirstRowText -SecondRowText $SecondRowText -ThirdRowText $ThirdRowText -FourthRowText $FourthRowText -LastRowText $LastRowText -CastTimeFocus $CastTimeFocus  -EQDirectory $EQDirectory -ServerName $ServerName -CharacterName $CharacterName -ShowFinalHotkeyCreations 1 -ShowModifiedFile 1; sleep -Seconds 1
$FirstRowText = $NULL ; $SecondRowText = $NULL ; $ThirdRowText = '/stopsong' ; $FourthRowText = '/melody 1 3 4 5'  ; $LastRowText = $NULL
$TargetHotkeyPage = 'page4' ; $TargetHotkeyButton = 'button3' ; $ButtonName = 'Peaceful' ; $SpellSlotCastingOrder = $NULL
    CreateSpellHotkeys -SpellSlotCastingOrder $SpellSlotCastingOrder -SpellLoadoutName $SpellLoadoutName -TargetHotkeyPage $TargetHotkeyPage -TargetHotkeyButton $TargetHotkeyButton -ButtonName $ButtonName -FirstRowText $FirstRowText -SecondRowText $SecondRowText -ThirdRowText $ThirdRowText -FourthRowText $FourthRowText -LastRowText $LastRowText -CastTimeFocus $CastTimeFocus  -EQDirectory $EQDirectory -ServerName $ServerName -CharacterName $CharacterName -ShowFinalHotkeyCreations 1 -ShowModifiedFile 1; sleep -Seconds 1


<#------------------------------#>
$FirstRowText = '/gs Inc %T' ; $SecondRowText = '/pause 3, /autofire on' ; $ThirdRowText = '/stopsong' ; $FourthRowText = '/melody 1 2 3 4'  ; $LastRowText = '/autofire off'
$TargetHotkeyPage = 'page4' ; $TargetHotkeyButton = 'button7' ; $ButtonName = 'Pull' ; $SpellSlotCastingOrder = $NULL
    CreateSpellHotkeys -SpellSlotCastingOrder $SpellSlotCastingOrder -SpellLoadoutName $SpellLoadoutName -TargetHotkeyPage $TargetHotkeyPage -TargetHotkeyButton $TargetHotkeyButton -ButtonName $ButtonName -FirstRowText $FirstRowText -SecondRowText $SecondRowText -ThirdRowText $ThirdRowText -FourthRowText $FourthRowText -LastRowText $LastRowText -CastTimeFocus $CastTimeFocus  -EQDirectory $EQDirectory -ServerName $ServerName -CharacterName $CharacterName -ShowFinalHotkeyCreations 1 -ShowModifiedFile 1; sleep -Seconds 1
$FirstRowText = '/pause 4, /xtar 2' ; $SecondRowText = '/pause 27, /cast 8' ; $ThirdRowText = '/pause 11, /xtar 3' ; $FourthRowText = '/pause 27, /cast 8' ; $LastRowText = '/gs Bard2 Script Done!'
$TargetHotkeyPage = 'page4' ; $TargetHotkeyButton = 'button8' ; $ButtonName = 'Mez' ; $SpellSlotCastingOrder = $NULL
    CreateSpellHotkeys -SpellSlotCastingOrder $SpellSlotCastingOrder -SpellLoadoutName $SpellLoadoutName -TargetHotkeyPage $TargetHotkeyPage -TargetHotkeyButton $TargetHotkeyButton -ButtonName $ButtonName -FirstRowText $FirstRowText -SecondRowText $SecondRowText -ThirdRowText $ThirdRowText -FourthRowText $FourthRowText -LastRowText $LastRowText -CastTimeFocus $CastTimeFocus  -EQDirectory $EQDirectory -ServerName $ServerName -CharacterName $CharacterName -ShowFinalHotkeyCreations 1 -ShowModifiedFile 1; sleep -Seconds 1
$FirstRowText = '/pause 2, /stopsong'  ; $SecondRowText = '/attack off' ; $ThirdRowText = '/melody 7 7 7 1' ; $FourthRowText = $NULL ; $LastRowText = $NULL
$TargetHotkeyPage = 'page4' ; $TargetHotkeyButton = 'button9' ; $ButtonName = 'Lull' ; $SpellSlotCastingOrder = $NULL
    CreateSpellHotkeys -SpellSlotCastingOrder $SpellSlotCastingOrder -SpellLoadoutName $SpellLoadoutName -TargetHotkeyPage $TargetHotkeyPage -TargetHotkeyButton $TargetHotkeyButton -ButtonName $ButtonName -FirstRowText $FirstRowText -SecondRowText $SecondRowText -ThirdRowText $ThirdRowText -FourthRowText $FourthRowText -LastRowText $LastRowText -CastTimeFocus $CastTimeFocus  -EQDirectory $EQDirectory -ServerName $ServerName -CharacterName $CharacterName -ShowFinalHotkeyCreations 1 -ShowModifiedFile 1; sleep -Seconds 1

