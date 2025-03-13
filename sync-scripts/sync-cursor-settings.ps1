param (
    [ValidateSet("to-dotfiles", "to-app")]
    [string]$Direction = "to-dotfiles"
)

$dotfilesPath = "$HOME\windows-dotfiles\cursor\settings.json"
$cursorPath = "$env:APPDATA\Cursor\User\settings.json"

if ($Direction -eq "to-dotfiles") {
    Copy-Item $cursorPath $dotfilesPath -Force
    Write-Output "✅ Copied Cursor IDE settings to windows-dotfiles."
} elseif ($Direction -eq "to-app") {
    Copy-Item $dotfilesPath $cursorPath -Force
    Write-Output "✅ Applied windows-dotfiles settings to Cursor IDE."
} else {
    Write-Output "❌ Unknown direction. Use 'to-dotfiles' or 'to-app'."
}
