Set-StrictMode -Version latest


#  > < = operator is not workin in ps

1 -eq 1 # equals
2 -ne 1 # not equals
1 -ge 1 # greater or equals >=
1 -gt 0 # greater than >
1 -le 1 # lesser or equals <=
1 -lt 0 # lesser than


@(1,2,3) -contains 4 #False

@(1,2,3) -contains 2 #True

@('Test','Test') -contains 'TEST' # TRUE
@('Test','Test') -ccontains 'TEST' # FALSE  !! CASE-SENSETIVE

'Test' -eq 'TEST' # TRUE
'Test' -ceq 'TEST' # FALSE  !! CASE-SENSETIVE

"Powershell" -like "*shel*" #True

# ----------------------------------------

$filePath="C:\Data\Name.txt"
Test-Path -Path $filePath #False #File doesn't exist

# ----------------------------------------

$condition=$false
if($condition)
{
    # code here if condition is true
    Write-Output "True"
}
else
{
    # code here if condition is false
    Write-Output "False"
}

# ----------------------------------------

$filePath="C:\Data\Name.txt"

if(Test-Path -Path $filePath)
{
    # code here if condition is true
    Write-Output "File path exists"

    $Data=Get-Content -Path $filePath

    # $Data.Count returns the total line number of the content
    if($Data.Count -lt 5)
    {
        Write-Output "The file has less than 5 names"
    }
    elseif($Data.Count -lt 10)
    {
        Write-Output "The file has less than 10 names and more than 5 names"
    }
    else
    {
        Write-Output "The file has more than 9 names"
    }
    Write-Output "This is code running after if statement."
}
else
{

    # code here if condition is false
     Write-Output "$filePath doesn't exist"    # C:\Data\Name.txt doesn't exist
     Write-Output '$filePath doesn''t exist'   # $filePath doesn't exist
     Write-Output "'$filePath' doesn't exist'"   # 'C:\Data\Name.txt' doesn't exist'
     Write-Output "`"$filePath doesn't exist`""   # "C:\Data\Name.txt doesn't exist"
}