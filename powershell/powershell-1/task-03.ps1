$firstInt = Read-Host "Give the first number"
$secondInt = Read-Host "Give the second number"

$firstInt = [int]($firstInt)
$secondInt = [int]($secondInt)

$sum = $firstInt + $secondInt
$subtraction = $firstInt - $secondInt
$multiplication = $firstInt * $secondInt
$division = $firstInt / $secondInt

Write-Host "Sum is $sum"
Write-Host "Subtraction is $subtraction"
Write-Host "Multiplication is $multiplication"
Write-Host "Division is $division"