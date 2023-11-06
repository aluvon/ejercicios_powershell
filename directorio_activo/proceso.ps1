Write-Host
$proceso = Get-Process -IncludeUserName | where UserName -eq "EMPRESA\Administrador"
foreach ($x in $proceso) {
    $nombre = $($x.ProcessName)
    Write-Host $nombre
        if ($nombre -ne "powershell_ise") {
    Stop-Process -Name $nombre
    }
}