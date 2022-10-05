function Get-FiluInfo2 {
    param (
        [String] $extension = "unknown"
    )
    Get-ChildItem $HOME -Filter *.txt | Select-Object Name, Length, LastWriteTime
}