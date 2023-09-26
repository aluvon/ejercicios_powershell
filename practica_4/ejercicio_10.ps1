Clear-Host
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
   A {Write-Host }
   B {Write-Host }
   C {Write-Host }
   D {Write-Host }
   E {Write-Host }
   F {Write-Host }
   G {Write-Host }
   X {Write-Host }
   default {Write-Host "Opción incorrecta."}
}
Write-Host "`n"
Write-Host "Fin del script."