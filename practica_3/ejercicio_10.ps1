Clear-Host
Write-Host "Hola, te diré cúanto recibirás este mes dependiendo de tu puntuación"
[double]$puntos = Read-Host "Ingresa tus puntos"
$sueldo_0 = $puntos * 0
$sueldo_4 = $puntos * 2400
$sueldo_6 = $puntos * 2400
Write-Host "`n"

switch ($puntos) {
        {$_ -eq 0.0} {Write-Host "Tu nivel es ¡INACEPTABLE!, deberías esforzarte un poco más o renunciar."
                      Write-Host "Tu sueldo este mes será de:" $sueldo_0
    }
        {$_ -eq 0.4} {Write-Host "Tu nivel es ¡ACEPTABLE!, estamos orgullosos de ti."
                      Write-Host "Tu sueldo este mes será de:" $sueldo_4
    }
        {$_ -eq 0.6} {Write-Host "Tu nivel es ¡MERITORIO!, continua así que eres un ejemplo a seguir."
                     Write-Host "Tu sueldo este mes será de:" $sueldo_6
    }
}
Write-Host "`n"
Write-Host "Fin del script."