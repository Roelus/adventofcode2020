
$list = Get-Content -Path .\day1-Input.txt 

$sumammount = 2020
#$halfsummaccount = $sumammount / 2

#$listHigh = @()
#$listLow = @()

Foreach ($number1 in $list) {
    Foreach ($number2 in $list) {
        if (([int]$number1 + [int]$number2) -lt $sumammount) {
            Foreach ($number3 in $list) {
        #        if ($number1 -ne $number3 -and $number2 -ne $number3) {
                    $result = [int]$number1 + [int]$number2 + [int]$number3
                    #Write-Output $result
                    if ($result -eq $sumammount) {
                        $result2 = [int]$number1 * [int]$number2 * [int]$number3
                        write-output "Uitkomst van $number1 keer $number2 keer $number3  is $result2"
        
                    }
                }
            }
        }
    }
#}
    
