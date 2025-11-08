<div align="center">

<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=200&section=header&text=windots&fontSize=100&fontAlignY=35&animation=twinkling&fontColor=gradient"/>

[![Typing SVG](https://readme-typing-svg.demolab.com?font=JetBrains+Mono&weight=600&size=28&duration=4000&pause=1000&color=CBA6F7&center=true&vCenter=true&multiline=true&repeat=true&width=900&height=120&lines=%F0%9F%8C%BE+Unix-like+Windows+Experience;%E2%9A%A1+Clean+%26+Customized;%F0%9F%8E%A8+Catppuccin+Theme+Everywhere)](https://git.io/typing-svg)

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=18&duration=2000&pause=500&color=8B949E&center=true&vCenter=true&width=800&lines=Windows+11+transformed+with+Unix-inspired+aesthetics;Tiling+window+manager+%2B+beautiful+status+bar;Complete+terminal+and+shell+customization" alt="Typing SVG" />

</div>

---

## 🎨 Preview

<div align="center">

*Preview images coming soon*

</div>

---

## 💎 Philosophy

```rust
// A clean Windows setup with essential tools
pub struct Windots {
    vision: &'static str,
    aesthetic: Theme,
    workflow: Workflow,
}

impl Windots {
    pub fn new() -> Self {
        Self {
            vision: "Unix-like experience on Windows",
            aesthetic: Theme::Catppuccin,
            workflow: Workflow::Minimal,
        }
    }
    
    pub fn tools(&self) -> Vec<&str> {
        vec![
            "📦 Scoop - Package management",
            "⌨️ Oh My Posh - Shell prompt",
            "🖼️ Fastfetch - System info display",
            "📝 VSCode - Code editing",
            "📓 Obsidian - Note taking",
            "🦊 Brave - Web browsing",
            "🎵 Spotify - Music streaming",
            "🎮 Steam - Gaming platform",
            "💬 Vencord - Discord client mod",
            "🔧 Git - Version control",
        ]
    }
}
```

> **Welcome to windots!** This repository contains my Windows dotfiles, designed to bring a clean, Unix-inspired aesthetic and workflow to Windows 11. If you love **r/unixporn** and want that experience on Windows, you're in the right place.

---

## ✨ Core Features

<div align="center">

### 🎯 What's Included

**⌨️ Windows Terminal** • **🎨 Catppuccin Theme** • **✨ Oh My Posh** • **🖼️ Fastfetch** • **📝 VSCode Config** • **🌐 Brave Browser** • **🎮 Steam Skinning** • **💬 Vencord Theming**

*Minimal, clean, productive — Unix vibes on Windows*

</div>

---

## 🌸 Tech Stack

<div align="center">

### 💻 Core Setup

<img src="https://skillicons.dev/icons?i=windows,linux,git,vscode,obsidian" height="50"/>

**Windows 11** • **WSL2** • **Scoop** • **Catppuccin** • **JetBrainsMono Nerd Font** • **Fastfetch**

</div>

---

## 📊 System Information

<div align="center">

### 🖥️ Current Configuration

```yaml
# System
OS: Windows 11 + WSL2
Package Manager: Scoop 📦
Theme: Catppuccin Mocha 🎨
Font: JetBrainsMono Nerd Font 🔤
Sysinfo: Fastfetch 🖼️

# Applications
Terminal: Windows Terminal ⌨️
Shell: PowerShell + Oh My Posh 🎨
Editor: VSCode 📝
Notes: Obsidian 📓
Browser: Brave 🦊
Chat: Discord + Vencord 💬
Music: Spotify 🎵
Gaming: Steam 🎮
Version Control: Git 🔧
```

</div>

---

## 🚀 Quick Start

### 📦 Prerequisites

```powershell
# Install Scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex

# Install Git
scoop install git

# Add required buckets
scoop bucket add extras
scoop bucket add nerd-fonts
scoop bucket add games

# Install JetBrainsMono Nerd Font
scoop install JetBrainsMono-NF

# Install Windows Terminal
scoop install windows-terminal

# Install Fastfetch
scoop install fastfetch

# Install other tools
scoop install vscode obsidian brave steam

# Install Oh My Posh
winget install JanDeDobbeleer.OhMyPosh --source winget

# Install Discord (standard installation for Vencord compatibility)
winget install Discord.Discord
```

### ⚡ Installation

> **⚠️ Warning:** Backup your existing configs before proceeding!

```powershell
# Clone the repository
git clone https://github.com/0x0Dx/windots.git
cd windots

# Copy configurations manually as needed
# See setup guide below
```

---

## 🔧 Detailed Setup Guide

<details>
<summary><b>🖼️ Fastfetch Configuration</b></summary>

<br>

**Copy Configuration**
```powershell
# Fastfetch config location
windots/.config/fastfetch/config.jsonc → %USERPROFILE%\.config\fastfetch\config.jsonc

# Or create the directory and copy
mkdir -p $env:USERPROFILE\.config\fastfetch
Copy-Item windots\.config\fastfetch\config.jsonc $env:USERPROFILE\.config\fastfetch\
```

**Run Fastfetch**
```powershell
# Just run
fastfetch

# Or with custom config
fastfetch --config $env:USERPROFILE\.config\fastfetch\config.jsonc
```

**Add to PowerShell Profile (Optional)**
```powershell
# Add to your profile to run on terminal startup
# Edit: $PROFILE
fastfetch
```

**Catppuccin Theme for Fastfetch**

The config uses Catppuccin Mocha colors:
- Rosewater: `#f5e0dc`
- Flamingo: `#f2cdcd`
- Pink: `#f5c2e7`
- Mauve: `#cba6f7`
- Red: `#f38ba8`
- Maroon: `#eba0ac`
- Peach: `#fab387`
- Yellow: `#f9e2af`
- Green: `#a6e3a1`
- Teal: `#94e2d5`
- Sky: `#89dceb`
- Sapphire: `#74c7ec`
- Blue: `#89b4fa`
- Lavender: `#b4befe`

</details>

<details>
<summary><b>📝 VSCode Configuration</b></summary>

<br>

**Copy Configuration**
```powershell
# For Scoop-installed VSCode (portable mode)
windots/.config/vscode/settings.json → %USERPROFILE%\scoop\apps\vscode\current\data\user-data\User\settings.json

# Standard installation path (if not using Scoop)
windots/.config/vscode/settings.json → %APPDATA%\Code\User\settings.json

# Find your path with:
# Open VSCode → Ctrl+Shift+P → "Preferences: Open User Settings (JSON)"
```

**Install Recommended Extensions**
- Catppuccin Theme
- Material Icon Theme
- Your favorite extensions

**Restart VSCode** to load settings.

</details>

<details>
<summary><b>🌐 Brave Browser</b></summary>

<br>

**Apply Catppuccin Theme**
1. Open Brave Settings
2. Go to Appearance → Theme
3. Click "Get themes" or visit Chrome Web Store
4. Search for "Catppuccin"
5. Install and apply

**Custom New Tab Page**
- Install a custom startpage extension
- Or set custom homepage with your own HTML

</details>

<details>
<summary><b>📓 Obsidian Setup</b></summary>

<br>

**Install Theme**
- Open Obsidian Settings
- Go to Appearance → Themes
- Search for "Catppuccin"
- Apply Catppuccin Mocha theme

**Copy Snippets** (if any)
```
windots/.config/obsidian/snippets/ → <Vault>/.obsidian/snippets/
```

</details>

<details>
<summary><b>🎵 Spotify Theming</b></summary>

<br>

**Install Spicetify**
```powershell
# Install via Scoop
scoop install spicetify-cli

# Install Spicetify Marketplace for themes
Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.ps1" | Invoke-Expression

# Apply Catppuccin theme via Marketplace
# Open Spotify → Spicetify Marketplace → Themes → Search "Catppuccin" → Install
```

**Or manually apply theme:**
```powershell
spicetify config current_theme catppuccin
spicetify config color_scheme mocha
spicetify apply
```

</details>

<details>
<summary><b>💬 Vencord Setup</b></summary>

<br>

**Install Vencord**
```powershell
# Install Discord directly (not via Scoop - Vencord needs standard path)
# Download from: https://discord.com/download
# Or use winget:
winget install Discord.Discord

# Install Vencord from official website
# Visit: https://vencord.dev/download
# Download VencordInstaller.exe and run it
# Select "Install Vencord" and follow the prompts
```

**Apply Catppuccin Theme**
1. Open Discord
2. Click User Settings (gear icon)
3. Scroll to Vencord → Themes
4. Click "Online Themes"
5. Search for "Catppuccin"
6. Click "Apply" on Catppuccin Mocha

**Or manually add theme:**
1. User Settings → Vencord → Themes
2. Click "Open Themes Folder"
3. Copy Catppuccin theme CSS file
4. Enable in Vencord themes list

**Theme URL:**
```
https://catppuccin.github.io/discord/dist/catppuccin-mocha.theme.css
```

**Recommended Plugins**

Enable these plugins in User Settings → Vencord → Plugins:

*Interface & UX*
- **Better Role Context** - Improved role display in context menus
- **BetterUploadButton** - Enhanced file upload interface
- **ShowHiddenChannels** - See hidden channels (read-only)
- **PinDMs** - Pin DMs and group chats to the top
- **MessageLogger** - Logs deleted and edited messages
- **ClearURLs** - Removes tracking from URLs
- **CopyUserURLs** - Copy user profile URLs easily

*Media & Embeds*
- **ImageZoom** - Click to zoom images
- **VoiceMessages** - Send voice messages
- **ViewIcons** - View server and user icons in full size
- **BetterGifAltText** - Better alt text for GIFs
- **PermissionsViewer** - View permissions for roles and users

*Privacy & Security*
- **No Track** - Disable Discord's tracking
- **FakeNitro** - Use emotes and stickers without Nitro
- **AnonymiseFileNames** - Anonymize uploaded file names
- **NoDevtoolsWarning** - Remove devtools warning

*Functionality*
- **MessageLinkEmbeds** - Embed message links
- **SilentTyping** - Hide typing indicator
- **BiggerStreamPreview** - Larger stream preview thumbnails
- **QuickReply** - Quick reply to messages
- **LastFMRichPresence** - Show Last.fm activity

*Customization*
- **BetterNotesBox** - Improved notes textarea
- **ReviewDB** - User review system integration
- **ServerProfile** - Enhanced server profiles
- **GameActivityToggle** - Quickly toggle game activity

**Plugin Configuration Tips:**
- Customize MessageLogger to your preferences
- Configure FakeNitro emoji settings
- Set up LastFM integration if you use it
- Adjust ImageZoom zoom levels in settings

</details>

<details>
<summary><b>>_ Terminal Setup</b></summary>

<br>

**Windows Terminal**
```
windots/.config/terminal/settings.json → %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
```

**OhMyPosh**
```
oh-my-posh init pwsh --config "$env:USERPROFILE\Documents\windots\.config\ohmyposh\config.toml" | Invoke-Expression
```

**PowerShell Profile**
```
windots/.config/powershell/profile.ps1 → %USERPROFILE%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
```

**Restart Terminal** to apply changes.

</details>

<details>
<summary><b>🔧 Git Configuration</b></summary>

<br>

**Set up your identity**
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

</details>

---

## ⌨️ Keybindings

<div align="center">

*Keybindings will be documented as the window manager is configured*

</div>

---

## 🖼️ Gallery

<div align="center">

*Screenshots will be added as the setup progresses*

</div>

---

## 📌 Roadmap

```typescript
interface Roadmap {
  current: string[];
  planned: string[];
}

const todo: Roadmap = {
  current: [
    "📝 VSCode configuration",
    "🦊 Brave theming",
    "📓 Obsidian theming",
    "🎵 Spotify customization",
    "💬 Vencord themes",
    "🎮 Steam skinning",
    "🖼️ Fastfetch configuration",
  ],
  planned: [
    "🔧 Automated setup script",
    "📖 Detailed configuration guides",
    "🖼️ Screenshot gallery",
    "🔄 Easy update mechanism",
  ],
};
```

---

## 💬 Community

<div align="center">

### 🗨️ Discussion & Support

Have questions, ideas, or want to share your setup?

[![Discussions](https://img.shields.io/badge/Discussions-181717?style=for-the-badge&logo=github&logoColor=white&labelColor=101010)](https://github.com/0x0Dx/windots/discussions)
[![Issues](https://img.shields.io/badge/Issues-EA4A5A?style=for-the-badge&logo=github&logoColor=white&labelColor=101010)](https://github.com/0x0Dx/windots/issues)

> **⚠️ Note:** Use [Issues](https://github.com/0x0Dx/windots/issues) only for bugs. For everything else, use [Discussions](https://github.com/0x0Dx/windots/discussions)!

</div>

---

## 🙏 Credits & Inspiration

<div align="center">

Thanks to the amazing open-source community:

**[Catppuccin](https://catppuccin.com)** • **[Fastfetch](https://github.com/fastfetch-cli/fastfetch)** • **[r/unixporn](https://reddit.com/r/unixporn)** • **[r/desktops](https://reddit.com/r/desktops)**

*More credits will be added as tools and configs are integrated*

</div>

---

## 📊 Repository Stats

<div align="center">

![GitHub Stars](https://img.shields.io/github/stars/0x0Dx/windots?style=for-the-badge&color=CBA6F7&labelColor=101010&logo=github&label=STARS)
![GitHub Forks](https://img.shields.io/github/forks/0x0Dx/windots?style=for-the-badge&color=CBA6F7&labelColor=101010&logo=github&label=FORKS)
![GitHub Issues](https://img.shields.io/github/issues/0x0Dx/windots?style=for-the-badge&color=CBA6F7&labelColor=101010&logo=github&label=ISSUES)
![License](https://img.shields.io/github/license/0x0Dx/windots?style=for-the-badge&color=CBA6F7&labelColor=101010)

### ⭐ Star History

[![Star History Chart](https://api.star-history.com/svg?repos=0x0Dx/windots&type=Date&theme=dark)](https://star-history.com/#0x0Dx/windots&Date)

</div>

---

## 💵 Support

If you find this project helpful, consider supporting it:

<div align="center">

[![GitHub Sponsor](https://img.shields.io/badge/sponsor-30363D?style=for-the-badge&logo=GitHub-Sponsors&color=CBA6F7&logoColor=white&labelColor=101010)](https://github.com/sponsors/0x0Dx)
[![Buy Me A Coffee](https://img.shields.io/badge/-buy_me_a%C2%A0coffee-gray?style=for-the-badge&logo=buy-me-a-coffee&color=CBA6F7&logoColor=white&labelColor=101010)](https://buymeacoffee.com/0x0dx)

**Your support helps me maintain and improve this project!** 💖

</div>

---

## 📜 License

<div align="center">

```
MIT License

Copyright (c) 2025 0x0D

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
```

[![License](https://img.shields.io/github/license/0x0Dx/windots?style=for-the-badge&color=CBA6F7&labelColor=101010)](LICENSE)

</div>

---

<div align="center">

### 💭 Philosophy

*"Make Windows feel like home for Unix lovers."*

**— Aesthetics meet productivity —**

<br>

<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" width="600"/>

<br><br>

*Made with 💜 by [0x0D](https://github.com/0x0Dx)*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=150&section=footer"/>

</div>