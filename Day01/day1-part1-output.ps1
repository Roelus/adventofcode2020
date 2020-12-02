
$list = Get-Content -Path .\day1-Input.txt 

$sumammount = 2020
$halfsummaccount = $sumammount / 2

$listHigh = @()
$listLow = @()

Foreach ($number in $list) {
    if ([int]$number -gt $halfsummaccount) {
        write-output $number
        $listHigh += [int]$number
    }
    else {
        write-outout "low"
        $listlow += [int]$number    
    }
}

Foreach ($numberhigh in $listHigh) {
    foreach ($numberlow in $listLow) {
        if (($numberlow + $numberhigh) -eq 2020) {
            $result = $numberhigh * $numberlow
            write-output "Uitkomst van $numberhigh keer $numberlow  is $result"
            break 
        }
    }
}
