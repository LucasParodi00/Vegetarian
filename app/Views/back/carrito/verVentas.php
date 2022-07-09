


<div class="contenedorAcordeon">
    <div class="containerAcord">

    <?php $i = 1?>
    <?php foreach ($ventas as $ventas): ?>
        <?php $precioBonificado= $ventas['precio_total'] - $ventas['precio_mayorista']  ?>
        <section id="menu<?php echo $i?>">
			<a href="#menu<?php echo $i?>">ID Venta: <?php echo $ventas['id_venta']?> Fecha: <?php echo $ventas['fecha_venta']?> </a>

            <div class="detallesDeVenta">
                <div class="detalleProductos">
                    <p><?php echo $ventas['descripcion_venta']?></p>
                </div>
                <div class="detalleProductos">
                    <p><?php echo $ventas['cantidad']?></p>
                </div>
                <div class="detalleProductos">
                    <p><?php echo $ventas['precio']?></p>
                </div>
                <div class="detalleProductos">
                    <p><?php echo $ventas['sub_total']?></p>
                </div>
            </div>

            <?php if ($ventas['precio_total'] > 10000) {?> 
            <div class="detallePrecioVenta">
                <p> SUB TOTAL: $ <?php echo $ventas['precio_total']?> | DESCUENTO MAYORISTA: <?php echo $precioBonificado?> | PRECIO FINAL: <?php echo $ventas['precio_mayorista'] ?></p>
            </div>
            <?php } else {?>
            <div class="detallePrecioVenta">
            <p> TOTAL: $ <?php echo $ventas['precio_total']?> | DESCUENTO MAYORISTA: <b>NO CORRESPONDE</b></p>
            </div>
            <?php }?>

		</section>
        <?php $i++?>
    <?php endforeach ?>
	</div>
</div>