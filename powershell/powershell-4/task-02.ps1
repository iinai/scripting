function Get-FiluInfo2 {
    param (
        [String] $extension = "unknown"
    )
    Get-ChildItem $HOME -Filter *$extension | Select-Object Name, Length, LastWriteTime
}