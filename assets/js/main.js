 
 
const evento = document.getElementById('send')
const enviarFormulario =() => {
    let nombre = document.getElementById('nombre').value;
    let telefono = document.getElementById('telefono').value;
    let direccion = document.getElementById('direccion').value;
    let pedido = document.getElementById('pedido').value;
    let monto = document.getElementById('monto').value;
    let detalles = document.getElementById('detalles').value;
    let numero = 543794409720;

    var win = window.open(`https://wa.me/${numero}?text=Pedido%20de:%20*${nombre}*%0A%0A${pedido}%0AMonto:%20*${monto}*%0A%0ADetalles:%20_${detalles}_%0ADireccion:%20*${direccion}*%0A`,'_blank');

}

evento.addEventListener('click', enviarFormulario)
