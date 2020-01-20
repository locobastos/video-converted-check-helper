Import-Module 'D:\LiberKey\MyApps\AutoIT\AutoItX\AutoItX.psd1'
$MPC = "C:\Program Files\MPC-HC\mpc-hc64.exe"

$Original_Folder = 'C:\Users\JohnDoe\Videos\GoPro\Original'
$Converted_Folder = 'C:\Users\JohnDoe\Videos\GoPro\Converted'

$Timestamp = "00:07:00"
$LoopIteration = 1

Get-ChildItem -LiteralPath $Original_Folder | ForEach-Object {
    $Original_Numbering = "{0:0000}" -f $LoopIteration
    $Converted_Numbering = "{0:00}" -f $LoopIteration

    $Original_Filename = "GH01$($Original_Numbering).mp4"
    $Converted_Filename = "MyVacations$($Converted_Numbering).mp4"

    &$MPC "$($Original_Folder)\$Original_Filename" /startpos $Timestamp
    &$MPC "$($Converted_Folder)\$Converted_Filename" /startpos $Timestamp

    Wait-AU3Win -Title "$Original_Filename"
    Move-AU3Win -Title "$Original_Filename" -X 1930 -Y 10 -Width 1800 -Height 1030

    Wait-AU3Win -Title "$Converted_Filename"
    Move-AU3Win -Title "$Converted_Filename" -X 0 -Y 10 -Width 1800 -Height 1030

    Show-AU3WinActivate "Windows PowerShell"
    
    Pause

    Close-AU3Win -Title "$Original_Filename"
    Close-AU3Win -Title "$Converted_Filename"
    
    $LoopIteration += 1
}
