function main {
  $toolsToInstall = @(
    "Python.Python.3.13"
    "Microsoft.VisualStudioCode"
    "Microsoft.WindowsTerminal"
    "Microsoft.PowerToys"
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
    "Logitech.GHUB"
    "Logitech.LogiTune"
    "Obsidian.Obsidian"
    "Mozilla.Thunderbird"
    "7zip.7zip"
    "Google.Chrome"
    "cinnyapp.cinny-desktop"
    "Git.Git"
    "JetBrains.Toolbox"
    "Google.Chrome"
    "Neovim.Neovim"
  )
  foreach ($tool in $toolsToInstall) {
    winget install --force --disable-interactivity --accept-package-agreements -e --id=$tool
  }

  wsl --install -d Ubuntu
}

main
