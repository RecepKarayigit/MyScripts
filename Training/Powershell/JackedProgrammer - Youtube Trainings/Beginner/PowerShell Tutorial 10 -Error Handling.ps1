Set-StrictMode -Version latest

$filePath="C:\Data\Names"
$files=Get-ChildItem -Path $filePath

$files

#     Directory: C:\Data\Names
#
#
# Mode                 LastWriteTime         Length Name                                                                         
# ----                 -------------         ------ ----                                                                         
# d-----        25/09/2024     23:41                Adam                                                                         
# d-----        25/09/2024     23:41                Mike                                                                         
# d-----        25/09/2024     23:41                Recep                                                                        


# ------------------------------------------------------------------

$filePath="C:\Data\WrongPath"
$files=Get-ChildItem -Path $filePath

# Get-ChildItem : Cannot find path 'C:\Data\WrongPath' because it does not exist.
# At line:2 char:8
# + $files=Get-ChildItem -Path $filePath
# +        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     + CategoryInfo          : ObjectNotFound: (C:\Data\WrongPath:String) [Get-ChildItem], ItemNotFoundException
#     + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.GetChildItemCommand

$files=Get-ChildItem -Path $filePath -ErrorAction Continue # [Default] Continues by showing error message
Write-Output "Hi!"


$files=Get-ChildItem -Path $filePath -ErrorAction Ignore #Does nothing
Write-Output "Hi!"


$files=Get-ChildItem -Path $filePath -ErrorAction Inquire #Prompt the error message and asks to the user continue or not
Write-Output "Hi!"

$files=Get-ChildItem -Path $filePath -ErrorAction SilentlyContinue #It won't show the error message to the user, but it will be saved in the error variable

$files=Get-ChildItem -Path $filePath -ErrorAction Stop # Keep tracking the error, shows and stop

# ______________________________________________________________________________________________________________________________________________________________________________________

$filePath="C:\Data\WrongPath"
try
{
    $files=Get-ChildItem -Path $filePath -ErrorAction Stop
}
catch
{
    $_.exception.message  # Catch block will be trigger only for the error with terminates the code
}
finally
{
    Write-Output "This scope will run in any case."
}

# ________________________________________________________________________________________________________________

$filePath="C:\Data\WrongPath"
try
{
    $files=Get-ChildItem -Path $filePath 
    Write-Output "The code will not jump to the catch block since it is not error which terminates the code"
}
catch
{
    $_.exception.message  # Catch block will be trigger only for the error with terminates the code
}
finally
{
    Write-Output "This scope will run in any case."
}

# ________________________________________________________________________________________________________________

$ErrorActionPreference="Stop" #Global setting

$filePath="C:\Data\WrongPath"
try
{
    $files=Get-ChildItem -Path $filePath 
    Write-Output "The code will not be executed since the global ErrorActionPreference is set to stop. The code will jump to catch scope"
}
catch
{
    $_.exception.message 
    
    # $Error #Shows all errors
    $Error[0].Exception.Message 
}
finally
{
    Write-Output "This scope will run in any case."
}

