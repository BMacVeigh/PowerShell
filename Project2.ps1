
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
Write-Host "Your random password is: $randomPassword"
