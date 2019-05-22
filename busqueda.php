<?php
    include('paquete.php');
	include 'conex.php';
    $precio = $_POST['precio'];
    $cuarto = $_POST['room'];
    $internet= $_POST['internet'];
    $bathroom = $_POST['bathroom'];
    $query = "select e.domicilio,e.costo,e.deposito,te.tipo AS edificio,ts.tipo AS servicio,a.nombre,a.contacto FROM edificio AS e INNER JOIN tipo_edificio AS te ON e.id_tipo=te.id INNER JOIN tipo_servicio AS ts ON e.id_servicio=ts.id INNER JOIN arrendatario AS a ON e.id_arrendatario=a.id WHERE ";    
    $restriccion = "e.costo <= ".$precio." and ts.id=".$internet." and te.id =".$cuarto."";
    $query = $query.$restriccion;
    $resultados = false;
	$query_result = mysqli_query($con,$query) or die ("Consulta fallida");
?>
    <body class="w3-light-grey">
    <!-- Navigation Bar -->
<div class="w3-bar w3-white w3-large">
  <a href="index.html" class="w3-bar-item w3-button w3-red w3-mobile"><img src="img/LOGOMAPLACE.png" id="logo"></a>
  <a href="cuartos.php" class="w3-bar-item w3-button w3-mobile">Cuartos</a>
  <a href="nosotros.html" class="w3-bar-item w3-button w3-mobile">Nosotros</a>
  <a href="contacto.html" class="w3-bar-item w3-button w3-mobile">Contácto</a>
  <a href="#contact" class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile"></a>
</div>
    <?php
        $i=0;
        $con = 2;
    	//Saco una fila y luego recorro todas las columnas
    	while($row = mysqli_fetch_array($query_result,MYSQLI_ASSOC))
        {
            
            $icono_wifi =$row['servicio'];
            if($icono_wifi == "Basicos,Internet")
                $icono_wifi = "<i class='fa fa-wifi'></i>";
            else
                $icono_wifi ="";
            if($i%3 == 0)
                echo "<div class='w3-row-padding w3-padding-16'>";
            echo "<div class='w3-third w3-margin-bottom'>
                              <img src='img/".$con."/1.JPG' alt='Norway' style='width:100%; hight= 13px !important;'>
                              <div class='w3-container w3-white'>
                                <h1>$".$row['costo']."</h1>
                                <h3 class='w3-opacity'>Deposito: $".$row['deposito']."</h3>
                                <p><b>Domicilio en Acatlima :</b> ".$row['domicilio']."</p>
                                <p><b>Servicios: </b>".$row['servicio']."</p>
                                <p><i class='fa fa-map-marker'></i><b> Distancia: </b>".rand(40,300)." metros</p>
                                <p><i class='fa fa-user'></i><b> Arrendatario: </b>".$row['nombre']."</p>
                                <p><i class='fa fa-phone'></i><b> Contacto: </b>".$row['contacto']."</p>
                                <br/>
                                <p class='w3-large'><i class='fa fa-bath'></i>  ".$icono_wifi."</p>
                                <button class='w3-button w3-block w3-black w3-margin-bottom'>Seleccionar</button>
                              </div>
                            </div>";
            if(($i+1)%3 == 0)
                echo "</div>";
            $i++;
            $resultados = true;
            if($con != 32)
                $con++;

        }
        if(!$resultados){
            echo "<center><h6>No se encontraron resultados :c<br/>¡TE MOSTRAMOS NUESTRAS SUGERENCIAS!</h6></center>";
            echo "<META HTTP-EQUIV='REFRESH' CONTENT='3;URL=http://localhost:8080/cuartos/cuartos.php'>";
        }
        //http://php.net/manual/es/mysql.examples-basic.php
    ?> 
</body>
</html>