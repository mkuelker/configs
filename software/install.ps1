# Install Chocolaty
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Git and Linux 
winget install -e --id Git.Git;
wsl --install
wsl --install -d Ubuntu

# Everything Else
winget install --exact --id Microsoft.AzureCLI
winget install -e --id Microsoft.DotNet.SDK.7
winget install -e --id Anaconda.Anaconda3;
winget install -e --id Obsidian.Obsidian;
winget install -e --id OBSProject.OBSStudio;
winget install -e --id dotPDNLLC.paintdotnet;
winget install -e --id Microsoft.OneDrive;
winget install -e --id Microsoft.PowerBI;
winget install -e --id Microsoft.Office;
winget install -e --id Postman.Postman;
winget install -e --id RProject.R;
winget install -e --id Microsoft.VisualStudio.2022.Community.Preview;
winget install -e --id Microsoft.VisualStudioCode;
winget install -e --id RStudio.RStudio.Professional;
winget install -e --id SumatraPDF.SumatraPDF;
winget install -e --id Skillbrains.Lightshot;
winget install -e --id Meltytech.Shotcut;
winget install -e --id Microsoft.SQLServerManagementStudio;
winget install -e --id GitHub.GitHubDesktop;
winget install -e --id Microsoft.RemoteDesktopClient;
winget install -e --id Microsoft.OneDrive.Enterprise;
winget install -e --id Neovim.Neovim;
winget install --id Microsoft.PowerToys --source winget
winget install -e --id Docker.DockerDesktop
winget install -e --id Google.Chrome
winget install -e --id OpenJS.NodeJS
winget install -e --id Alacritty.Alacritty

# dbeaver
choco install dbeaver