

<#
First 7 characters A or B - 128 Rows (0to127)



[Convert]::ToString(192,2)
[Convert]::ToInt32('11000000',2)

BFFFBBFRRR: row 70, column 7, seat ID 567.
FFFBBBFRRR: row 14, column 7, seat ID 119.
BBFFBBFRLL: row 102, column 4, seat ID 820.


#>

$fileimport = Get-Content -Path .\Day05-input.txt
$fileimport = $fileimport -replace "B", "1"  
$fileimport = $fileimport -replace "F", "0"  
$fileimport = $fileimport -replace "R", "1"  
$fileimport = $fileimport -replace "L", "0"  

$outputlist = @()
foreach ($Line in $Fileimport) {
    
    #write-output $line
    $row = [Convert]::ToInt32(($line.Substring(0, 7)), 2)
    #Write-Output $row
    $column = [Convert]::ToInt32(($line.Substring(7, 3)), 2)
    #Write-Output $column
    $id = $row * 8 + $column
    #write-output "id is $id"
    $outputlist += $id
}

$HighestSeatID = ($outputlist | Sort-Object )[-1]
Write-Output "The highest seat ID is $HighestSeatID"

$FullList = $outputlist | Sort-Object 
$Entrycount = $FullList.Count

For ($i = 0; $i -le ($Entrycount - 1); $i++) {
    if (!($FullList.contains($i)) -and $FullList.contains($i + 1) -and $FullList.contains($i - 1)) {
        write-output " Mijn Seat id is $i"

    }

}