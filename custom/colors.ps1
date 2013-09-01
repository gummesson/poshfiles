# colors.ps1 (D:\Git\kapow\custom\colors.ps1)

# == Colors ====================================================================
#
#  Tests and display all of the available colors in the console.
#
# ==============================================================================

# == Functions =================================================================

Function Test-Colors {
  $Colors = ("Black", "DarkBlue", "DarkGreen", "DarkCyan",
             "DarkRed", "DarkMagenta", "DarkYellow", "Gray",
             "DarkGray", "Blue", "Green", "Cyan",
             "Red", "Magenta", "Yellow", "White")
  ForEach ($Color in $Colors) {
    Write-Host " $Color " -ForegroundColor White -BackgroundColor $Color
  }
}
