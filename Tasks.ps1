#Check if the tasks file exists
if (Test-Path $tasksFilePath) {
    #Read the tasks from the file 
    $tasks = Get-Content -Path $tasksFilePath

    #Display the tasks 
    Write-Host "Here are your tasks for the day:"
    foreach (task in $tasks( {
        Write-Host "- $task"
    }
} else {
    Write-Host "You don't have any tasks listed for today."
}


#I plan on using this script when finished to point out specific tasks that are either coming up or due?
