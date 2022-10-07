$date = (Get-Date).ToString('dd.MM.yyyy')
$time = Get-Date -Format HH:mm
Write-Host "Today is $date and time is $time"

$loopCount = 0

Do { 
    $file = [string](Read-Host("Give a file name, press enter to quit"))
    if ($file -like ""){
        break
    }
    $path = Join-Path $HOME $file
    New-Item $path -ItemType File | Out-Null
    $datetime = "Today is $date and time is $time"
    Add-Content $path -Value $datetime
    $loopCount ++
}
Until ($file -like "")

Write-Host "$loopCount files created succesfully"

