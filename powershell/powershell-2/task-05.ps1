param (
    [string]$computer = "192.168.1.1",
    [int]$tries = 1
)

Write-Host("I will ping $computer $tries, okay?")

$permission = [string](Read-Host("[Y/n]"))

if ($permission -like "Y"){
    for ($i = 0; $i -lt $tries; $i++)
        {Write-output("Try " + ($i + 1) + " to ping: " + $computer)}
}
elseif ($permission -like "n"){
    {Permission denied}
}
else {
    {Permission denied}
}