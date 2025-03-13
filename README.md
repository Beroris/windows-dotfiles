# Windows Dotfiles

This repository contains my personal configuration files (dotfiles) for various applications on Windows. It includes settings for Windows Terminal, Cursor IDE, and Flow Launcher, among others. The goal is to maintain a consistent and efficient development environment across different machines.

## Structure

windows-dotfiles/
├── cursor/
│ └── settings.json # Configuration for Cursor IDE
├── flow-launcher/
│ └── settings.json # Configuration for Flow Launcher
└── windows-terminal/
└── settings.json # Configuration for Windows Terminal
└── sync-scripts/
├── sync-terminal-settings.ps1 # Script to sync Windows Terminal settings
├── sync-flow-launcher.ps1 # Script to sync Flow Launcher settings
└── sync-cursor-settings.ps1 # Script to sync Cursor IDE settings

## Installation

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/beroris/windows-dotfiles.git
    cd windows-dotfiles
    ```

2. Run the sync scripts to apply the settings:
  - To sync Windows Terminal settings to app:
    ```powershell
    .\sync-scripts\sync-terminal-settings.ps1 to-terminal
    ```
  - To sync Flow Launcher settings to app:
    ```powershell
    .\sync-scripts\sync-flow-launcher.ps1 to-app
    ```
  - To sync Cursor IDE settings to app:
    ```powershell
    .\sync-scripts\sync-cursor-settings.ps1 to-app
    ```
  - To sync all settings:
    ```powershell
    .\sync-scripts\sync-all.ps1
    ```
3. After changing settings run .
  - To sync Windows Terminal settings to repo:
  ```powershell
  .\sync-scripts\sync-terminal-settings.ps1 to-dotfiles
  ```
  - To sync Flow Launcher settings to repo:
  ```powershell
  .\sync-scripts\sync-flow-launcher.ps1 to-dotfiles
  ```
  - To sync Cursor IDE settings to repo:
  ```powershell
  .\sync-scripts\sync-cursor-settings.ps1 to-dotfiles
  ```


### TO ADD:
- Autohotkey
- Git global config maybe could be a link to the gitconfig from wsl config.
- Cursor Extensions list
