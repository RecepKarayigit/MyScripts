Set-StrictMode -Version Latest

function Create-Configuration {
    [CmdletBinding()]
    param(
            [Parameter()]
            [string] $Name
    )
    Write-Output "Creating configuration file with name : $Name ..."
}

Create-Configuration #Creating configuration file with name :  ...
Create-Configuration -Name "Recep" #Creating configuration file with name : Recep ...
Create-Configuration "Recep" #Creating configuration file with name : Recep ...

#######################################################################################################

function Create-FunctionWithMandatoryParam {
    [CmdletBinding()]
    param(
            [Parameter(Mandatory)]
            [string] $Name
        )

        Write-Output "Creating configuration file with name : $Name ..."
    }
    
#Create-FunctionWithMandatoryParam
# cmdlet Create-FunctionWithMandatoryParam at command pipeline position 1
# Supply values for the following parameters:
# Name: xyz #xyz is user-input
# Creating configuration file with name : xyz ...
    
#######################################################################################################

function Create-FunctionWithDefaultParam {
    [CmdletBinding()]
    param(
            [Parameter(Mandatory)]
            [string] $Name,
            [Parameter()]
            [string] $Version=2
        )
        Write-Output "Creating configuration file with name : $Name ... - version $Version"
    }

Create-FunctionWithDefaultParam -Name "textConfig.conf"                      #Creating configuration file with name : textConfig.conf ... - version 2
Create-FunctionWithDefaultParam -Name "textConfig.conf" -Version 1.0.1       # Creating configuration file with name : textConfig.conf ... - version 1.0.1
Create-FunctionWithDefaultParam -Name "textConfig.conf" -Version "1.0.1"     # Creating configuration file with name : textConfig.conf ... - version 1.0.1


#######################################################################################################

function Create-FunctionWithValidatedParam {
    [CmdletBinding()]
    param(
            [Parameter(Mandatory)]
            [string] $Name,
            [Parameter()]
            [ValidateSet("1","2")]
            [string] $Version=2
        )
        Write-Output "Creating configuration file with name : $Name ... - version $Version"
    }
 
# Create-FunctionWithValidatedParam -Name "textConfig.conf" -Version "1.0.1"   
# Line |
#   66 |  … onWithValidatedParam -Name "textConfig.conf" -Version "1.0.1"     # C …
#      |                                                          ~~~~~~~
#      | Cannot validate argument on parameter 'Version'. The argument "1.0.1" does not belong to the set "1,2" specified by the ValidateSet attribute. Supply an argument that is in the set and then try the command again.

#######################################################################################################

function Create-FunctionWithValueFromPipelineParam {
    [CmdletBinding()]
    param(
            [Parameter(Mandatory,ValueFromPipeline)]
            [string] $Name,
            [Parameter()]
            [ValidateSet("1","2")]
            [string] $Version=2
        )

        Write-Output "Creating configuration file with name : $Name ... - version $Version"
    }

$Names =@("Test1","Test2","Test3") 

$Names | Create-FunctionWithValueFromPipelineParam -Version 2

# WE ONLY GET !!!
# -> Creating configuration file with name : Test3 ... - version 2

# The reason is for pipeline mechanism, the process block in the function should be declared


function Create-FunctionWithValueFromPipelineParam2 {
    [CmdletBinding()]
    param(
            [Parameter(Mandatory,ValueFromPipeline)]
            [string] $Name,
            [Parameter()]
            [ValidateSet("1","2")]
            [string] $Version=2
        )

        begin{
            Write-Output "This is begin block"
        }
        process{
            Write-Output "Creating configuration file with name : $Name ... - version $Version"
        }
        end{
            Write-Output "This is end block!"
        }

    }

$Names =@("Test1","Test2","Test3") 

$Names | Create-FunctionWithValueFromPipelineParam2 -Version 2

# This is begin block
# Creating configuration file with name : Test1 ... - version 2
# Creating configuration file with name : Test2 ... - version 2
# Creating configuration file with name : Test3 ... - version 2
# This is end block!