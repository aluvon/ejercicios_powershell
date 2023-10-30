Clear-Host
Write-Host "Crearemos un directorio personal para cada usuario" 

New-Item -Path C:\Empresa_user -ItemType directory
New-SmbShare -Path C:\Empresa_user -Name Empresa_user$
Grant-SmbShareAccess -Name Empresa_user$ -AccountName Administradores -AccessRight Full -Force
Grant-SmbShareAccess -Name Empresa_user$ -AccountName "Usuarios del dominio" -AccessRight Full -Force

# Creando los directorios y compartiendolos.
$datos = Import-CSV C:\script3\empleados.csv -Delimiter ";"
foreach($x in $datos) {
    $datos = "$($x.nombre).$($x.apellido)"
    $depto = $($x.departamento)

    Write-Host $datos
    New-Item -Path C:\Empresa_user\$datos -ItemType directory   

    #obtener informacion de la lista de acceso y almacenarla en la variable acl.   
    $acl = Get-Acl -Path C:\Empresa_user\$datos

    #deshabilitar la herencia y quitar todas las reglas de acceso.
    $acl.SetAccessRuleProtection($true,$false)

   
    #permitir al grupo administradores CONTROL TOTAL.
    $permiso1 = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
    $ace1 = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso1
    $acl.SetAccessRule($ace1)
        
  
    #permitir a cada usuario CONTROL TOTAL.
    $permiso2 = $datos,'FullControl','ContainerInherit,ObjectInherit','None','Allow'
    $ace2 = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso2
    $acl.SetAccessRule($ace2)
     

    #verificar que funciona, Podemos realizar este paso antes de estableser los permisos para ver como estan los permisos antes de aplicarlos.
    $ace1 | Format-Table
    $ace2 | Format-Table
    

    #establecer los permisos.
    $acl | Set-Acl -Path C:\Empresa_user\$datos

    
        #asignar la unidad z al usuario.
    if ($depto -ieq "finanzas") {
       Set-ADUser -Identity $datos -ScriptPath "finanzas.bat" -HomeDrive "Z:" -HomeDirectory "\\Empresa-dc1\Empresa_user$\$datos"
    }
    elseif ($depto -ieq "personal") {
       Set-ADUser -Identity $datos -ScriptPath "personal.bat" -HomeDrive "Z:" -HomeDirectory "\\Empresa-dc1\Empresa_user$\$datos"
    }
    elseif ($depto -ieq "produccion") {
       Set-ADUser -Identity $datos -ScriptPath "produccion.bat" -HomeDrive "Z:" -HomeDirectory "\\Empresa-dc1\Empresa_user$\$datos"
    }
    elseif ($depto -ieq "ventas") {
       Set-ADUser -Identity $datos -ScriptPath "ventas.bat" -HomeDrive "Z:" -HomeDirectory "\\Empresa-dc1\Empresa_user$\$datos"
    }
}
