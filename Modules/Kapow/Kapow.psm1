# Kapow.psm1 ($HOME\Documents\WindowsPowerShell\Modules\Kapow\Kapow.psm1)

# == Kapow! ====================================================================
#
#  A punchy PowerShell framework
#
# ==============================================================================

# Don't import Kapow! twice
If (Get-Module Kapow) { Return }

# == User settings =============================================================

# The default settings for everything
$KapowDefaultPath = "D:\Git\kapow"
$KapowDefaultHome = "D:\"
$KapowDefaultTheme = "crunchier"
$KapowDefaultEditor = "gvim"
$KapowEnableGitColors = $true
$KapowDefaultPlugins = ("cd", "compass", "compass-tab", "chocolatey",
                        "chocolatey-tab", "edit", "files", "git", "git-tab",
                        "jekyll-tab", "jump", "lwd", "rake", "rubygems-tab",
                        "sudo", "symlink", "utils", "web")

# == Configuration settings ====================================================

# Customize the prompt
. "$KapowDefaultPath\themes\$KapowDefaultTheme.ps1"

# Set additional paths
$KapowCachePath = "$KapowDefaultPath\cache"
$KapowCustomPath = "$KapowDefaultPath\custom"

# Import Kapow! plugins
ForEach ($Plugin in $KapowDefaultPlugins) {
  . "$KapowDefaultPath\plugins\$Plugin.ps1"
}

# Import custom plugins
If (Test-Path -Path "$KapowCustomPath") {
  Get-ChildItem -Path "$KapowCustomPath" -Name -Include "*.ps1" |
  ForEach {
    . "$KapowCustomPath\$_"
  }
}

# Enable Git colors
If ($KapowEnableGitColors -eq $true) {
  $env:TERM = 'cygwin'
  $env:LESS = 'FRSX'
}

# == Exports ===================================================================

# Export all the sourced function and aliases
Export-ModuleMember -Function * -Alias *
