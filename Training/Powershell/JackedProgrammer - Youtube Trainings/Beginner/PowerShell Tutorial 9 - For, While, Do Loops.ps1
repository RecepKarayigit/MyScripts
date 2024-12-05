Set-StrictMode -Version Latest

for($i=0; $i -lt 10; $i++)
{
    $i
}
# 0
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9

for($i=0; $i -le 10; $i++)
{
    $i
}
# 0
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10



for($i=0; $i -le 10; $i+=2)
{
    $i
}

# 0
# 2
# 4
# 6
# 8
# 10

# ---------------------------------

$filePath="C:\Data\Names.txt"
$Names=Get-Content -Path $filePath


for($i=0; $i -lt $Names.Length; $i++)
{
    Write-Output "C:\Data\Names\$($Names[$i])\config.txt"
}
# C:\Data\Names\Adam\config.txt
# C:\Data\Names\Mike\config.txt
# C:\Data\Names\Recep\config.txt


for($i=0; $i -lt $Names.Length; $i++)
{
    Get-Content -Path "C:\Data\Names\$($Names[$i])\config.txt"
}
# This is config file of Adam.
# This is config file of Mike.
# This is config file of Recep.

# -----------------------------------------------------------------
for($i=0; $i -lt $Names.Length; $i++)
{
    $Names[$i]="Test $i"
}
$Names
# Test 0
# Test 1
# Test 2

# -----------------------------------------------------------------
$testArray=@('Steve','John','Tim')

for ($i = 0; $i -lt $testArray.Length; $i++) {
    Write-Output $testArray[$i]
}

# Steve
# John
# Tim


foreach ($item in $testArray)
{
    Write-Output $item
}

# Steve
# John
# Tim


$testArray=@('Steve','John','Tim')
for ($i = 0; $i -lt $testArray.Length; $i++) {
    $testArray[$i]+= ' Doe'
}
$testArray
# Steve Doe
# John Doe
# Tim Doe

$testArray=@('Steve','John','Tim')
foreach ($item in $testArray)
{
    $item+=" Doe"
}
$testArray
# Steve
# John
# Tim

$testArray=@('Steve','John','Tim')
foreach ($item in $testArray)
{
    $item+=" Doe"
    Write-Output $item
}
$testArray
Steve Doe
John Doe
Tim Doe
Steve
John
Tim

# forach loop allocate the object as read-only 

# -----------------------------------------------------------------

while((Get-Date).Minute -eq 30)
{
    get-date
    break
}


while($true)
{
    Write-Output "`nWelcome to the parrot application"
    Write-Output "Enter 'q' to quite"
 
    $Userinput= Read-Host -Prompt "`nPlease enter a phrase"
    if($Userinput -eq 'q')
    {
        break
    }
    else {
        Write-Output "You entered : $Userinput`n"
    }

}


do
{
    Write-Output "Hi!"
}
while($false)

do
{
    Write-Output "Hi!"
}
until($true)