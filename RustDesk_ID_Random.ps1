Stop-Service RustDesk

taskkill /im rustdesk.exe /f

$randomId = -join ((48..57) | Get-Random -Count 9 | ForEach-Object {[char]$_})

$id = Get-Content "C:\Windows\ServiceProfiles\LocalService\AppData\Roaming\RustDesk\config\RustDesk.toml" | Select-Object -Index 0

Write-Host "Current ID: $id"
$newId = "id = '$randomId'"
Write-Host "New ID: $newId"

$fileContent = Get-Content -Path "C:\Windows\ServiceProfiles\LocalService\AppData\Roaming\RustDesk\config\RustDesk.toml"

$newContent = $fileContent -replace [regex]::Escape($id), $newId

$newContent | Set-Content -Path "C:\Windows\ServiceProfiles\LocalService\AppData\Roaming\RustDesk\config\RustDesk.toml"

Restart-Service RustDesk
