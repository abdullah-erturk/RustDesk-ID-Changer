taskkill /im rustdesk.exe /f

net stop RustDesk

$id = Get-Content "C:\Windows\ServiceProfiles\LocalService\AppData\Roaming\RustDesk\config\RustDesk.toml" | Select-Object -Index 0

$hostname = hostname

Write-Host "Current ID: 123$id"
$newId = "id = '$hostname'"
Write-Host "New ID: $newId"

$fileContent = Get-Content -Path "C:\Windows\ServiceProfiles\LocalService\AppData\Roaming\RustDesk\config\RustDesk.toml"

$newContent = $fileContent -replace [regex]::Escape($id), $newId

$newContent | Set-Content -Path "C:\Windows\ServiceProfiles\LocalService\AppData\Roaming\RustDesk\config\RustDesk.toml"

net start RustDesk