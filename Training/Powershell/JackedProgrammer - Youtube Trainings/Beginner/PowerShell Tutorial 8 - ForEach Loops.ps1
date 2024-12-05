Set-StrictMode -Version Latest

$filePath="C:\Data\Names.txt"
$Names=Get-Content -Path $filePath


Write-Output "C:\Data\Names\$Names[0]\config.txt"        # C:\Data\Names\Adam Mike Recep[0]\config.txt

Write-Output "C:\Data\Names\($Names)[0]\config.txt"      # C:\Data\Names\(Adam Mike Recep)[0]\config.txt

Write-Output "C:\Data\Names\$($Names[0])\config.txt"     # C:\Data\Names\Adam\config.txt
Write-Output "C:\Data\Names\$($Names[1])\config.txt"     # C:\Data\Names\Mike\config.txt
Write-Output "C:\Data\Names\$($Names[2])\config.txt"     # C:\Data\Names\Recep\config.txt


foreach($Name in $Names)
{
    $Name
}
# Adam
# Mike
# Recep


$foldersPath="C:\Data\Names"


foreach($name in $names)
{
    if(!(Test-Path "C:\Data\Names\$name"))
    {
        New-Item -Path "$foldersPath" -Name $name -ItemType Directory #create folder
        New-Item -Path "$foldersPath\$name\config.txt" -ItemType File
        "This is config file of $name." | Out-File -FilePath "$foldersPath\$name\config.txt"
    }
    else {
        Write-Output "$name folder already exists!"
    }
}


foreach($Name in $Names)
{
    Get-Content -Path "C:\Data\Names\$Name\config.txt"
}

# This is config file of Adam.
# This is config file of Mike.
# This is config file of Recep.


# There is also a commandlet ForEach-Object. An array can be piped into this commandlet. The current value is retreived with $_
# This option is performance better.
$Names | ForEach-Object -Process { #Currly bracket must open right after -Process, otherwise it raises error
    Get-Content -Path "C:\Data\Names\$_\config.txt"
}
# This is config file of Adam.
# This is config file of Mike.
# This is config file of Recep.

# --------------------------------

$Names.ForEach({Get-Content -Path "C:\Data\Names\$_\config.txt"})
# This is config file of Adam.
# This is config file of Mike.
# This is config file of Recep.