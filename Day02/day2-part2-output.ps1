$fileimport = Get-Content -Path .\Day02-input2.txt
#$table =  Import-Csv -delimiter ':' -Path .\Day02-input.txt -Header Policy,Password

$CorrectCount = 0

foreach ($line in $fileimport) {
    $state = $line -match '(\d{1,2})-(\d{1,2}\s)(.):.(\w{1,25})' 
    $Position1 = $matches[1]
    $Position2 = $matches[2]
    $character = $matches[3]
    $Password = $matches[4]
    

    if ((($password[$position1-1]) -eq $character) -xor (($password[$position2-1]) -eq $character)){
        $CorrectCount += 1
    }
       
    
     
}
write-output " The count comes to  $CorrectCount "