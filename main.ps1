function main {
  toolsToInstall=(
    "Python.Python.3.13"
    "Microsoft.VisualStudioCode"
    "Microsoft.WindowsTerminal"
    "Zen-Team.Zen-Browser"
    "Discord.Discord"
    "Valve.Steam"
    "ElectronicArts.EADesktop"
    "EpicGames.EpicGamesLauncher"
    "Ubisoft.Connect"
    "Blizzard.Battlenet"
    "KDE.Krita"
    "OBSProject.OBSStudio"
  )
  forearch ($tool in $toolsToInstall) {
    winget install --force --disable-interactivity -e --id=$tool
  }
  wsl --install -d Ubuntu
}
