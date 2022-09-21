param (
    [string]$var1 = "unknown",
    [string]$var2 = "unknown",
    [string]$var3 = "unknown"
)

$wordList = $var1, $var2, $var3
$sorted = $wordList | Sort-Object { $_.length }

Write-Output("Parameters are: $var1, $var2 and $var3")
Write-Host("Your ordered words are: $sorted")