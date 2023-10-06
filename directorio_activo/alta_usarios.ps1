Clear-Host
Write-Host "Hola, el siguiente script creará las Unidades Organizativas, grupos y usuarios para Active Directory." 

# Creando la unidad organizativa:
New-ADOrganizationalUnit -Name "Empresa" -Path "DC=EMPRESA,DC=LOCAL" -Description "Unidad organizativa general"

# Creando las unidadades organizativas dento de empresa:
$datos = Import-CSV C:\script\departamentos.csv -Delimiter ";"
foreach($x in $datos) {
    $depto = $($x.departamento)
    $descrip = $($x.descripcion)
    Write-Host $depto $descrip
    New-ADOrganizationalUnit -Name "$depto" -Path "OU=Empresa,DC=EMPRESA,DC=LOCAL" -Description "$descrip"
}

# Importando los datos de los departamentos
$datos = Import-CSV C:\script\departamentos.csv -Delimiter ";"
foreach($x in $datos) {
    $depto = $($x.departamento)
    $descrip = $($x.descripcion)
    Write-Host $depto $descrip
    # Crear grupos
    New-ADGroup -Name "$depto" -GroupCategory Security -GroupScope Global -Path "OU=$depto,OU=Empresa,DC=EMPRESA,DC=LOCAL" -Description "$descrip"
}

# Importando los datos de las personas:
$personas = Import-CSV C:\script\empleados.csv -Delimiter ";"
foreach($x in $personas) {
    $nombre = "$($x.nombre)"
    $apellido = "$($x.apellido)"
    $departamento = "$($x.departamento)"
    Write-Host $nombre $apellido $departamento
    # Crear usuarios
    New-ADUser -Name "$nombre" -Path "OU=$departamento,OU=Empresa,DC=EMPRESA,DC=LOCAL" -SamAccountName "$nombre.$apellido" -AccountPassword (ConvertTo-SecureString "aso2021." -AsPlainText -Force) -GivenName "$nombre" -Surname "$apellido" -ChangePasswordAtLogon $true -Enabled $true   
    Add-ADGroupMember -Identity "$departamento" -Members "$nombre.$apellido"
}