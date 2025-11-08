# Initialize Oh My Posh
oh-my-posh init pwsh --config 'C:\Users\oxod\Documents\windots\.config\ohmyposh\config.toml' | Invoke-Expression

# Import Terminal Icons
Import-Module -Name Terminal-Icons

# Set up tab completion
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Set up history search with arrow keys
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# Alias for clearing the console
Set-Alias -Name c -Value clear