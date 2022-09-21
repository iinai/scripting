$dirCount = ($HOME | Get-ChildItem | Measure-Object).Count
$homeDirectory = $HOME

Write-Host "$dirCount files found at $homeDirectory"