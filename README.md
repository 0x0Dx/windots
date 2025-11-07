<div align="center">

<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=200&section=header&text=windots&fontSize=100&fontAlignY=35&animation=twinkling&fontColor=gradient"/>

[![Typing SVG](https://readme-typing-svg.demolab.com?font=JetBrains+Mono&weight=600&size=28&duration=4000&pause=1000&color=CBA6F7&center=true&vCenter=true&multiline=true&repeat=true&width=900&height=120&lines=%F0%9F%8C%BE+Unix-like+Windows+Experience;%E2%9A%A1+Clean+%26+Customized;%F0%9F%8E%A8+Catppuccin+Theme+Everywhere)](https://git.io/typing-svg)

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=18&duration=2000&pause=500&color=8B949E&center=true&vCenter=true&width=800&lines=Windows+11+transformed+with+Unix-inspired+aesthetics;Complete+terminal+and+shell+customization" alt="Typing SVG" />

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
            "📝 VSCode - Code editing",
            "📓 Obsidian - Note taking",
            "🦊 Brave - Web browsing",
            "🎵 Spotify - Music streaming",
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

**⌨️ Windows Terminal** • **🎨 Catppuccin Theme** • **📝 VSCode Config**

*Minimal, clean, productive — Unix vibes on Windows*

</div>

---

## 🌸 Tech Stack

<div align="center">

### 💻 Core Setup

<img src="https://skillicons.dev/icons?i=windows,linux,git,vscode,obsidian" height="50"/>

**Windows 11** • **WSL2** • **Scoop** • **Catppuccin** • **JetBrainsMono Nerd Font**

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

# Applications
Terminal: Windows Terminal ⌨️
Editor: VSCode 📝
Notes: Obsidian 📓
Browser: Brave 🦊
Music: Spotify 🎵
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

# Install JetBrainsMono Nerd Font
scoop install JetBrainsMono-NF

# Install other tools
scoop install vscode obsidian brave
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
<summary><b>🌐 Firefox Styling</b></summary>

<br>

**Enable userChrome**
1. Go to `about:config`
2. Set `toolkit.legacyUserProfileCustomizations.stylesheets` to `true`

**Copy CSS Files**
```
windots/.config/firefox/userChrome.css → <Profile Folder>/chrome/userChrome.css
windots/.config/firefox/userContent.css → <Profile Folder>/chrome/userContent.css
```

**Find profile folder:** `about:support` → "Profile Folder"

**Restart Firefox** for changes to take effect.

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
<summary><b>>_ Terminal Setup</b></summary>

<br>

**Windows Terminal**
```
windots/.config/terminal/settings.json → %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
```

**Restart Terminal** to apply changes.

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
    "🦊 Firefox styling",
    "📓 Obsidian theming",
    "🎵 Spotify customization",
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

**[Catppuccin](https://catppuccin.com)** • **[r/unixporn](https://reddit.com/r/unixporn)** • **[r/desktops](https://reddit.com/r/desktops)**

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