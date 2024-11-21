
# Function to generate a random password
function Generate-RandomPassword {
    param (
        [int]$length = 12
    )

    # Define character sets
    $lowercase = 'abcdefghijklmnopqrstuvwxyz'
    $uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    $numbers = '0123456789'
    $special = '!@#$%^&*()_+[]{}|;:,.<>?'

    # Combine all characters
    $allChars = $lowercase + $uppercase + $numbers + $special
    $password = -join ((1..$length) | ForEach-Object { $allChars[(Get-Random -Minimum 0 -Maximum $allChars.Length)] })

    return $password
}

# Generate a random password with a specified length
$randomPassword = Generate-RandomPassword -length 16

# Display the password
# todo stop printing password and forward it to keychain
write-host "How would you like to recieve your password?"
write-host "1) print your password?"
write-host "2) save password to your clipboard"
$option = read-host("option: ")
if ($option -eq "1"){
	Write-Host "Your random password is: $randomPassword"
}
else{
	Set-Clipboard -Value $randomPassword
	write-host "your random password has been saved to your clipboard"
}
