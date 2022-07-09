<body>
    <div class="contenedorCarritoP">
        <div class="contenedorCarrito">
            
            <div class="tituloCarrito">
                <h1>CARRITO DE COMPRAS</h1>
                <div class="botonesCarritoSup">
                    <a class="btn btn-danger btn1 col-ml-2" href="<?php echo base_url('vaciarCarrito')?>"></i>Vaciar carrito</a>
                </div>
            </div>
             
            <?php $i = 1; 
            $total = 0;
            ?>
            
            <?php foreach($cart->contents() as $carrito): ?>
                
                <div class="unProductoCarrito">                

                    <div class="nombreProductoPrecio">
                        <p> <?php echo $carrito['name']?> </p>
                        <i> $ <?php echo $carrito['price']?></i>
                    </div>
                    
                    <div class="cantidadProductos" >
                        <a href="<?php echo base_url("restar_carrito?id=").$carrito["rowid"] ?>">-</a>
                        <p><?php echo $carrito['qty']?></p>
                        <a href="<?php echo base_url("sumar_carrito?id=").$carrito["rowid"] ?>">+</a>
                    </div>
                    <div class="cantidadProductos" id="cantidadProducto">
                        <p> $<?php echo $carrito['subtotal']; $total = $total + $carrito['subtotal']?></p>
                    </div>

                    <div class="cancelarPedido">
                        <a href="<?php  echo base_url('eliminarCarrito?rowid='.$carrito['rowid']); ?>"><img src="assets/img/iconos/cancel.png" alt=""></a>
                    </div>

                </div>

            <?php endforeach ?>
                
            <div class="totalCompra">
                <?php if ($cart -> contents() != null){?>
                <a href="<?php echo base_url('productos')?>" class="btn btn-warning">SEGUIR COMPRANDO</a>
                <h4>TOTAL: $ <?php echo $total ?> </h4>
                <a href="<?php echo base_url('wasap')?>" class="btn btn-success">CONTINUAR</a>
                <?php } ?>
            </div>
        </div>
    </div>

   
</body>  