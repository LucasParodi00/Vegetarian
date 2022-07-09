
 
<?php ?> 
<div class="contenedorCarritoP" id="JSDW">
    <div class="containerProductos" id="containerProductos" style="margin-top: 40px;">
        <form class="formularioProductos" id="formularioProductos">

            <textarea style="border-radius: 10px; max-width: 1140px" hidden cols="130" rows="5" name="pedido" id="pedido" readonly value=""><?php echo $wasap?></textarea>
            
            
            <div class="contenedorImput" id="contenedorImput">
                <label for="nombre">Nombre y Apellido</label>
                <input type="text"  name="nombreCliente" id="nombre" placeholder="Nombre y Apellido">
            </div>

            <div class="contenedorImput" id="contenedorImput">
                <label for="telefono">Telefono</label>
                <input type="text" name="telefono" id="telefono" placeholder="Telefono" >
            </div>

            <div class="contenedorImput" id="contenedorImput">
                <label for="direccion">Direccion</label>
                <input type="text"  name="direccion" id="direccion" placeholder="Su direccion">
            </div>

            <div class="contenedorImput" id="contenedorImput">
                <label for="Monto">Monto</label>
                <input type="text" name="monto" id="monto" readonly value=" $ <?php echo $monto ?>">
            </div>
 
            <div class="contenedorImput" id="contenedorImput">
                <label for="Monto">Detalles</label>
                <input type="text" name="monto" id="detalles" placeholder="Por ejemplo: 'sin queso', 'sin cebolla', etc..." value="">
            </div>            
        </form>
        <a id="send"  href="<?php echo base_url('comprar')?>" class="btn btn-success">CONFIRMAR COMPRA</a>
    </div> 
</div>

