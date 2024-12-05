

$GivenName = "Recep" # Assigned a string variable
$GivenName # Returns 'Recep'

# -----------------------------------------------------------------------------------
$GivenName.GetType()
<#
PS C:\Windows\system32> $GivenName.GetType()

IsPublic IsSerial Name                                     BaseType                                                                                                                                                                                              
-------- -------- ----                                     --------                                                                                                                                                                                              
True     True     String                                   System.Object 
#>
# -----------------------------------------------------------------------------------


$Value1 = 1
$Value3=3

$Result=$Value1 + $Value3 # 1 + 3

$Result # 4


$Value1.GetType()
<#
PS C:\Windows\system32> $Value1.GetType()

IsPublic IsSerial Name                                     BaseType                                                                                                                                                                                              
-------- -------- ----                                     --------                                                                                                                                                                                              
True     True     Int32                                    System.ValueType   
#>
# -----------------------------------------------------------------------------------
$Value3.GetType()
<#
PS C:\Windows\system32> $Value3.GetType()

IsPublic IsSerial Name                                     BaseType                                                                                                                                                                                              
-------- -------- ----                                     --------                                                                                                                                                                                              
True     True     Int32                                    System.ValueType   
#>
# -----------------------------------------------------------------------------------

# Mod Operator
10 %  3  # 1 
# -----------------------------------------------------------------------------------

$DoubleValue = 5.26

$DoubleValue = 5.26 + 5

$DoubleValue #10.26

$DoubleValue.GetType()

<#
PS C:\Windows\system32> 
$DoubleValue.GetType()

IsPublic IsSerial Name                                     BaseType                                                                                                                                                                                              
-------- -------- ----                                     --------                                                                                                                                                                                              
True     True     Double                                   System.ValueType                                                                                                                                                                                      
#>

# -----------------------------------------------------------------------------------
$BooleanType = $true
# $BooleanType2 = $false

$BooleanType.GetType()
<#
PS C:\Windows\system32> $BooleanType.GetType()

IsPublic IsSerial Name                                     BaseType                                                                                                                                                                                              
-------- -------- ----                                     --------                                                                                                                                                                                              
True     True     Boolean                                  System.ValueType
#>

$Value1 -eq $Value3 # Return False



# -----------------------------------------------------------------------------------

$UndefinedVariable # not raise an error
<#
PS C:\Windows\system32> 
$UndefinedVariable
#>

Set-StrictMode -Version latest
$UndefinedVariable # Raise an error
<#
PS C:\Windows\system32> $UndefinedVariable # Raise an error
The variable '$UndefinedVariable' cannot be retrieved because it has not been set.
At line:1 char:1
+ $UndefinedVariable # Raise an error
+ ~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : InvalidOperation: (UndefinedVariable:String) [], RuntimeException
    + FullyQualifiedErrorId : VariableIsUndefined
#>
Set-StrictMode -Off # Switching off if you don't want to raise an error (default)

# -----------------------------------------------------------------------------------

Set-StrictMode -Version latest
$null #build-in variable, not raise error even Set-StrictMode setting is set to -Version latest

$null #GetType() is not available for that type


$Employee = $null
$Employee.GetType()
<#
You cannot call a method on a null-valued expression.
At line:1 char:1
+ $Employee.GetType()
+ ~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : InvalidOperation: (:) [], RuntimeException
    + FullyQualifiedErrorId : InvokeMethodOnNull
#>


($null -eq $Employee) #If Set-StrictMode -Version latest then it raises error, because it won't let make any operation for a null variable,  otherwise it returns boolean
# ($Employee -eq $null) # Raise a warning : $null should be on the left side of equality comparisons.",


# -----------------------------------------------------------------------------------
# The value type might assign explicitly

[int]$myValue=1.2

$myValue # Returns 1

$myValue.GetType()


# IsPublic IsSerial Name                                     BaseType
# -------- -------- ----                                     --------
# True     True     Int32                                    System.ValueType

# -----------------------------------------------------------------------------------

$Today = Get-Date
$Today

