<?php
session_start();
require_once '../conexion.php';

// Verificar si el formulario fue enviado
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nombre = trim($_POST['nombre']);
    $email = trim($_POST['email']);
    $password = trim($_POST['password']);

    // Validar campos vacíos
    if (empty($nombre) || empty($email) || empty($password)) {
        $error = 'Por favor, complete todos los campos.';
    } else {
        // Verificar si el usuario o email ya existe
        $sql = "SELECT * FROM usuarios WHERE nombre_usuario = ? OR email = ?";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([$nombre, $email]);
        $usuario_existente = $stmt->fetch();

        if ($usuario_existente) {
            $error = 'El nombre de usuario o el email ya están registrados.';
        } else {
            // Registrar el nuevo usuario
            $sql = "INSERT INTO usuarios (nombre_usuario, email, password) VALUES (?, ?, ?)";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$nombre, $email, password_hash($password, PASSWORD_DEFAULT)]);

            header('Location: ../Php/login.php');
            exit();
        }
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Usuario</title>
    <style>
        /* Estilos CSS para el Registro de Usuario - DnD */
        body {
            background-image: url('https://i.imgur.com/w3PVgEm.jpg'); /* Fondo temático de pergamino */
            background-size: cover;
            font-family: 'Georgia', serif;
            color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: rgba(0, 0, 0, 0.7);
            padding: 25px 30px;
            width: 400px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #f5c542;
            font-size: 24px;
            text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.6);
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #f5c542;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 2px solid #f5c542;
            background: #333;
            color: #f5f5f5;
            border-radius: 5px;
            outline: none;
            transition: border 0.3s;
        }

        input:focus {
            border-color: #f5a623;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #d4a017;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            cursor: pointer;
            transition: background 0.3s, transform 0.2s;
        }

        button:hover {
            background-color: #b88a0c;
            transform: scale(1.05);
        }

        p {
            text-align: center;
            margin-top: 10px;
            font-size: 14px;
        }

        .container p.error {
            background-color: #e74c3c;
            padding: 10px;
            border-radius: 5px;
            text-align: center;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Registro de Usuario</h2>
        <?php if (isset($error)): ?>
            <p class="error"><?php echo $error; ?></p>
        <?php endif; ?>

        <form method="post" action="../Php/registros.php">
            <label>Nombre</label>
            <input type="text" name="nombre" required>

            <label>Email</label>
            <input type="email" name="email" required>

            <label>Contraseña</label>
            <input type="password" name="password" required>

            <button type="submit">Registrarse</button>
        </form>
        <p>¿Ya tienes una cuenta? <a href="../Php/login.php" style="color: #f5c542;">Iniciar Sesión</a></p>
    </div>
</body>
</html>
