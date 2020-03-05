Function TablesFromEQFiles
{ Param( [ValidateSet('ButtonDetail','SpellLoadouts')][parameter(Mandatory=$True)]$TableTypeToReturn
        ,[parameter(Mandatory=$True)]$SourceFileLocation
        )
<#
$TableTypeToReturn = 'ButtonDetail'
$SourceFileLocation = 'F:\Fun\Excruciator_test.ini'
#>
#[string]$UIdetail = [IO.File]::ReadAllText('F:\Fun\UI_Excruciator_test.ini')
[string]$ObjectDetailWithinUI = [IO.File]::ReadAllText($SourceFileLocation)
if($ObjectDetailWithinUI -notmatch 'Page1Button1Line1')
{Write-Host 'It appears your file does not contain the neccesary data to parse. Please chose another file or troubleshoot the issue within the code or the file itself. (the file is missing Page1Button1Line1 so it doesnt appear to be the correct file type)' ; sleep -second
s 20 ; Exit}
$PagesButtonsLinesAndText = ([regex]::matches($ObjectDetailWithinUI,'(?m)^Page\d+Button\d+Line\d+=.*$')).value
$PagesButtonsLinesAndTextWithName = ([regex]::matches($ObjectDetailWithinUI,'(?m)^Page\d+Button\d+Name.*$')).value
$SPellLoadoutsText = ([regex]::matches($ObjectDetailWithinUI,'(?m)^(?!.*inuse.*)SpellLoadout\d+\..*$')).value
<#The base table that everything button related will pull from#>
<#---------------------------------------#>
if ($TableTypeToReturn -eq 'ButtonDetail')
{
$ButtonDetailTable = new-object "System.Data.DataTable"
$ButtonDetailTable.columns.add((New-Object system.Data.DataColumn 'Name',([string])))
$ButtonDetailTable.columns.add((New-Object system.Data.DataColumn 'Page',([string])))
$ButtonDetailTable.columns.add((New-Object system.Data.DataColumn 'Button',([string])))
$ButtonDetailTable.columns.add((New-Object system.Data.DataColumn 'Line',([string])))
$ButtonDetailTable.columns.add((New-Object system.Data.DataColumn 'Value',([string])))
foreach ($value in $PagesButtonsLinesAndText)
    {
    #) {($).trim()}
    $Name = ''
    $Page = ([regex]::matches($value,'Page\d+')).value
    $Button = ([regex]::matches($value,'Button\d+')).value
    $Line = ([regex]::matches($value,'Line\d+')).value
    $Value = ([regex]::matches($value,'(?<=Line\d+=).*')).value
        $row = $ButtonDetailTable.NewRow()
        $row.Name = if($Name) {($Name).trim()}
        $row.Page = if($Page) {($Page).trim()}
        $row.Button = if($Button) {($Button).trim()}
        $row.Line = if($Line) {($Line).trim()}
        $row.Value = if($Value) {($Value).trim()}
        $ButtonDetailTable.Rows.Add($row)
    }
<#---------------------------------------#>
<#---------------------------------------#>
<#Make a table with name included with the page and buttons#>
$ButtonNamesTable = new-object "System.Data.DataTable"
$ButtonNamesTable.columns.add((New-Object system.Data.DataColumn 'Page',([string])))
$ButtonNamesTable.columns.add((New-Object system.Data.DataColumn 'Button',([string])))
$ButtonNamesTable.columns.add((New-Object system.Data.DataColumn 'Name',([string])))
foreach ($value in $PagesButtonsLinesAndTextWithName)
    {#$value}
            $Page = ([regex]::matches($value,'Page\d+')).value
            $Button = ([regex]::matches($value,'Button\d+')).value
            $Name = ([regex]::matches($value,'(?<=Name=).*')).value -replace '\s' ,'' -replace ''
            if(($Name -eq '') -or ($Name -eq $Null)) {$Name = ' '}
        $row = $ButtonNamesTable.NewRow()
        $row.Page = if($Page) {($Page).trim()}
        $row.Button = if($Button) {($Button).trim()}
        $row.Name = if($Name) {($Name).trim()}
        $ButtonNamesTable.Rows.Add($row)
    }
<#---------------------------------------#>
<#---------------------------------------#>
$FinalButtonDetailTable = new-object "System.Data.DataTable"
$FinalButtonDetailTable.columns.add((New-Object system.Data.DataColumn 'Name',([string])))
$FinalButtonDetailTable.columns.add((New-Object system.Data.DataColumn 'Page',([string])))
$FinalButtonDetailTable.columns.add((New-Object system.Data.DataColumn 'Button',([string])))
$FinalButtonDetailTable.columns.add((New-Object system.Data.DataColumn 'Line',([string])))
$FinalButtonDetailTable.columns.add((New-Object system.Data.DataColumn 'Value',([string])))
foreach ($value in $ButtonDetailTable)
    {#$value}
            $Name = $ButtonNamesTable | Where {$_.page -eq $value.page -and $_.button -eq $value.button} | Select name -ExpandProperty name
            $Page = $value.Page
            $Button = $value.Button
            $Line = $value.Line
            $Value = $value.Value
        $row = $FinalButtonDetailTable.NewRow()
        $row.Name = if($Name) {($Name).trim()}
        $row.Page = if($Page) {($Page).trim()}
        $row.Button = if($Button) {($Button).trim()}
        $row.Line = if($Line) {($Line).trim()}
        $row.Value = if($Value) {($Value).trim()}
        $FinalButtonDetailTable.Rows.Add($row)
    }
return $FinalButtonDetailTable
}
<#---------------------------------------#>
<#---------------------------------------#>
if($TableTypeToReturn -eq 'SpellLoadouts')
    {
<#The main table that spell and timer detail will pull from#>
<#with knowing the spell ids, it looks as though we could make our own spell loadouts without even being in the game.#>
$SPellLoadoutsTable = new-object "System.Data.DataTable"
$SPellLoadoutsTable.columns.add((New-Object system.Data.DataColumn 'SpellLoadoutName',([string])))
$SPellLoadoutsTable.columns.add((New-Object system.Data.DataColumn 'SpellLoadoutNumber',([string])))
$SPellLoadoutsTable.columns.add((New-Object system.Data.DataColumn 'SpellSlotNumber',([string])))
$SPellLoadoutsTable.columns.add((New-Object system.Data.DataColumn 'SPellID',([string])))
#$SpellLoadoutName = ([regex]::matches($value,'(?<=SpellLoadout\d+name=).*')).value  -replace '\s',''
foreach ($value in [regex]::matches(($SPellLoadoutsText | Out-String),'(?m)^(?!.*name.*)SpellLoadout\d+\..*$').value)
    {#$value}
            $SpellLoadoutName = ''
            $SpellLoadoutNumber = ([regex]::matches($value,'SpellLoadout\d+')).value
            $SpellSlotNumber = ([regex]::matches($value,'slot\d+')).value
            $SPellID = ([regex]::matches($value,'(?<=slot\d+=).*')).value -replace '\s',''
        $row = $SPellLoadoutsTable.NewRow()
        $row.SpellLoadoutName = if($SpellLoadoutName) {($SpellLoadoutName).trim()}
        $row.SpellLoadoutNumber = if($SpellLoadoutNumber) {($SpellLoadoutNumber).trim()}
        $row.SpellSlotNumber = if($SpellSlotNumber) {($SpellSlotNumber).trim()}
        $row.SPellID = if($SPellID) {($SPellID).trim()}
        $SPellLoadoutsTable.Rows.Add($row)
    }
<#---------------------------------------#>
<#---------------------------------------#>
$SPellLoadoutNamesTable = new-object "System.Data.DataTable"
$SPellLoadoutNamesTable.columns.add((New-Object system.Data.DataColumn 'SpellLoadoutName',([string])))
$SPellLoadoutNamesTable.columns.add((New-Object system.Data.DataColumn 'SpellLoadoutNumber',([string])))
#$SpellLoadoutName = ([regex]::matches($value,'(?<=SpellLoadout\d+name=).*')).value  -replace '\s',''
foreach ($value in [regex]::matches(($SPellLoadoutsText | Out-String),'(?m)^SpellLoadout\d+\.name.*$').value)
    {#$value}
            $SpellLoadoutName = (([regex]::matches($value,'(?<=name=).*$')).value).trim()
            $SpellLoadoutNumber = ([regex]::matches($value,'SpellLoadout\d+')).value
        $row = $SPellLoadoutNamesTable.NewRow()
        $row.SpellLoadoutName = if($SpellLoadoutName) {($SpellLoadoutName).trim()}
        $row.SpellLoadoutNumber = if($SpellLoadoutNumber) {($SpellLoadoutNumber).trim()}
        $SPellLoadoutNamesTable.Rows.Add($row)
    }
<#---------------------------------------#>
<#---------------------------------------#>
$FinalSPellLoadoutsTable = new-object "System.Data.DataTable"
$FinalSPellLoadoutsTable.columns.add((New-Object system.Data.DataColumn 'SpellLoadoutName',([string])))
$FinalSPellLoadoutsTable.columns.add((New-Object system.Data.DataColumn 'SpellLoadoutNumber',([string])))
$FinalSPellLoadoutsTable.columns.add((New-Object system.Data.DataColumn 'SpellSlotNumber',([string])))
$FinalSPellLoadoutsTable.columns.add((New-Object system.Data.DataColumn 'SPellID',([string])))
#$SpellLoadoutName = ([regex]::matches($value,'(?<=SpellLoadout\d+name=).*')).value  -replace '\s',''
foreach ($value in $SPellLoadoutsTable)
    {#$value}
        $SpellLoadoutName = $SPellLoadoutNamesTable | Where {$_.SpellLoadoutNumber -eq $value.SpellLoadoutNumber} | Select SpellLoadoutName -ExpandProperty SpellLoadoutName
        $SpellLoadoutNumber = $value.SpellLoadoutNumber
        $SpellSlotNumber = $value.SpellSlotNumber
        $SPellID = $value.SPellID
        $row = $FinalSPellLoadoutsTable.NewRow()
        $row.SpellLoadoutName = if($SpellLoadoutName) {($SpellLoadoutName).trim()}
        $row.SpellLoadoutNumber = if($SpellLoadoutNumber) {($SpellLoadoutNumber).trim()}
        $row.SpellSlotNumber = if($SpellSlotNumber) {($SpellSlotNumber).trim()}
        $row.SPellID = if($SPellID) {($SPellID).trim()}
        $FinalSPellLoadoutsTable.Rows.Add($row)
    }
return $FinalSPellLoadoutsTable
}
}
