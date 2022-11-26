# Neovim Configuration

This Neovim config is based on [Josean Martinez's Config](https://www.youtube.com/watch?v=vdn_pKJUda8) and [ThePrimeagen's Config](https://www.youtube.com/watch?v=DogKdiRx7ls) and tweaked to my liking.

## Installation

### Windows

1. Install git bash
  [Git Bash](https://gitforwindows.org/)
2. Install Windows Terminal
  [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701?hl=de-de&gl=de)
3. Install nerdfont
  [CascadiaCode (VSCode Font)](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/CascadiaCode.zip)
4. Add Git Bash Profile to Windows Terminal
  - Settings => Add New Profile
  - New Empty Profile
  - Name "Git Bash"
  - Command Line "C:\Program Files\Git\bin\bash.exe"
  - Additional Settings => Appearance => Font Face "CascaydiaCove Nerd Font Mono"
5. Install Chocolatey using PowerShell as admin
  `Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))`
6. Install neovim
  `choco install neovim`
7. Go to AppData dir
  `cd ~/AppData/Local`
8. Paste `nvim` folder to there


also:
npm install -g tree-sitter-cli
choco install mingw
refreshenv in cmd
