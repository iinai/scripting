function Get-FiluInfo {
    Get-ChildItem $HOME | Select-Object Name, Length
}