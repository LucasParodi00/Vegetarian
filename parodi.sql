-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2022 a las 00:16:16
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parodi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `id` int(10) NOT NULL,
  `nombreCompleto` text NOT NULL,
  `email` tinytext NOT NULL,
  `telefono` text NOT NULL,
  `asunto` text NOT NULL,
  `mensaje` text NOT NULL,
  `contestado` tinyint(1) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `respuesta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consultas`
--

INSERT INTO `consultas` (`id`, `nombreCompleto`, `email`, `telefono`, `asunto`, `mensaje`, `contestado`, `fecha`, `respuesta`) VALUES
(3, 'Lucas Ivan Parodi ', 'lucasparodi09@outlook.com', '3794 409720', 'Consulta mayorista', 'Queria saber si tienen precios especiales para revendedores. ', 1, '2022-06-20 19:08:24', ''),
(4, 'Lucas Parodi', 'lucasparodi09@outlook.com', '3794 409720 ', 'Consulta', 'sadasdasdasd', 1, '2022-06-20 19:08:24', ''),
(5, 'Lucas Parodi', 'lucasparodi-2014@outlook.com', '3794 409720 ', 'Consulta', 'Todas las Comidas son sin TACC', 1, '2022-06-20 19:10:29', 'Buenas tardes, no todas las comidas son sin tacc. Solo tenemos dos productos sin tacc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id` int(60) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nameImg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`id`, `nombre`, `nameImg`) VALUES
(7, '1655017201_10ad4fabc14b54d3c382.jpg', 'tomate '),
(8, '1655017516_f3e03b32a8ec375d4693.jpg', 'Medallones de Verdura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-05-16-063456', 'App\\Database\\Migrations\\usuarios', 'default', 'App', 1652683505, 1),
(2, '2022-05-24-211610', 'App\\Database\\Migrations\\Productos', 'default', 'App', 1653427724, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id` int(11) NOT NULL,
  `descripcion` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(5) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `nombreProducto` varchar(60) NOT NULL,
  `seccion` text NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(7,2) NOT NULL,
  `baja` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `stock`, `nombreProducto`, `seccion`, `descripcion`, `precio`, `baja`) VALUES
(22, 100, 'Tarta de Cebolla y Queso ', 'Tartas', 'X Unidad', '250.00', NULL),
(23, 200, 'Tarta de Calabaza y Cebolla Caramelizada', 'Tartas', 'X Unidad', '250.00', NULL),
(24, 200, 'Tarta de Caprese', 'Tartas', 'X Unidad', '250.00', NULL),
(25, 200, 'Tarta de Zapallito y Zanahoria', 'Tartas', 'X Unidad', '250.00', NULL),
(26, 200, 'Tarta de Acelga y Morrones', 'Tartas', 'X Unidad', '250.00', NULL),
(27, 200, 'Tarta de Choclo y Zanahoria', 'Tartas', 'X Unidad', '250.00', NULL),
(28, 100, 'Medallón de Remolacha', 'Medallones', 'Pack x10', '500.00', NULL),
(29, 200, 'Medallón de Zanahoria', 'Medallones', 'Pack x10', '500.00', NULL),
(30, 200, 'Medallón de Multivegetal', 'Medallones', 'Pack x10', '500.00', NULL),
(31, 200, 'Medallón de Acelga', 'Medallones', 'Pack x10', '500.00', NULL),
(32, 200, 'Medallón de Lenteja', 'Medallones', 'Pack x10', '500.00', NULL),
(33, 200, 'Bomba de Acelga', 'Bombas', 'Pack x10', '280.00', NULL),
(34, 200, 'Bomba de Zanahoria', 'Bombas', 'Pack x10', '280.00', NULL),
(35, 200, 'Bomba de Remolacha', 'Bombas', 'Pack x10', '280.00', NULL),
(36, 200, 'Bomba de Lenteja', 'Bombas', 'Pack x10', '280.00', NULL),
(37, 200, 'Milanesa de Soja Rellena', 'Milanesa', 'Pack x4', '300.00', NULL),
(38, 200, 'Milanesa de Soja Simple', 'Milanesa', 'Pack x4', '220.00', NULL),
(39, 200, 'Milanesa de Soja y Espinaca', 'Milanesa', 'Pack x4', '350.00', NULL),
(40, 200, 'Milanesa de Calabaza y Quinoa', 'Milanesa', 'Pack x4', '380.00', NULL),
(41, 200, 'Pizza de Espinaca Integral', 'Pizza', 'X Unidad', '250.00', NULL),
(42, 200, 'Pizza de Zanahoria Integral', 'Pizza', 'X Unidad', '250.00', NULL),
(43, 200, 'Pizza de Remolacha Integral', 'Pizza', 'X Unidad', '250.00', NULL),
(44, 200, 'Pizza de Acelga sin TACC', 'Pizza', 'X Unidad', '260.00', NULL),
(45, 200, 'Pizza de Zanahoria sin TACC', 'Pizza', 'X Unidad', '260.00', NULL),
(46, 200, 'Falafel Relleno ', 'Falafel', 'Pack x 6', '280.00', NULL),
(47, 200, 'Falafel Simple', 'Falafel', 'Pack x 6', '250.00', NULL),
(48, 200, 'Sopa de Verdura', 'Otros', 'X Porción ', '200.00', NULL),
(49, 200, 'Guiso de Lentejas', 'Otros', 'X Porción ', '200.00', NULL),
(50, 200, 'Canastitas', 'Otros', 'Pack x 6', '250.00', NULL),
(51, 55000, 'legumbre', 'Tartas', 'legumbre', '99999.99', 1),
(52, 5000, 'Matambre a la Pizza', 'Tartas', 'Verduras\r\nPapas\r\nCebolla\r\nChocolate\r\netc', '5000.00', 1),
(53, 200, 'Combo 1', 'Combos', '\r\n- 2 Tartas Integrales\r\n- 2 Pizzas Integrales\r\n- 10 Bombas de verduras (rellenas de queso)\r\n- 2 Milanesas de calabaza y quinoa (rellenas de queso)\r\n                                ', '1300.00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(5) UNSIGNED NOT NULL,
  `rango` int(1) NOT NULL DEFAULT 1,
  `cuit` int(9) UNSIGNED NOT NULL,
  `nombreyapellido` varchar(60) NOT NULL,
  `perfil_id` varchar(15) NOT NULL,
  `password` varchar(130) NOT NULL,
  `email` tinytext NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `localidad` tinytext NOT NULL,
  `logeado` binary(1) NOT NULL,
  `baja` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `rango`, `cuit`, `nombreyapellido`, `perfil_id`, `password`, `email`, `telefono`, `localidad`, `logeado`, `baja`) VALUES
(108, 1, 200114858, 'chicho lina', 'chicho', '$2y$10$06CrpGOk7m5Sly8Th6cD2e5ttDRDt08P3OENsw1Svfp6Uu5fvd93W', 'chicho@gmail.com', '3794409720', 'Corrientes - Corrientes', 0x00, NULL),
(109, 1, 4294967295, 'Usuario Usuario', 'Usuario1', '$2y$10$WGECuV3ztFKztYXXro.7xuOhpUSPa3wSscyH2C.PwPE8zcz0rLXI.', 'Urser@gmail.com', '3794554422', 'Bella Vista - Corrientes', 0x00, NULL),
(110, 2, 4294967295, 'Administrador', 'Admin', '$2y$10$G6a.0yT5MDFgk2bTdv7BEuiwv0dJs4M4pfAy3kcbhOSxjI/rob9zy', 'admi@gmail.com', '3794409720', 'Corrientes - Corrientes', 0x00, NULL),
(111, 1, 4294967295, 'Yanina Medina', 'yanina', '$2y$10$3bsQbjRLJau7vfufqDQNb.n2/kTFk1krFl8TamDvcyp5uxSlHOCZi', 'yani@gmail.com', '37944002211', 'Corrientes - Corrientes', 0x00, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(6) NOT NULL,
  `email_usuario` text NOT NULL,
  `descripcion_venta` text NOT NULL,
  `precio_total` text NOT NULL,
  `cantidad` text NOT NULL,
  `sub_total` text NOT NULL,
  `fecha_venta` timestamp NOT NULL DEFAULT current_timestamp(),
  `precio` text NOT NULL,
  `usuario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `email_usuario`, `descripcion_venta`, `precio_total`, `cantidad`, `sub_total`, `fecha_venta`, `precio`, `usuario`) VALUES
(12, 'chicho@gmail.com', 'Combo 1</br>Tarta de Cebolla y Queso </br>Tarta de Calabaza y Cebolla Caramelizada</br>Tarta de Caprese</br>Tarta de Zapallito y Zanahoria</br>Tarta de Choclo y Zanahoria</br>', '2550', 'x 1</br>x 1</br>x 1</br>x 1</br>x 1</br>x 1</br>', '$ 1300</br>$ 250</br>$ 250</br>$ 250</br>$ 250</br>$ 250</br>', '2022-06-20 19:01:54', '$ 1300</br>$ 250</br>$ 250</br>$ 250</br>$ 250</br>$ 250</br>', 'chicho'),
(13, 'chicho@gmail.com', 'Combo 1</br>Tarta de Cebolla y Queso </br>Tarta de Calabaza y Cebolla Caramelizada</br>Tarta de Caprese</br>Tarta de Zapallito y Zanahoria</br>Tarta de Choclo y Zanahoria</br>Pizza de Acelga sin TACC</br>Pizza de Remolacha Integral</br>Pizza de Zanahoria Integral</br>', '5340', 'x 1</br>x 3</br>x 1</br>x 3</br>x 1</br>x 1</br>x 4</br>x 1</br>x 2</br>', '$ 1300</br>$ 750</br>$ 250</br>$ 750</br>$ 250</br>$ 250</br>$ 1040</br>$ 250</br>$ 500</br>', '2022-06-20 19:04:30', '$ 1300</br>$ 250</br>$ 250</br>$ 250</br>$ 250</br>$ 250</br>$ 260</br>$ 250</br>$ 250</br>', 'chicho'),
(14, 'Urser@gmail.com', 'Combo 1</br>Sopa de Verdura</br>Guiso de Lentejas</br>', '5700', 'x 3</br>x 6</br>x 3</br>', '$ 3900</br>$ 1200</br>$ 600</br>', '2022-06-20 19:13:26', '$ 1300</br>$ 200</br>$ 200</br>', 'Usuario1'),
(15, 'yani@gmail.com', 'Bomba de Acelga</br>Bomba de Zanahoria</br>Bomba de Remolacha</br>Guiso de Lentejas</br>Sopa de Verdura</br>', '1240', 'x 1</br>x 1</br>x 1</br>x 1</br>x 1</br>', '$ 280</br>$ 280</br>$ 280</br>$ 200</br>$ 200</br>', '2022-06-20 19:44:25', '$ 280</br>$ 280</br>$ 280</br>$ 200</br>$ 200</br>', 'yanina'),
(16, 'chicho@gmail.com', 'Combo 1</br>Milanesa de Soja Simple</br>Milanesa de Soja y Espinaca</br>Milanesa de Soja Rellena</br>Milanesa de Calabaza y Quinoa</br>', '2550', 'x 1</br>x 1</br>x 1</br>x 1</br>x 1</br>', '$ 1300</br>$ 220</br>$ 350</br>$ 300</br>$ 380</br>', '2022-06-20 21:38:17', '$ 1300</br>$ 220</br>$ 350</br>$ 300</br>$ 380</br>', 'chicho'),
(17, 'chicho@gmail.com', 'Combo 1</br>Tarta de Calabaza y Cebolla Caramelizada</br>Tarta de Cebolla y Queso </br>Tarta de Zapallito y Zanahoria</br>Tarta de Acelga y Morrones</br>Tarta de Choclo y Zanahoria</br>', '13750', 'x 5</br>x 1</br>x 19</br>x 2</br>x 1</br>x 6</br>', '$ 6500</br>$ 250</br>$ 4750</br>$ 500</br>$ 250</br>$ 1500</br>', '2022-06-20 22:15:41', '$ 1300</br>$ 250</br>$ 250</br>$ 250</br>$ 250</br>$ 250</br>', 'chicho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_cabezera`
--

CREATE TABLE `venta_cabezera` (
  `id_ventaC` int(5) NOT NULL,
  `monto_ventaC` decimal(10,2) NOT NULL,
  `id_usuarioC` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_detalle`
--

CREATE TABLE `venta_detalle` (
  `id_venta` int(5) NOT NULL,
  `factura_id` int(10) NOT NULL,
  `producto_id_venta` int(5) UNSIGNED NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`);

--
-- Indices de la tabla `venta_cabezera`
--
ALTER TABLE `venta_cabezera`
  ADD PRIMARY KEY (`id_ventaC`),
  ADD KEY `cabezera-usuaio` (`id_usuarioC`);

--
-- Indices de la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `detalleFactura-Cabezera` (`factura_id`),
  ADD KEY `producto_id_venta` (`producto_id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `venta_cabezera`
--
ALTER TABLE `venta_cabezera`
  MODIFY `id_ventaC` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  MODIFY `id_venta` int(5) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `venta_cabezera`
--
ALTER TABLE `venta_cabezera`
  ADD CONSTRAINT `venta_cabezera_ibfk_1` FOREIGN KEY (`id_usuarioC`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_cabezera_ibfk_2` FOREIGN KEY (`id_ventaC`) REFERENCES `venta_detalle` (`id_venta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD CONSTRAINT `venta_detalle_ibfk_1` FOREIGN KEY (`producto_id_venta`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
