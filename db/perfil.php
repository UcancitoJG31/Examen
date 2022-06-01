<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css">
    <title>Perfil</title>
</head>

<body>
    <h3>Ingrese sus datos</h3>
    <form action="registroperfil.php" method="POST">
    <div class="mb-3"></div>
    <label class="from-lable">Ingresa el nombre</label>
    <input type="text" class="form-control" name="nombre" required />
    </div>
    <div class="mb-3">
        <label class="from-lable">Ingresa el apellido paterno</label>
        <input type="text" class="form-control" name="apellido_paterno" required />
    </div>
    <div class="mb-3">
        <label class="from-lable">Ingresa el apellido Materno</label>
        <input type="text" class="form-control" name="apellido_materno" required />
    </div>
    <div class="mb-3">
        <label class="from-lable">Ingresa el Telefono</label>
        <input type="number" class="form-control" name="telefono" required />
    </div>
    <div class="mb-3">
        <label class="from-lable">Ingresa el Correo</label>
        <input type="email" class="form-control" name="correo" required />
    </div>
    <div class="mb-3">
        <label class="from-lable">Ingresa el Usuario</label>
        <input type="text" class="form-control" name="usuario" required />
    </div>
    <div class="mb-3">
        <label class="from-lable">Ingresa la Contraseña</label>
        <input type="text" class="form-control" name="contraseña" required />
    </div>
    
    <button
        type="submit"
        name="enviar"
        class="btn btn-primary"
        value="Insertar perfil"
      >
        Insertar
      </button>
    
    </form>
    <table class="table">
        <thead>
          <tr>
            
            <th scope="col">Nombre</th>
            <th scope="col">Apellido Paterno</th>
            <th scope="col">Apellido Materno</th>
            <th scope="col">Telefono</th>
            <th scope="col">Correo</th>
            <th scope="col">Usuario</th>
            <th scope="col">Contraseña</th>
          </tr>
        </thead>
        <tbody>
        <?php
            include('conec.php');

            $consulta = "SELECT * FROM perfil";
$resultado = mysqli_query($conexion, $consulta);
while($fila = mysqli_fetch_array($resultado)){
  
?>
    <tr>
            <td> <?php echo $fila["nombre"] ?> </td>
            <td> <?php echo $fila["apellido_paterno"] ?></td>
            <td> <?php echo $fila["apellido_materno"] ?></td>
            <td> <?php echo $fila["telefono"] ?></td>
            <td> <?php echo $fila["correo"] ?></td>
            <td> <?php echo $fila["usuario"] ?></td>
            <td> <?php echo $fila["contraseña"] ?></td>

    </tr>
      <?php } ?>
  </tbody>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
    crossorigin="anonymous"></script>

        </tbody>
</body>

</html>