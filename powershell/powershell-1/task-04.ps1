$names = @('Nakki', 'Rytky', 'Velho', 'Pikku-Musta', 'Pullamo', 'Nuuka', 'Kouta')

$count = $names.Count
$firstPet = $names[0]
$lastPet = $names[$count - 1]

Write-Host "Olipa kerran $count lemmikkiä:"
$names
Write-Host "Esimmäinen oli $firstPet ja nykyinen on $lastPet"