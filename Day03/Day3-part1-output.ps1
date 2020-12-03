$fileimport = Get-Content -Path .\Day03-input.txt -Verbose
$HorStep = 3
$maxrows = $fileimport.Count

$cursorColumn = $fileimport[1].length

$Linecol=0 
$trees = 0

For ($row=0; $row -le ($maxrows-1); $row++){
    if ($fileimport[$row][$linecol] -eq '#'){
        $trees += 1
    }


    $linecol += $HorStep
    if ($Linecol -ge $cursorColumn){
        $linecol -= $cursorcolumn
    }

}

write-output = "Encountered trees is $trees"
