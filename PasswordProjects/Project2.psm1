
# Function to generate a random password
function Generate-RandomPassword {
	param (
		[int]$length = 12,
		[Bool]$saveToClipboard = $false,
		[Bool]$returnPassword = $true
		)

	# Define character sets
	$lowercase = 'abcdefghijklmnopqrstuvwxyz'
	$uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
	$numbers = '0123456789'
	$special = '!@#$%^&*()_+[]{}|;:,.<>?'

	if ($length -lt 12){$length = 12}
	
	# Combine all characters
	$allChars = $lowercase + $uppercase + $numbers + $special
	$password = -join ((1..$length) | ForEach-Object { $allChars[(Get-Random -Minimum 0 -Maximum $allChars.Length)] })
	if($saveToClipboard){
		Set-Clipboard -Value $password
	}
	if($returnPassword){
		return $password
	}
}
