Stop-Service RustDesk

taskkill /im rustdesk.exe /f

$id = Get-Content "C:\Windows\ServiceProfiles\LocalService\AppData\Roaming\RustDesk\config\RustDesk.toml" | Select-Object -Index 0

$newId = Read-Host "Enter RustDesk ID" 

Write-Host "Current ID: $id"
$newId = "id = '$newId'"
Write-Host "New ID: $newId"

$fileContent = Get-Content -Path "C:\Windows\ServiceProfiles\LocalService\AppData\Roaming\RustDesk\config\RustDesk.toml"

$newContent = $fileContent -replace [regex]::Escape($id), $newId

$newContent | Set-Content -Path "C:\Windows\ServiceProfiles\LocalService\AppData\Roaming\RustDesk\config\RustDesk.toml"

Restart-Service RustDesk
