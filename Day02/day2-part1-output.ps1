
$fileimport = Get-Content -Path .\Day02-input.txt
#$table =  Import-Csv -delimiter ':' -Path .\Day02-input.txt -Header Policy,Password

$CorrectCount = 0

foreach ($line in $fileimport) {
    $state = $line -match '(\d{1,2})-(\d{1,2}\s)(.):.(\w{1,25})' 
    $minimum = $matches[1]
    $maximum = $matches[2]
    $character = $matches[3]
    $Password = $matches[4]
    $charCount = ($Password.ToCharArray() | Where-Object { $_ -eq $character } | Measure-Object).Count
    if ($charcount -ge $minimum -and $charcount -le $maximum) {
        $CorrectCount += 1
       
    }
     
}
write-output " The count comes to  $CorrectCount "