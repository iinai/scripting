$dirCount = (Get-ChildItem | Measure-Object).Count
$location = Get-Location

Write-Host "$dirCount files found at $location"