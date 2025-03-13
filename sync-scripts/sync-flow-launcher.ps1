$dotfilesPath = "$HOME\windows-dotfiles\flow-launcher\settings.json"
$flowPath = "$env:APPDATA\FlowLauncher\Settings\Settings.json"

param (
    [ValidateSet("to-dotfiles", "to-app")]
    [string]$Direction = "to-dotfiles"
)

if ($Direction -eq "to-dotfiles") {
    Copy-Item $flowPath $dotfilesPath -Force
    Write-Output "✅ Copied Flow Launcher settings to windows-dotfiles."
} elseif ($Direction -eq "to-app") {
    Copy-Item $dotfilesPath $flowPath -Force
    Write-Output "✅ Applied windows-dotfiles settings to Flow Launcher."
}

