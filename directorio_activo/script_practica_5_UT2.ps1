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

   
    $acl = Get-Acl -Path C:\Empresa\$depto

    #deshabilitar la herencia y quitar todas las reglas de acceso
    $acl.SetAccessRuleProtection($true,$false)

    #permitir al grupo administradores CONTROL TOTAL

    $permiso1 = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
    $ace1 = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso1
    $acl.SetAccessRule($ace1)
        
    #permitir a cada grupo ESCRITURA

    $permiso2 = $depto,'Modify','ContainerInherit,ObjectInherit','None','Allow'
    $ace2 = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso2
    $acl.SetAccessRule($ace2)

    #permitir a los restantes grupos solo LECTURA

    $permiso3 = 'Usuarios del dominio','Read','ContainerInherit,ObjectInherit','None','Allow'
    $ace3 = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso3
    $acl.SetAccessRule($ace3)
    
    #establecer los permisos
    $acl | Set-Acl -Path C:\Empresa\$depto

    #verificar que funciona
    $ace1 | Format-Table
    $ace2 | Format-Table
    $ace3 | Format-Table
}
