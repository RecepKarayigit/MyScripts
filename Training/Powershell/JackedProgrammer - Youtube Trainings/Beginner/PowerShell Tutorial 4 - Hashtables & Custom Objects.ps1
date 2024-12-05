Set-StrictMode -Version Latest
$Users=@{
johns = 'John Smith'
bobt ='Bob Test'
stevep ='Steve Pickle'
}

# ------------------------------------------------------
$Users.GetType()
# IsPublic IsSerial Name                                     BaseType                                                                  
# -------- -------- ----                                     --------                                                                  
# True     True     Hashtable                                System.Object   


$Users

# Name                           Value
# ----                           -----
# stevep                         Steve Pickle
# bobt                           Bob Test
# johns                          John Smith

$Users.Keys
# johns
# bobt
# stevep

$Users.Values
# John Smith
# Bob Test
# Steve Pickle

$Users['bobt']
# Bob Test

$Users.bobt
# Bob Test

$Users.johns
# John Smith


$Users.Add('rk','Recep Karayigit')
# $Users.rk # not working


$Users
# Name                           Value                                                                                                                   
# ----                           -----                                                                                                                   
# johns                          John Smith                                                                                                              
# bobt                           Bob Test                                                                                                                
# stevep                         Steve Pickle                                                                                                            
# rk                             Recep Karayigit 


$Users['tstUser'] = 'Our new test user'
$Users
# Name                           Value                                                                                                                   
# ----                           -----                                                                                                                   
# johns                          John Smith                                                                                                              
# bobt                           Bob Test                                                                                                                
# stevep                         Steve Pickle                                                                                                            
# tstUser                        Our new test user                                                                                                       
# rk                             Recep Karayigit          

$Users['NotExistUser'] #Return null !!!not raises error!!!
$Users.Contains('NotExistUser') # Returns boolean result, it is same functionality with ContainsKey
$Users.ContainsKey('NotExistUser') # Returns boolean result
$Users.ContainsValue('NotExistUser') # Returns boolean result
$Users.Remove('GiveAkey')

# In hashtable, the keys must be unique,otherwise raises an error
$Users.Add('rk','Recep Karayigit')
# MethodInvocationException: Exception calling "Add" with "2" argument(s): "Item has already been added. Key in dictionary: 'rk'  Key being added: 'rk'"

$Users.myNewMember="NewMembersValue"
$Users

# Name                           Value
# ----                           -----
# stevep                         Steve Pickle
# rk                             Recep Karayigit
# myNewMember                    NewMembersValue
# bobt                           Bob Test
# johns                          John Smith


######################### Custom Objects #######################33
$Dog=New-Object -TypeName PSCustomObject
Add-Member -InputObject $Dog -MemberType NoteProperty -Name 'Name' -Value 'Penny'
Add-Member -InputObject $Dog -MemberType NoteProperty -Name 'Breed' -Value 'Pug'
$Dog
# Name  Breed
# ----  -----
# Penny Pug  
$Dog.Breed  #Pug

$Cat=[PSCustomObject]@{Name='Frankie';Breed='Persian'} #It creating hashtable and casting into PSCustomObject
$Cat
# Name    Breed  
# ----    -----  
# Frankie Persian


$employee1 = New-Object -TypeName PSCustomObject

Add-Member -InputObject $employee1 -MemberType NoteProperty -Name 'EmployeeID' -Value 1001
Add-Member -InputObject $employee1 -MemberType NoteProperty -Name 'FirstName' -Value 'Penny'
Add-Member -InputObject $employee1 -MemberType NoteProperty -Name 'Title' -Value 'CEO'

$employee1.FirstName # Penny


Get-Member -InputObject $employee1

# TypeName: System.Management.Automation.PSCustomObject

# Name        MemberType   Definition
# ----        ----------   ----------
# Equals      Method       bool Equals(System.Object obj)
# GetHashCode Method       int GetHashCode()
# GetType     Method       type GetType()
# ToString    Method       string ToString()
# EmployeeID  NoteProperty int EmployeeID=1001
# FirstName   NoteProperty string FirstName=Penny
# Title       NoteProperty string Title=CEO
