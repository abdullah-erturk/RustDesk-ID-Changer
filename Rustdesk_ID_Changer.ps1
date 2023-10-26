function ChangeID($option) {
    Write-Host "`nChanging Rustdesk ID."

	# Stopping the service & closing the app
	Stop-Service RustDesk
	taskkill /im rustdesk.exe /f

	# Read the current id from Rustdesk configuration file
	$id = Get-Content "C:\Windows\ServiceProfiles\LocalService\AppData\Roaming\RustDesk\config\RustDesk.toml" | Select-Object -Index 0

	$newId = "id = '$option'"
	
	# Newer Rustdesk app has an encrypted ID, let's mention that to user
	if ( $id -like "*enc_id*") {$encrypted = "is encrypted"}
	
	# Show user what the ID is, and what it will become
	Write-Host "  Current ID $encrypted : $id"
	Write-Host "  New ID: $newId"
	
	# Read the Rustdesk configuration file
	$fileContent = Get-Content -Path "C:\Windows\ServiceProfiles\LocalService\AppData\Roaming\RustDesk\config\RustDesk.toml"

	# Replace the old ID with the new one
	$newContent = $fileContent -replace [regex]::Escape($id), $newId

	# Write the change into the Rustdesk configuration file
	$newContent | Set-Content -Path "C:\Windows\ServiceProfiles\LocalService\AppData\Roaming\RustDesk\config\RustDesk.toml"

	Restart-Service RustDesk
	
	Write-Host "DONE`n"	
}

# If we're not elevated, explain to user and exit.
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
	Write-Output "This script needs to be run as Administrator because it needs to modify the Rustdesk configuration file."
	break
}

# Display menu options
Write-Host "Select an option:"
Write-Host "  1. Set RustDesk ID to the computer name:"$(get-content env:computername)
Write-Host "  2. Set RustDesk ID to a 9-digit random number"
Write-Host "  3. Set RustDesk ID to the value you specify"
Write-Host "  4. Exit"

while ($true) {
    # Prompt the user for input
    $choice = Read-Host "Enter the option of your choice (1-4)"

    switch ($choice) {
        '1' {
            ChangeID $(get-content env:computername)
        }
        '2' {
            ChangeID $(-join ((48..57) | Get-Random -Count 9 | ForEach-Object {[char]$_}))
        }
        '3' {
            ChangeID $(Read-Host "`n  Specify your custom RustDesk ID")
        }
        '4' {
            Write-Host "Exiting the script."
            exit
        }
        default {
            Write-Host "Invalid choice. Please select a valid option (1-4)."
        }
    }
	Exit
}
