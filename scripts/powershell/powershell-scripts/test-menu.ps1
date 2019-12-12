function mainMenu {
    $mainMenu = 'X'
    while($mainMenu -ne ''){
        Clear-Host
        Write-Host "`n`t`t YouTube Downloader Script`n"
        Write-Host "Main Menu"
        Write-Host -NoNewline "`n["; Write-Host -NoNewline "1"; Write-Host -NoNewline "]"; `
            Write-Host " Audio"
        Write-Host -NoNewline "`n["; Write-Host -NoNewline "2"; Write-Host -NoNewline "]"; `
            Write-Host " Video"
        $mainMenu = Read-Host "`nSelection (leave blank to quit)"
        # Launch submenu1
        if($mainMenu -eq 1){
            subMenu1
        }
        # Launch submenu2
        if($mainMenu -eq 2){
            subMenu2
        }
    }
}

function subMenu1 {
    $subMenu1 = 'X'
    while($subMenu1 -ne ''){
        Clear-Host
        Write-Host "`n`t`t YouTube Downloader Script `n"
        Write-Host "Audio Download Options"
        Write-Host -NoNewline "`n["; Write-Host -NoNewline "1"; Write-Host -NoNewline "]"; `
            Write-Host " Say hello"
        Write-Host -NoNewline "`n["; Write-Host -NoNewline "2"; Write-Host -NoNewline "]"; `
            Write-Host " Say goodbye"
        $subMenu1 = Read-Host "`nSelection (leave blank to quit)"
        $timeStamp = Get-Date -Uformat %m%d%y%H%M
        # Option 1
        if($subMenu1 -eq 1){
            Write-Host 'Hello!'
            # Pause and wait for input before going back to the menu
            Write-Host "`nScript execution complete."
            Write-Host "`nPress any key to return to the previous menu"
            [void][System.Console]::ReadKey($true)
        }
        # Option 2
        if($subMenu1 -eq 2){
            Write-Host 'Goodbye!'
            # Pause and wait for input before going back to the menu
            Write-Host "`nScript execution complete."
            Write-Host "`nPress any key to return to the previous menu"
            [void][System.Console]::ReadKey($true)
        }
    }
}

function subMenu2 {
    $subMenu2 = 'X'
    while($subMenu2 -ne ''){
        Clear-Host
        Write-Host "`n`t`t YouTube Downloader Script`n"
        Write-Host "Video Download Options"
        Write-Host -NoNewline "`n["; Write-Host -NoNewline "1"; Write-Host -NoNewline "]"; `
            Write-Host " Show processes"
        Write-Host -NoNewline "`n["; Write-Host -NoNewline "2"; Write-Host -NoNewline "]"; `
            Write-Host " Show PS Version"
        $subMenu2 = Read-Host "`nSelection (leave blank to quit)"
        $timeStamp = Get-Date -Uformat %m%d%y%H%M
        # Option 1
        if($subMenu2 -eq 1){
            Get-Process
            # Pause and wait for input before going back to the menu
            Write-Host "`nScript execution complete."
            Write-Host "`nPress any key to return to the previous menu"
            [void][System.Console]::ReadKey($true)
        }
        # Option 2
        if($subMenu2 -eq 2){
            $PSVersionTable.PSVersion
            # Pause and wait for input before going back to the menu
            Write-Host "`nScript execution complete."
            Write-Host "`nPress any key to return to the previous menu"
            [void][System.Console]::ReadKey($true)
        }
    }
}

mainMenu