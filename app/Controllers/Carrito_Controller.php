<?php
namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\Controller;
use App\Models\Ventas_Model;
use CodeIgniterCart\Cart;

class Carrito_Controller extends BaseController{

    public function agregar_carrito(){
        $request = \Config\Services::Request();
        $cart = \Config\Services::Cart();

     
            $cart->insert(array(
            'id'      => $request->getPost('id'),
            'qty'     => 1,
            'price'   => $request->getPost('precio'),
            'name'    => $request->getPost('nombre'),
            ));
        return redirect()->route ('productos');
    }

    public function verCarrito(){
        $cart = \Config\Services::Cart();
        $cart = array('cart' => $cart);

        //var_dump($cart);

        $data['titulo'] = 'Carrito';
        echo view('head',$data);
        echo view('navegador');
        echo view('carrito',$cart);
        echo view('footer');
    }

    public function eliminarCarrito(){
        $request = \Config\Services::request();
        $cart = \Config\Services::cart();
         
        $rowid = $request->getPostGet('rowid');

        $cart ->remove($rowid);

        return redirect()->route('carrito');

        //id = id del producto
        //rowid = fila del producto
    }

    public function vaciarCarrito(){
        $cart = \Config\Services::cart();

        $cart->destroy();

        return redirect()->route('carrito');

    }

    public function sumar_carrito(){
        $cart = \Config\Services::cart();
        $cantidad = $cart->getItem($this->request->getGet("id"))["qty"];
        $cart->update(array(
            "rowid" => $this->request->getGet("id"),
            "qty" => $cantidad+1
        ));
        return redirect()->route('carrito');
    }

    public function restar_carrito(){
        $cart = \Config\Services::cart();
        $cantidad = $cart->getItem($this->request->getGet("id"))["qty"];
        //var_dump($cart->); 
        if($cantidad > 1){ 
            $cart->update(array(
                "rowid" => $this->request->getGet("id"),
                "qty" => $cantidad-1
            ));
        }
        return redirect()->route('carrito');
    }

    public function comprar (){ 
        $ventasModel = new Ventas_Model();
        $cart = \Config\Services::cart();  
        //$descripcion = '';
        $productos= '';
        $cantidad= '';
        $subTotal= '';
        $precio = '';
        $total = 0;
        $totalP = 0;

        foreach ($cart->contents() as $ventas){
            //$descripcion = $descripcion. " producto: " .$ventas ['name'] . " cantidad: " .$ventas ['qty'] . " SubTotal: ". $ventas['subtotal']   ."</br>";    

            $productos = $productos. $ventas['name'] ."</br>";
            $cantidad  = $cantidad. "x ".$ventas ['qty'] ."</br>";
            $subTotal = $subTotal. "$ ".$ventas ['subtotal'] ."</br>";
            $precio = $precio . "$ ".$ventas['price']. "</br>";
        } 
        

        if($cart -> total() > 10000){
            $totalP = $cart ->total() * .30;
        } 

        $total = $cart ->total() - $totalP;
        $datos = [
            'descripcion_venta' => $productos,
            'cantidad'          => $cantidad,
            'sub_total'          => $subTotal,
            'precio'            => $precio,
            'precio_total'      => $cart -> total(),
            'precio_mayorista'  => $total,

        ];
        
        $ventasModel -> insert($datos);
        return redirect()->route('vaciarCarrito');
    }

      
    public function verVentas(){
        $ventas = new Ventas_Model();
        $verVentas['ventas']= $ventas -> orderBy('id_Venta','ASC') -> findAll();

        $data['titulo'] = 'Ventas';
        echo view('head',$data);
        echo view('navegador');
        echo view('back/carrito/verVentas',$verVentas);
        echo view('footer');        
    }
    
    

    public function formWasap(){
        $cart = \Config\Services::cart(); 
        $descripcion = '';
        $montos = 0.0;
       
        
        foreach ($cart->contents() as $ventas){
            $descripcion= $descripcion .$ventas ['name'] . "(x" .$ventas ['qty'] .")%0A";
        } 

        if($cart -> total() > 10000.00){
            $montos = $cart->total() * .30;
        } 

        $monto ['monto'] = $cart->total() - $montos;

        $data['wasap']= $descripcion;
        $data['titulo']='Vegetarian :: Confirmar Pedido';
        echo view('head',$data);
        echo view('navegador');
        
        
        return view('back/carrito/formWasap',$monto). view('footer');
    }



    

}
?>