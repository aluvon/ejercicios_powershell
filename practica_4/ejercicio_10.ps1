Clear-Host
while ($valores -ine x) {
    Write-Host "Bienvenido/a ¿que decea realizar?"
    Write-Host "Elija una opción:"
    Write-Host "`n"
    Write-Host "a) Crear una carpeta"
    Write-Host "b) Crear un fichero nuevo"
    Write-Host "c) Cambiar el nombre de un fichero o carpeta"
    Write-Host "d) Borrar un archivo o carpeta"
    Write-Host "e) Verificar si existe un fichero o carpeta"
    Write-Host "f) Mostrar el contenido de un directorio"
    Write-Host "g) Mostrar la fecha y hora actules"
    Write-Host "x) Salir"
    Write-Host "`n"
    $valores = Read-Host "Ingresa la opción deseada"
    Write-Host "`n"                      #NO ESTÁ COMPLETO.


    switch ($valores) {
       A {
            $nombre = Read-Host "Ingresa el nombre del directorio y lo almacenaré en c:\Script\"
            New-Item c:\Script\$nombre -ItemType directory
            Write-Host "Directorio creado con exito" 
            Test-Path c:\Script\$nombre
         }
       B {
            $nombre = Read-Host "Ingresa el nombre del fichero y lo almacenaré en c:\Script\"
            New-Item c:\Script\$nombre -ItemType file
            Write-Host "Fichero creado con exito"
            Test-Path c:\Script\$nombre
         }
       C {
            $nombre = Read-Host "Ingresa el nombre original del fichero o directorio y lo buscaré en c:\Script\"
            $nombre_a_modificar = Write-Host "Ahora ingresa el nombre con el que lo deseas reemplazar"           
            Rename-Item c:\Script\$nombre $nombre_a_modificar
            Write-Host "Nombre cambiado con exito"
            Get-ChildItem c:\Script\$nombre_a_modificar
         }
       D {
            Write-Host "Rename-Item"

         }
       E {
            Write-Host "Existencia"

         }
       F {
            Write-Host "Get-childItem directorio"

         }
       G {
            Write-Host "Get-Date"

         }
       X {
            Write-Host "exit"}
       default {Write-Host "Opción incorrecta."}
    }
}
Write-Host "`n"
Write-Host "Fin del script."