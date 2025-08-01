# Set paths
$repoRoot = "$(Get-Location)\configs"
$fontSource = "$repoRoot\fonts\JetBrainsMono"
$alacrittyConfigSource = "$repoRoot\alacritty\alacritty.toml"
$alacrittyConfigDest = "$env:APPDATA\alacritty"

# Install Nerd Font (JetBrains Mono)
Write-Output "Installing JetBrains Mono Nerd Font..."
Get-ChildItem "$fontSource\*.ttf" | ForEach-Object {
    Copy-Item $_.FullName -Destination "$env:WINDIR\Fonts"
    $fontReg = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts"
    $fontName = $_.BaseName
    New-ItemProperty -Path $fontReg -Name "$fontName (TrueType)" -PropertyType String -Value $_.Name -Force | Out-Null
}
Write-Output "Font installation complete."

# Set up Alacritty config
if (!(Test-Path $alacrittyConfigDest)) {
    New-Item -ItemType Directory -Path $alacrittyConfigDest | Out-Null
}
Copy-Item -Path $alacrittyConfigSource -Destination "$alacrittyConfigDest\alacritty.toml" -Force

Write-Output "Alacritty config installed at $alacrittyConfigDest"
