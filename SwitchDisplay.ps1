enum DisplayState {
  Desktop
  Television
}

function ChangeDisplays {
  param (
    [DisplayState]$State
  )

  switch ($State) {
    ([DisplayState]::Desktop) {
      Write-Output "Switching to Desktop layout"
      Enable-Display -DisplayId 1, 2
      Set-DisplayPrimary -DisplayId 2
      Disable-Display -DisplayId 3
    }
    ([DisplayState]::Television) {
      Write-Output "Switching to TV layout"
      Enable-Display -DisplayId 3
      Set-DisplayPrimary -DisplayId 3
      Disable-Display -DisplayId 1, 2
    }
    default {
      Write-Output "Unknown display state"
    }
  }
}

ChangeDisplays $($args[0])

