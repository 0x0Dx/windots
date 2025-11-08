# windots

> Modern Windows configuration with Unix-inspired workflow

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Catppuccin](https://img.shields.io/badge/Theme-Catppuccin-CBA6F7)](https://catppuccin.com)

Making Windows feel less like Windows and more like a proper development environment. Catppuccin-themed throughout for consistency.

## what's this

dotfiles for windows 11. got tired of default everything so i themed it all. if you like r/unixporn vibes but stuck on windows, this might be for you.

**current setup:**
- windows terminal + oh my posh
- catppuccin mocha everywhere
- scoop for package management
- vscode, brave, obsidian, spotify, discord
- fastfetch because neofetch is dead
- trying to keep it minimal but functional

## stuff you need

- windows 11 (probably works on 10 but untested)
- powershell 7+
- some free time
- willingness to break stuff and fix it

## getting started

### install the basics

```powershell
# scoop first
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex

# buckets
scoop bucket add extras
scoop bucket add nerd-fonts
scoop bucket add games

# essentials
scoop install git windows-terminal fastfetch JetBrainsMono-NF

# oh my posh
winget install JanDeDobbeleer.OhMyPosh --source winget
```

### grab the repo

```powershell
git clone https://github.com/0x0Dx/windots.git $env:USERPROFILE\windots
cd $env:USERPROFILE\windots
```

now just copy configs manually. yeah i should make a script but haven't gotten around to it yet.

## configs

### terminal stuff

**windows terminal**

just copy the settings file:
```powershell
$terminalPath = "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"
Copy-Item .config\terminal\settings.json $terminalPath\settings.json
```

**oh my posh**

add to your powershell profile (`notepad $PROFILE`):
```powershell
oh-my-posh init pwsh --config "$env:USERPROFILE\windots\.config\ohmyposh\config.toml" | Invoke-Expression
```

**fastfetch**

```powershell
mkdir $env:USERPROFILE\.config\fastfetch -Force
Copy-Item .config\fastfetch\config.jsonc $env:USERPROFILE\.config\fastfetch\
```

add `fastfetch` to your profile if you want it on startup. i like it.

### dev tools

**vscode**

for scoop install:
```powershell
Copy-Item .config\vscode\settings.json $env:USERPROFILE\scoop\apps\vscode\current\data\user-data\User\settings.json
```

for normal install:
```powershell
Copy-Item .config\vscode\settings.json $env:APPDATA\Code\User\settings.json
```

extensions i use:
- catppuccin theme (duh)
- material icon theme
- gitlens
- whatever else you need

**git**

```powershell
Copy-Item .config\git\.gitconfig $env:USERPROFILE\.gitconfig
Copy-Item .config\git\.gitignore_global $env:USERPROFILE\.gitignore_global

# don't forget to set your actual info
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```

### apps

**obsidian**

settings → appearance → themes → search catppuccin → profit

**spotify with spicetify**

```powershell
scoop install spicetify-cli

# marketplace for easy themes
Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.ps1" | Invoke-Expression

# then just pick catppuccin from marketplace
```

or manually:
```powershell
spicetify config current_theme catppuccin
spicetify config color_scheme mocha
spicetify apply
```

**discord + vencord**

```powershell
# install discord the normal way (not scoop, vencord needs standard path)
winget install Discord.Discord

# get vencord from https://vencord.dev/download
# run the installer, it's straightforward
```

then in discord:
- settings → vencord → themes → online themes
- search catppuccin
- apply mocha variant

plugins i actually use:
- better role context
- imagezoom
- messagelogger (controversial but useful)
- no track
- quickreply
- fakenitro (emotes without paying)

## file structure

```
windots/
├── .config/
│   ├── fastfetch/config.jsonc
│   ├── git/
│   ├── ohmyposh/
│   ├── powershell/
│   ├── terminal/
│   └── vscode/
└── README.md
```

pretty simple. might add more later.

## issues i've run into

**execution policy nonsense**
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

**oh my posh not loading**

make sure it's actually in your profile. check with:
```powershell
Get-Content $PROFILE
```

**fonts look weird**

you need a nerd font. i use jetbrainsmono. install it then set it in windows terminal settings.

**scoop being weird**

usually just:
```powershell
scoop update
scoop update *
```

## catppuccin colors

using mocha variant because dark themes or bust:

- rosewater: `#f5e0dc`
- pink: `#f5c2e7`
- mauve: `#cba6f7` (the good purple)
- red: `#f38ba8`
- yellow: `#f9e2af`
- green: `#a6e3a1`
- blue: `#89b4fa`

## todo

- [ ] make actual install script
- [ ] maybe add window manager (komorebi looks cool)
- [ ] screenshots when i feel like it
- [ ] more app configs probably
- [ ] backup script would be nice

## credits

- [catppuccin](https://catppuccin.com) for the theme
- [fastfetch](https://github.com/fastfetch-cli/fastfetch) because it's fast
- r/unixporn for inspiration
- everyone making these tools

## contributing

if you want to improve something, go for it. just make a pr. no strict rules, just don't break stuff intentionally.

## license

MIT. do whatever you want with it.

---

made by [0x0D](https://github.com/0x0Dx) because default windows is boring

*not sponsored by catppuccin but should be*