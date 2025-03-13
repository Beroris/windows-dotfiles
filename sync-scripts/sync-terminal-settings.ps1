param (
    [ValidateSet("to-dotfiles", "to-terminal")]
    [string]$Direction = "to-dotfiles"
)

$dotfilesPath = "$HOME\windows-dotfiles\windows-terminal\settings.json"
$terminalPath = "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"

if ($Direction -eq "to-dotfiles") {
    Copy-Item $terminalPath $dotfilesPath -Force
    Write-Output "✅ Copied Windows Terminal settings to windows-dotfiles."
} elseif ($Direction -eq "to-terminal") {
    Copy-Item $dotfilesPath $terminalPath -Force
    Write-Output "✅ Applied windows-dotfiles settings to Windows Terminal."
}
