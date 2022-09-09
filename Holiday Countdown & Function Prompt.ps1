function Prompt { "Would you like to play a game ? > " }
Get-Date
Echo "
The number of days until Christmas:"
$result = [DateTime] "12/25/2022" - [DateTime]::Now
$result.Days

Echo "
The number of days until the end of 2022:"
$result = [DateTime] "12/31/2022" - [DateTime]::Now
$result.Days

Echo "
The number of days you have survived:"
$result = [DateTime]::Now - [DateTime] "08/01/2006"
$result.Days

