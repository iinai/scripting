function Get-FiluInfo {
    Get-ChildItem $folder | Select-Object Name, Length
}