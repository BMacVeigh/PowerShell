# Define the path to the tasks file 
$tasksFilePath = "C:\tasks\inspiration.txt"

#Define a list of motivational messages
$motivationalMessages =(
    "You got this Bitch.",
    "If You're Not First You're Last!",
    "Suck It Up ButterCup.",
    "Success doesn't just find you. You have to go out and get it!",
)

#Select a random motivational message
$randomMessage = $motivationalMessages | Get-Random

#Display the motivational message
Write-host "Good Morning! Here's your motivational message for the day:"
Write-Host $randomMessage
Write-Host ""









