(netsh wlan show interfaces) -match '^\s+Signal' -replace '^\s+Signal\s+:\s+',''
