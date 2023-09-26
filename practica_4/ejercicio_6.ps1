Clear-Host
Write-Host "Tienes que adivinar el número que tengo almacenado."
$num = Read-Host "Ingresa un número del 0 al 100"

$z = 36
while ($z -ne $num)
{
       if ($num -lt $z){
            Write-Host "El número ingresado es menor."
       } 
       else {
            Write-Host "El número ingresado es mayor."
       }
}