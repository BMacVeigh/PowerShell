Write-host "Hello World"

$joke = "command which callsAPI"

<#this is to help you learn to parse out the json you receive from the API#>
write-host $joke

<#here you should parse the json into question and answer#>

$question = "question"
$answer = "answer"

write-host $question
$userinput = read-host($question )
if $userinput -eq $answer{
	write-host "that's right! $userinput"
}
else{
	write-host "nope"
	write-host "the correct answer was $answer"
}
write-host $answer
