Write-host "Hello World"

# I will need an API for this which I have had zero luck with so far.
$joke = "command which callsAPI"

write-host $joke

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
