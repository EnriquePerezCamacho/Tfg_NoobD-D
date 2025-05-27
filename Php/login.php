<?php
// login.php - Fragmento esencial
session_start();
require_once '../conexion.php';

// Verificar que el formulario haya sido enviado
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = trim($_POST['email']);
    $password = trim($_POST['password']);

    // Consulta para verificar las credenciales
    $query = "SELECT * FROM usuarios WHERE email = ?";
    $stmt = $pdo->prepare($query);
    $stmt->execute([$email]);
    $usuario = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($usuario && password_verify($password, $usuario['password'])) {
        // Almacenar el ID del usuario en la sesión
        $_SESSION['usuario_id'] = $usuario['id'];
        header("Location: perfil.php");
        exit();
    } else {
        $error = "Credenciales incorrectas.";
    }
}

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión - Página DnD</title>
    <link rel="stylesheet" href="../styles.css">
</head>
<body>

<!-- Incluir el menú de navegación -->
<?php include 'menu.php'; ?>

<div class="login-container">
    <h1>Iniciar Sesión</h1>
    
    <?php if (isset($error)): ?>
        <p style="color: red;"><?php echo $error; ?></p>
    <?php endif; ?>

<form method="post" action="login.php">
    <label for="email">Usuario:</label>
    <input type="email" name="email" required>

    <label for="password">Contraseña:</label>
    <input type="password" name="password" required>

    <button type="submit">Ingresar</button>
</form>
    
    <p>¿No tienes cuenta? <a href="registros.php">Regístrate aquí</a></p>
</div>

<style>
    .login-container {
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        background-color: #f4f4f9;
        border: 1px solid #ddd;
        border-radius: 8px;
        text-align: center;
    }

    .login-container h1 {
        margin-bottom: 20px;
    }

    .login-container form {
        display: flex;
        flex-direction: column;
        gap: 15px;
    }

    .login-container input {
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ddd;
        border-radius: 4px;
    }

    .login-container button {
        padding: 10px;
        background-color: #3a3f58;
        color: white;
        border: none;
        cursor: pointer;
        border-radius: 4px;
        font-size: 16px;
        transition: background 0.3s;
    }

    .login-container button:hover {
        background-color: #2d3149;
    }

    .login-container p {
        margin-top: 15px;
    }
</style>

</body>
</html>
