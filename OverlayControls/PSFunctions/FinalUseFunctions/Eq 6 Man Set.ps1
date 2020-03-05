. 'C:\Users\Paul\Desktop\Powershell Scripts\Set-WindowPosition.ps1'
. 'C:\Users\Paul\Desktop\Powershell Scripts\Set-WindowStatus.ps1'
$ErrorActionPreference = 'Continue'

if ((Get-WmiObject Win32_Process -Filter "CommandLine like '%plmitchell'") -ne $NULL)
{Set-WindowStatus -ProcessName eqgame -CommandLineText "plmitchell" -DesiredStatus SHOWNOACTIVATE ; Set-WindowPosition -ProcessName eqgame -CommandLineText 'plmitchell' -X -1643 -Y 0 -Width 1646 -Height 730}

if ((Get-WmiObject Win32_Process -Filter "CommandLine like '%emmitchell2'") -ne $NULL)
{Set-WindowStatus -ProcessName eqgame -CommandLineText "emmitchell2" -DesiredStatus SHOWNOACTIVATE ; Set-WindowPosition -ProcessName eqgame -CommandLineText 'emmitchell2' -X -1643 -Y 353 -Width 1646 -Height 730}

if ((Get-WmiObject Win32_Process -Filter "CommandLine like '%plmitchell2'") -ne $NULL)
{Set-WindowStatus -ProcessName eqgame -CommandLineText "plmitchell2" -DesiredStatus SHOWNOACTIVATE ; Set-WindowPosition -ProcessName eqgame -CommandLineText 'plmitchell2' -X -3 -Y 353 -Width 1646 -Height 730}

if ((Get-WmiObject Win32_Process -Filter "CommandLine like '%boramur'") -ne $NULL)
{Set-WindowStatus -ProcessName eqgame -CommandLineText "boramur" -DesiredStatus SHOWNOACTIVATE ; Set-WindowPosition -ProcessName eqgame -CommandLineText 'boramur' -X 277 -Y 353 -Width 1646 -Height 730}

if ((Get-WmiObject Win32_Process -Filter "CommandLine like '%boramur3'") -ne $NULL)
{Set-WindowStatus -ProcessName eqgame -CommandLineText "boramur3" -DesiredStatus SHOWNOACTIVATE ; Set-WindowPosition -ProcessName eqgame -CommandLineText 'boramur3' -X 277 -Y 0 -Width 1646 -Height 730}

if ((Get-WmiObject Win32_Process -Filter "CommandLine like '%emmitchell'") -ne $NULL)
{Set-WindowStatus -ProcessName eqgame -CommandLineText "emmitchell" -DesiredStatus SHOWNOACTIVATE ; Set-WindowPosition -ProcessName eqgame -CommandLineText 'emmitchell' -X -3 -Y 0 -Width 1646 -Height 730}



if ((Get-WmiObject Win32_Process -Filter "CommandLine like '%excruciator1'") -ne $NULL)
{Set-WindowStatus -ProcessName eqgame -CommandLineText "excruciator1" -DesiredStatus SHOWNOACTIVATE ; Set-WindowPosition -ProcessName eqgame -CommandLineText 'excruciator1' -X -1643 -Y 0 -Width 1646 -Height 730}

if ((Get-WmiObject Win32_Process -Filter "CommandLine like '%excruciator2'") -ne $NULL)
{Set-WindowStatus -ProcessName eqgame -CommandLineText "excruciator2" -DesiredStatus SHOWNOACTIVATE ; Set-WindowPosition -ProcessName eqgame -CommandLineText 'excruciator2' -X -1643 -Y 353 -Width 1646 -Height 730}

if ((Get-WmiObject Win32_Process -Filter "CommandLine like '%excruciator3'") -ne $NULL)
{Set-WindowStatus -ProcessName eqgame -CommandLineText "excruciator3" -DesiredStatus SHOWNOACTIVATE ; Set-WindowPosition -ProcessName eqgame -CommandLineText 'excruciator3' -X -3 -Y 353 -Width 1646 -Height 730}

if ((Get-WmiObject Win32_Process -Filter "CommandLine like '%excruciator4'") -ne $NULL)
{Set-WindowStatus -ProcessName eqgame -CommandLineText "excruciator4" -DesiredStatus SHOWNOACTIVATE ; Set-WindowPosition -ProcessName eqgame -CommandLineText 'excruciator4' -X 277 -Y 353 -Width 1646 -Height 730}

if ((Get-WmiObject Win32_Process -Filter "CommandLine like '%excruciator5'") -ne $NULL)
{Set-WindowStatus -ProcessName eqgame -CommandLineText "excruciator5" -DesiredStatus SHOWNOACTIVATE ; Set-WindowPosition -ProcessName eqgame -CommandLineText 'excruciator5' -X 277 -Y 0 -Width 1646 -Height 730}

if ((Get-WmiObject Win32_Process -Filter "CommandLine like '%excruciator6'") -ne $NULL)
{Set-WindowStatus -ProcessName eqgame -CommandLineText "excruciator6" -DesiredStatus SHOWNOACTIVATE ; Set-WindowPosition -ProcessName eqgame -CommandLineText 'excruciator6' -X -3 -Y 0 -Width 1646 -Height 730}

