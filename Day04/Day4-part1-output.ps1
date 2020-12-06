<#
byr (Birth Year)
iyr (Issue Year)
eyr (Expiration Year)
hgt (Height)
hcl (Hair Color)
ecl (Eye Color)
pid (Passport ID)
cid (Country ID) (optional)

In your batch file, how many passports are valid?
#>

$AttMan = 'byr', 'iyr', 'eyr', 'hgt', 'hcl', 'ecl', 'pid'
$attopt = 'cid'

$fileimport = Get-Content -Path .\Day04-input.txt #-Raw
$passportCorrect = 0

$fileimport = $fileimport -replace "\s","`r"  

$passportListNorm = @{}
$index = 1

foreach ($Line in $Fileimport) {
    write-output $line
    if ($line -ne "") {
        $Line -match '(\w{3}):([^\s]+)' 
        $passport.($Matches[1]) = $Matches[2]
        
    }
    else{
        $passportListNorm += @{ $index = $passport}
        $index += 1
        $passport = [ordered]@{} 

    } 
}
$passportListNorm += @{ $index = $passport}


$passportListNorm[2]


<#
#Normalize
foreach ($Line in $Fileimport){
    $passportstring = ""
    if($line -ne ""){
        Foreach ($attribute in $AttMan){
            $regex = '(\c{3}):'
        }

    } 
    $passportString += $line
    $passportListNorm.add($passportString)
}

$passportListNorm




foreach ($Line in $Fileimport){
    If ($line -ne ""){
        $Correctrue = $true
        Foreach ($attribute in $AttMan){
            If($Line -contains $attribute){
                $Correctrue  = $correctrue -and 
            }

        }

    }
    else {
        if ($correcttrue){
            $passportCorrect += 1
            $correcttrue = $false
        }
        else {
            $correcttrue = $false
        }
    }
}



#>