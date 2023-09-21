Clear-Host
$contraseña = "hola"
$contraseña_2 = Read-Host "Escribe tu contraseña"
if ($contraseña -ieq $contraseña_2) {
        Write-Host "La contraseña es correcta."
}
Else {
        Write-Host "La contraseña no coincide."
}