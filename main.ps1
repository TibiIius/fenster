function main {
  $toolsToInstall = @(
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
    "Spotify.Spotify"
    "RODE.Rode-Central"
    "Nextcloud.NextcloudDesktop"
    "Docker.DockerDesktop"
  )
  foreach ($tool in $toolsToInstall) {
    winget install --force --disable-interactivity --accept-package-agreements -e --id=$tool
  }

  wsl --install -d Ubuntu
}

main
