Clear-Host
Write-Host "Hola" 

New-Item -Path C:\Empresa -ItemType directory

# Creando los directorios y compartiendolos:
$datos = Import-CSV C:\script2\departamentos.csv -Delimiter ";"
foreach($x in $datos) {
    $depto = $($x.departamento)
    Write-Host $depto
    New-Item -Path C:\Empresa\$depto -ItemType directory
    New-SmbShare -Path C:\Empresa\$depto -Name $depto
    Grant-SmbShareAccess -Name $depto -AccountName $depto -AccessRight Change -Force
    Grant-SmbShareAccess -Name $depto -AccountName Administradores -AccessRight Full -Force
    Grant-SmbShareAccess -Name $depto -AccountName "Usuarios del dominio" -AccessRight Read -Force
    Revoke-SmbShareAccess -Name $depto -AccountName Todos -Force 
}