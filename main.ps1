function main {
  $toolsToInstall = @(
    "Microsoft.VisualStudioCode"
    "Microsoft.WindowsTerminal"
    "Zen-Team.Zen-Browser"
    "Discord.Discord"
    "Valve.Steam"
    "ElectronicArts.EADesktop"
    "EpicGames.EpicGamesLauncher"
    "Ubisoft.Connect"
    "Blizzard.Battlenet"
    "Spotify.Spotify"
    "RODE.Rode-Central"
    "Nextcloud.NextcloudDesktop"
    "Logitech.GHUB"
    "7zip.7zip"
    "Google.Chrome"
    "Git.Git"
    "DebaucheeOpenSourceGroup.Barrier"
    "NexusMods.Vortex"
    "PrismLauncher.PrismLauncher"
    "VideoLAN.VLC"
    "LizardByte.Sunshine"
    "Unity.UnityHub"
    "GoodGameMods.Minion"
    "TeamSpeakSystems.TeamSpeakClient"
    "OpenRGB.OpenRGB"
    "Bitwarden.Bitwarden"
    "goatcorp.XIVLauncher"
    "Rainmeter.Rainmeter"
  )
  foreach ($tool in $toolsToInstall) {
    winget install --force --disable-interactivity --accept-package-agreements -e --id=$tool
  }
}

main
