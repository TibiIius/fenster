enum ThemeState {
  Light
  Dark
}

function ChangeTheme {
  param (
    [ThemeState]$State
  )

  switch ($State) {
    ([ThemeState]::Light) {
      Write-Output "Switching to Light theme"
      Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Value 1
      Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 1
    }
    ([ThemeState]::Dark) {
      Write-Output "Switching to Dark theme"
      Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Value 0
      Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 0
    }
    default {
      Write-Output "Unknown theme state"
    }
  }
}

ChangeTheme $($args[0])
