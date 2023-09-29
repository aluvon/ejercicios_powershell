Clear-Host
$valores = ""
while ($valores -ine "x") {
    Write-Host "¡¡¡¡¡¡¡¡ Antes de utilizar el siguiente script, debe crear un directorio en c:\ llamado Script_mauricio !!!!!!!!"
    Write-Host "`n"
    Write-Host "Bienvenido/a ¿que desea realizar?"
    Write-Host "Elija una opción:"
    Write-Host "`n"
    Write-Host "a) Crear una carpeta."
    Write-Host "b) Crear un fichero nuevo."
    Write-Host "c) Cambiar el nombre de un fichero o carpeta."
    Write-Host "d) Borrar un archivo o carpeta."  #no consigo eliminar ficheros solo directorios.
    Write-Host "e) Verificar si existe un fichero o carpeta."
    Write-Host "f) Mostrar el contenido de un directorio."
    Write-Host "g) Mostrar la fecha y hora actuales."
    Write-Host "x) Salir."
    Write-Host "`n"
    $valores = Read-Host "Ingresa la opción deseada"
    Write-Host "`n"                      


    switch ($valores) {
       A {
            $nombre = Read-Host "Ingresa el nombre del directorio y lo guardaré en c:\Script_mauricio\"
            New-Item c:\Script_mauricio\$nombre -ItemType directory
            Write-Host "Directorio creado con exito" 
            Test-Path c:\Script_mauricio\$nombre
            Write-Host "`n" 
         }
       B {
            $nombre = Read-Host "Ingresa el nombre del fichero y lo guardaré en c:\Script_mauricio\"
            New-Item c:\Script_mauricio\$nombre -ItemType file
            Write-Host "Fichero creado con éxito"
            Test-Path c:\Script_mauricio\$nombre
            Write-Host "`n" 
         }
       C {
            $nombre = Read-Host "Ingresa el nombre original del fichero o directorio y lo buscaré en c:\Script_mauricio\"
            $nombre_a_modificar = Read-Host "Ahora ingresa el nombre con el que lo deseas reemplazar"           
            Rename-Item c:\Script_mauricio\$nombre $nombre_a_modificar
            Write-Host "Nombre cambiado con éxito"
            Get-ChildItem c:\Script_mauricio\$nombre_a_modificar
            Write-Host "`n" 
         }
       D {
            $opcion = Read-Host "Ingrese el nombre del archivo o directorio a eliminar" 
            Remove-Item -R c:\Script_mauricio\$opcion
            $estado = Test-Path c:\Script_mauricio\$opcion
            Write-Host "La existencia es:" $estado
            Write-Host "`n" 
         }
       E {
            $dato = Read-Host "Ingresa el nombre del archivo junto con su extensión o el nombre de la carpeta y lo buscaré dentro del directorio c:\Script_mauricio\"
            $resu = Test-Path c:\Script_mauricio\$dato
            Write-Host "La existencia es:" $resu
            Write-Host "`n"
         }
       F {
            $busqueda = Read-Host "Ingrese el nombre del directorio, lo buscaré dentro de c:\ y mostraré su contenido"
            $localizado = Get-childItem c:\Script_mauricio\$busqueda

            Write-Host $localizado 
            Write-Host "`n"           
         }
       G {           
            $fecha = Get-Date
            Write-Host $fecha
            Write-Host "`n"
         }
       X {
            Write-Host "Su elección fue salir."
            Write-Host "`n"
         }

       default {Write-Host "Opción incorrecta."}

    }
}
Write-Host "`n"
Write-Host "Fin del script."