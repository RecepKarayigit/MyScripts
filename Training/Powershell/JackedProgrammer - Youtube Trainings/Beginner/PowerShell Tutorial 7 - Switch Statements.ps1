Set-StrictMode -Version Latest

$filePath="C:\Data\Names.txt"
$Data=Get-Content -Path $filePath

$firstName=$Data[0]

switch($firstName)
{
    "Mike" {
    Write-Output "The first name is Mike"
    break
    }
    
    "Adam" {
    Write-Output "The first name is Adam"
    break
    }
    
}

switch($Data.count)
{
    {0..4 -contains $Data.Count}
    {
        Write-Output "Between 0 and 4"
        break
    }
    {3..7 -contains $Data.Count}
    {
        Write-Output "Between 3 and 7"
        break
    }
    {5..10 -contains $Data.Count}
    {
        Write-Output "Between 5 and 10"
        break
    }
    default
    {
        Write-Output "More than 10"
        break
    }
    
}



switch($Data.count)
{
    {$_ -lt 2}
    {
        Write-Output "The file has less than 2 lines"
        break
    }
    {$_ -eq 7}
    {
        Write-Output "The file has exactly 7 lines"
        break
    }
    {$_  -in (8..9)}
    {
        Write-Output "The file has less than 10 and greater than 7"
        break
    }
    default
    {
        Write-Output "More than 10"
        break
    }
    
}