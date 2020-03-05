Function CreateSpellHotkeys
{ Param( [parameter(Mandatory=$True)]$EQDirectory
        ,[parameter(Mandatory=$True)]$CharacterName
        ,[parameter(Mandatory=$True)]$ServerName
        ,[parameter(Mandatory=$True)]$SpellLoadoutName
        ,[parameter(Mandatory=$True)]$ButtonName
        ,[parameter(Mandatory=$False)]$FirstRowText
        ,[parameter(Mandatory=$False)]$SecondRowText
        ,[parameter(Mandatory=$False)]$ThirdRowText
        ,[parameter(Mandatory=$False)]$FourthRowText
        ,[parameter(Mandatory=$False)]$LastRowText
        ,[parameter(Mandatory=$False)]$SpellSlotCastingOrder
        ,[ValidateSet('Page1','Page2','Page3','Page4','Page5','Page6','Page7','Page8','Page9','Page10')][parameter(Mandatory=$False)]$TargetHotkeyPage
        ,[ValidateSet('Button1','Button2','Button3','Button4','Button5','Button6','Button7','Button8','Button9','Button10','Button11','Button12')][parameter(Mandatory=$False)]$TargetHotkeyButton
        ,[parameter(Mandatory=$False)]$CastTimeFocus
        ,[parameter(Mandatory=$False)]$ShowFinalHotkeyCreations
        ,[parameter(Mandatory=$False)]$ShowModifiedFile
        )
.'C:\Users\Paul\Desktop\Powershell Scripts\Functions\TablesFromEQFiles.ps1'
.'C:\Users\Paul\Desktop\Powershell Scripts\Functions\Join-Object.ps1'

$FirstRowText = if($FirstRowText -eq ''){$NULL}else{$FirstRowText}
$SecondRowText = if($SecondRowText -eq ''){$NULL}else{$SecondRowText}
$ThirdRowText = if($ThirdRowText -eq ''){$NULL}else{$ThirdRowText}
$FourthRowText = if($FourthRowText -eq ''){$NULL}else{$FourthRowText}
$LastRowText = if($LastRowText -eq ''){$NULL}else{$LastRowText}



<#
$EQDirectory = 'C:\Users\Public\Daybreak Game Company\Installed Games\EverQuest\'
$CharacterName = 'Divinater'
$ServerName = 'test'
$SpellSlotCastingOrder = '1'
$FirstRowText = '/pause 4, /assist group'
$SpellLoadoutName = 'Default'
$TargetHotkeyPage = 'Page4'
$TargetHotkeyButton = 'Button1'
$CastTimeFocus = .1
$LastRowText = '/gs Cleric Script Done!'


$EQDirectory = 'C:\Users\Public\Daybreak Game Company\Installed Games\EverQuest\'
$TankName = 'Sanctificus'
$ClericName = 'Divinater'
$ChanterName = 'Mentalinteritus'
$BardName = 'sanavatis'
$WizName = 'nuclearcrepitus'
$MageName = 'criticamassua'

$CharacterName = $MageName

$ServerName = 'test'
$SpellLoadoutName = 'default'
$CastTimeFocus ='.1'

$FirstRowText = '/pause 4, /assist group' ; $SecondRowText = '/pet qattack' ; $ThirdRowText = $NULL ; $FourthRowText = $NULL ; $LastRowText = '/gs Mage2 Script Done!'
$TargetHotkeyPage = 'page4' ; $TargetHotkeyButton = 'button2' ; $ButtonName = 'Magic 2' ; $SpellSlotCastingOrder = '2,2'
#> 
    $AllSpellData = Import-Csv "$($EQDirectory)SpellData.csv"
    $ButtonDetailTable = TablesFromEQFiles -TableTypeToReturn ButtonDetail -SourceFileLocation "$($EQDirectory)$($CharacterName)_$($ServerName).ini"
    $SpellLoadoutTable = TablesFromEQFiles -TableTypeToReturn SpellLoadouts -SourceFileLocation "$($EQDirectory)$($CharacterName)_$($ServerName).ini"
    $SpellLoadoutRefined = $SpellLoadoutTable | where SpellLoadoutName -eq $SpellLoadoutName  | Select SpellSlotNumber, SPellID
    $SpellSlotCastingOrder = $SpellSlotCastingOrder -split ','
    $AllRequiredSpellData = $SpellLoadoutRefined | InnerJoin $AllSpellData -On SpellID -Equals SpellID -Discern 1
    $HotKeyTable = new-object "System.Data.DataTable"
    $HotKeyTable.columns.add((New-Object system.Data.DataColumn 'LineText',([string])))
    [string]$ObjectDetailWithinUI = [IO.File]::ReadAllText("$($EQDirectory)$($CharacterName)_$($ServerName).ini")

#if($FirstRowText){$row = $HotKeyTable.NewRow() ; $row.LineText = $FirstRowText ; $HotKeyTable.Rows.Add($row)}

$row = $HotKeyTable.NewRow() ; $row.LineText = $FirstRowText ; $HotKeyTable.Rows.Add($row)
$row = $HotKeyTable.NewRow() ; $row.LineText = $SecondRowText ; $HotKeyTable.Rows.Add($row)
$row = $HotKeyTable.NewRow() ; $row.LineText = $ThirdRowText ; $HotKeyTable.Rows.Add($row)
$row = $HotKeyTable.NewRow() ; $row.LineText = $FourthRowText ; $HotKeyTable.Rows.Add($row)
$row = $HotKeyTable.NewRow() ; $row.LineText = $LastRowText ; $HotKeyTable.Rows.Add($row)

[int]$Recursed = 0

if($SpellSlotCastingOrder)
{
Foreach($Slot in $SpellSlotCastingOrder)
    {#$Slot}

        <#Pull the base casting time#>
            [decimal]$CastingTime = $AllRequiredSpellData | where SpellSlotNumber -eq "slot$Slot" | Select castingtime -ExpandProperty castingtime
        
        <#Add casting bonus#>
            [decimal]$CastingTime = if($CastingTime -ige 3) {[math]::Round($CastingTime - ($CastingTime * $CastTimeFocus),1)} else {$CastingTime}

        <#convert it to EQ logic (1 second = 10 etc. .)#> <#if there is a decimal in the number, no need to add a 0 if there is no decimal, a 0 must be added.#>
            [decimal]$CastingTime = if($CastingTime -lt 1){[math]::Round($CastingTime,1) -replace '0\.',''} else {if([regex]::matches($CastingTime,'\.') -ne $null) {[math]::Round($CastingTime,1) -replace '\.',''} else {"$($CastingTime)0"}}
        
        <#add in recovery time#>
            [decimal]$CastingTime = $CastingTime +17 <#17 instead of 15 to account for connection lag#>

        <#Account for recast time#> <#this looks 1 slot ahead. to expand this and look at all future spell slots, then account for the recast time in between. all cast times must be calculated for all future spells in between this current one and the next one of the same spell. if the total cast time + recovery time is -ilt recast, then we are good, if not, adjust to fit the difference#>
                    <#Create constructs to account for recast and recovery times#>
                        $Recursed = $Recursed + 1
                        $NextSlot = $SpellSlotCastingOrder[$Recursed]
                        [decimal]$RecastTime = ($AllRequiredSpellData | where SpellSlotNumber -eq "slot$Slot" | Select recasttime -ExpandProperty recasttime)
                        <#convert recastTime to EQ logic (1 second = 10 etc. .)#> <#if there is a decimal in the number, no need to add a 0 if there is no decimal, a 0 must be added.#>
                            [decimal]$RecastTime = if($RecastTime -lt 1){[math]::Round($RecastTime,1) -replace '0\.',''} else {if([regex]::matches($RecastTime,'\.')) {"$([math]::Round($RecastTime,1) -replace '\.','')"} else {"$($RecastTime)0"}}

            [decimal]$CastingTime = if(($Slot -eq $NextSlot)){if($CastingTime -igt $RecastTime) {$CastingTime} else {[math]::Round($RecastTime,1)}} else{$CastingTime}

        <#remove recovery time if it is the last spell in the set#>
            [decimal]$CastingTime = if($NextSlot -eq $Null){$CastingTime -15} else {$CastingTime} <#15 instead of 17 to account for connection lag#>


        $name = $AllRequiredSpellData | where SpellSlotNumber -eq "slot$Slot" | Select name -ExpandProperty name
        $manacost = $AllRequiredSpellData | where SpellSlotNumber -eq "slot$Slot" | Select manacost -ExpandProperty manacost
        $ExpiredMessage = $AllRequiredSpellData | where SpellSlotNumber -eq "slot$Slot" | Select Expired -ExpandProperty Expired
        $resist = $AllRequiredSpellData | where SpellSlotNumber -eq "slot$Slot" | Select resist -ExpandProperty resist
        [int]$LoopNumber = 0
        :LoopThroughEachLine foreach($Line in $HotKeyTable)
        { $LoopNumber = $LoopNumber + 1
            if($Line.LineText.GetTypeCode() -eq 'DBNull')
                {$HotKeyTable.Rows[($LoopNumber-1)].LineText = ("/pause " + $CastingTime + ", /Cast $Slot /*$($name)*/").trim()
                 break :LoopThroughEachLine}
        }
        
    }
}


if(($HotKeyTable).rows.Count -gt 5){'You are attempting to enter more than 5 rows to a button. This is not allowed. Re-evaluate your inputs. Exiting the script' ; sleep -Seconds 20 ; break}

$HotKeyTableFinal = new-object "System.Data.DataTable"
$HotKeyTableFinal.columns.add((New-Object system.Data.DataColumn 'LineText',([string])))
$RecursedNumber = 0
Foreach($LineText in $HotKeyTable)
    {
    $RecursedNumber  = $RecursedNumber + 1
    $LineNumber = "Line$RecursedNumber"
    $row = $HotKeyTableFinal.NewRow()
    $row.LineText = ("$($TargetHotkeyPage)$($TargetHotkeyButton)$($LineNumber)=$($LineText | select LineText -ExpandProperty LineText)`r`n")
    $HotKeyTableFinal.Rows.Add($row)
    }

    $row = $HotKeyTableFinal.NewRow()
    $row.LineText = "$($TargetHotkeyPage)$($TargetHotkeyButton)Name=$($ButtonName)`r`n"
    $HotKeyTableFinal.Rows.Add($row)

[string]$ObjectDetailWithinUI = [IO.File]::ReadAllText("$($EQDirectory)$($CharacterName)_$($ServerName).ini")
If(!(test-path "$($EQDirectory)$($CharacterName)_Backups\"))
    {
          New-Item -ItemType Directory -Force -Path "$($EQDirectory)$($CharacterName)_Backups\"
    }
$ObjectDetailWithinUI | Out-File -FilePath "$($EQDirectory)$($CharacterName)_Backups\$($CharacterName)_$($ServerName)$(Get-Date -Format "MM-dd-yyyy HH.mm.ss").ini"

$ReplaceThisString = "$($TargetHotkeyPage)$($TargetHotkeyButton)Line"
$ReplaceThisStringForButtonName = "$($TargetHotkeyPage)$($TargetHotkeyButton)Name" 

$AllMatchesInFile = [regex]::matches($ObjectDetailWithinUI,"(?m)^(.*$ReplaceThisString\d+=).*$")

$NewObjectDetailWithinUI = ($ObjectDetailWithinUI -replace "(?m)^(.*$ReplaceThisString\d+=).*$", '' -replace "(?m)^(.*$ReplaceThisStringForButtonName=).*$", '') -replace '(?m)^\s*$'


if((($AllMatchesInFile.index) | Measure-Object -Minimum).Minimum -lt 1) {$MinIndexLocation = ([regex]::matches($NewObjectDetailWithinUI,"(?m)^\[Socials]")).index + ('[Socials]rn').Length} else {$MinIndexLocation = (($AllMatchesInFile.index) | Measure-Object -Minimum).Minimum}
<#Make the actual changes to the file#>

$NewObjectDetailWithinUI.Insert($MinIndexLocation,($HotKeyTableFinal | select LineText -ExpandProperty LineText)) | Out-File -FilePath "$($EQDirectory)$($CharacterName)_$($ServerName).ini"

If(!(test-path "$($EQDirectory)$($CharacterName)_Backups\SpecificKeys\"))
    {
          New-Item -ItemType Directory -Force -Path "$($EQDirectory)$($CharacterName)_Backups\SpecificKeys\"
    }
$DateForFileName = Get-Date -Format "MM-dd-yyyy HH.mm.ss"
Add-Content -Path "$($EQDirectory)$($CharacterName)_Backups\SpecificKeys\$($TargetHotkeyPage)$($TargetHotkeyButton) $($DateForFileName).txt" -Value ($HotKeyTableFinal | select LineText -ExpandProperty LineText)
$NewiniObject = ((Get-Content -Path "$($EQDirectory)$($CharacterName)_$($ServerName).ini") | ? {$_.trim() -ne ""}).Trim()
Clear-Content -Path "$($EQDirectory)$($CharacterName)_$($ServerName).ini"

$FinalNewiniObject = $NewiniObject -ireplace '(?m)^Page\d+Button\d+Name=$', "$+ "

Add-Content -Path "$($EQDirectory)$($CharacterName)_$($ServerName).ini" -Value $FinalNewiniObject
if($ShowModifiedFile -eq 1)
{start-process notepad++.exe "$($EQDirectory)$($CharacterName)_$($ServerName).ini"}
if($ShowFinalHotkeyCreations -eq 1)
{start-process notepad++.exe "$($EQDirectory)$($CharacterName)_Backups\SpecificKeys\$($TargetHotkeyPage)$($TargetHotkeyButton) $($DateForFileName).txt"}
<#make another function that makes audio triggers based on worn off messages etc..#>
<#Make the recast delay sensative to more than just the next slot casting order.#>
<#Make the extra info in /**/ specific to detrimental and beneficial spells#>
<#Make the directory check for a slash at the end and add it if it isnt there.#>
<#Make an option to name the new button.#>
}