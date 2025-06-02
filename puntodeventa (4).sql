-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2025 a las 16:56:18
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `puntodeventa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `saldo_inicial` decimal(10,2) NOT NULL,
  `saldo_final` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`id`, `fecha`, `saldo_inicial`, `saldo_final`) VALUES
(1, '2025-03-07 06:24:25', 8000.00, 0.00),
(2, '2025-03-07 15:40:22', 500.00, 0.00),
(3, '2025-03-07 15:41:37', 9000.00, 0.00),
(4, '2025-03-07 15:43:34', 500.00, 0.00),
(5, '2025-03-07 15:44:25', 2000.00, 0.00),
(6, '2025-03-07 15:45:51', 6000.00, 0.00),
(7, '2025-03-07 15:46:24', 700.00, 0.00),
(8, '2025-03-07 15:47:02', 700.00, 0.00),
(9, '2025-03-07 15:48:07', 900.00, 0.00),
(10, '2025-03-07 15:48:52', 800.00, 0.00),
(11, '2025-03-07 15:50:31', 800.00, 0.00),
(12, '2025-03-18 04:23:17', 5000.00, 0.00),
(13, '2025-03-18 04:39:47', 60000.00, 0.00),
(14, '2025-03-21 01:02:49', 5000.00, 0.00),
(15, '2025-03-21 01:43:08', 5000.00, 0.00),
(16, '2025-03-21 02:24:50', 8000.00, 0.00),
(17, '2025-03-21 02:26:15', 8000.00, 0.00),
(18, '2025-03-21 02:33:30', 700.00, 0.00),
(19, '2025-03-21 02:35:58', 5000.00, 0.00),
(20, '2025-03-21 02:36:26', 800.00, 0.00),
(21, '2025-03-21 02:38:09', 5000.00, 0.00),
(22, '2025-03-21 02:39:49', 5000.00, 0.00),
(23, '2025-03-21 02:44:38', 8000.00, 0.00),
(24, '2025-03-21 02:49:04', 700.00, 0.00),
(25, '2025-03-21 02:49:45', 8000.00, 0.00),
(26, '2025-03-21 02:51:34', 5000.00, 0.00),
(27, '2025-03-21 02:53:00', 8000.00, 0.00),
(28, '2025-03-21 02:57:18', 5000.00, 0.00),
(29, '2025-03-21 03:02:32', 8000.00, 0.00),
(30, '2025-03-21 03:05:26', 8000.00, 0.00),
(31, '2025-03-21 03:05:42', 8000.00, 0.00),
(32, '2025-03-21 03:52:37', 5000.00, 0.00),
(33, '2025-03-21 03:55:15', 5000.00, 0.00),
(34, '2025-03-21 15:35:27', 5000.00, 0.00),
(35, '2025-03-21 15:40:05', 5000.00, 0.00),
(36, '2025-03-21 15:41:40', 800.00, 0.00),
(37, '2025-03-21 15:46:06', 5000.00, 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(6, 'Motor y Componentes'),
(7, 'Sistema de Enfriado'),
(8, 'Transmision'),
(9, 'Sistema de Frenado'),
(10, 'Herramientas Manuales'),
(11, 'Herramientas Electricas'),
(12, 'Seguridad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cortes_caja`
--

CREATE TABLE `cortes_caja` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `ventas_totales` decimal(10,2) NOT NULL,
  `fondo_fijo` decimal(10,2) NOT NULL,
  `total_teorico` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cortes_caja`
--

INSERT INTO `cortes_caja` (`id`, `fecha`, `ventas_totales`, `fondo_fijo`, `total_teorico`) VALUES
(1, '2023-10-01', 25000.00, 5000.00, 30000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id` int(11) NOT NULL,
  `venta_id` int(11) DEFAULT NULL,
  `codigo_barra` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id`, `venta_id`, `codigo_barra`, `nombre`, `cantidad`, `precio_unitario`, `total`) VALUES
(1, 19, NULL, 'Duralast ', 1, 16.00, 16.00),
(2, 19, NULL, 'Liquido de Frenos Bardahl Dot3 900 ml', 1, 104.00, 104.00),
(3, 20, NULL, 'Trupper  Llave Stilson 12\"', 1, 174.00, 174.00),
(4, 21, NULL, 'Trupper  Llave Stilson 12\"', 1, 174.00, 174.00),
(5, 22, NULL, 'Liquido de Frenos Bardahl Dot3 900 ml', 3, 104.00, 312.00),
(6, 22, NULL, 'Trupper  Llave Stilson 12\"', 4, 174.00, 696.00),
(7, 22, NULL, 'Duralast ', 1, 16.00, 16.00),
(8, 23, NULL, 'Duralast ', 5, 16.00, 80.00),
(9, 23, NULL, 'Liquido de Frenos Bardahl Dot3 900 ml', 3, 104.00, 312.00),
(10, 23, NULL, 'Trupper  Llave Stilson 12\"', 1, 174.00, 174.00),
(11, 24, NULL, 'Liquido de Frenos Bardahl Dot3 900 ml', 4, 104.00, 416.00),
(12, 24, NULL, 'Duralast ', 1, 16.00, 16.00),
(13, 25, NULL, 'Duralast ', 1, 16.00, 16.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_cortes`
--

CREATE TABLE `historial_cortes` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `ventas_totales` decimal(10,2) NOT NULL,
  `fondo_fijo` decimal(10,2) NOT NULL,
  `total_teorico` decimal(10,2) NOT NULL,
  `retiros` decimal(10,2) NOT NULL,
  `pago_electronico` decimal(10,2) NOT NULL,
  `gastos_extra` decimal(10,2) NOT NULL,
  `total_fisico` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial_cortes`
--

INSERT INTO `historial_cortes` (`id`, `fecha`, `ventas_totales`, `fondo_fijo`, `total_teorico`, `retiros`, `pago_electronico`, `gastos_extra`, `total_fisico`) VALUES
(1, '2025-03-12', 0.00, 0.00, 800.00, 1000.00, 0.00, 0.00, -1000.00),
(2, '2025-03-20', 0.00, 500.00, 800.00, 500.00, 0.00, 0.00, 0.00),
(3, '2025-03-17', 0.00, 500.00, 800.00, 500.00, 500.00, 500.00, 0.00),
(4, '2025-03-20', 0.00, 500.00, 800.00, 500.00, 500.00, 0.00, 500.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_ordenes`
--

CREATE TABLE `historial_ordenes` (
  `id` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `productos` text NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial_ordenes`
--

INSERT INTO `historial_ordenes` (`id`, `id_proveedor`, `productos`, `total`, `fecha`) VALUES
(1, 7878, '[{\"codigo\":\"07919122829\",\"cantidad\":1,\"precio\":20},{\"codigo\":\"7502224650151\",\"cantidad\":1,\"precio\":20},{\"codigo\":\"882380572304\",\"cantidad\":1,\"precio\":20}]', 60.00, '2024-12-02 18:47:39'),
(2, 4242, '[{\"codigo\":\"7501390505159\",\"cantidad\":12,\"precio\":20}]', 240.00, '2024-12-02 19:00:11'),
(3, 302302, '[{\"codigo\":\"5645464\",\"cantidad\":12,\"precio\":1044},{\"codigo\":\"7455555\",\"cantidad\":21,\"precio\":174}]', 16182.00, '2024-12-02 19:07:45'),
(4, 7878, '[{\"codigo\":\"7501087551353\",\"cantidad\":1,\"precio\":20},{\"codigo\":\"075261164463\",\"cantidad\":1,\"precio\":20},{\"codigo\":\"1335780\",\"cantidad\":1,\"precio\":20}]', 60.00, '2024-12-02 19:17:09'),
(5, 4242, '[{\"codigo\":\"7501390505159\",\"nombre\":\"Aceite Roshfrans\",\"cantidad\":1,\"precio\":20},{\"codigo\":\"7501087542030\",\"nombre\":\"Bardahl\",\"cantidad\":1,\"precio\":232},{\"codigo\":\"7501234567890\",\"nombre\":\"Martillo Claw Pro\",\"cantidad\":1,\"precio\":81},{\"codigo\":\"7509876543210\",\"nombre\":\"Trupper  Llave Stilson 12\\\"\",\"cantidad\":1,\"precio\":174}]', 507.00, '2025-02-09 15:51:42'),
(6, 4242, '[{\"codigo\":\"7501087542030\",\"nombre\":\"Bardahl\",\"cantidad\":1,\"precio\":232},{\"codigo\":\"7501234567890\",\"nombre\":\"Martillo Claw Pro\",\"cantidad\":1,\"precio\":81}]', 313.00, '2025-02-09 15:59:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `codigo_barra` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `existencias` int(11) NOT NULL,
  `presentacion_producto` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `imagen_producto` longblob DEFAULT NULL,
  `descripcion` varchar(500) NOT NULL,
  `precio_compra` int(50) NOT NULL,
  `precio_venta` int(50) NOT NULL,
  `proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `codigo_barra`, `nombre`, `existencias`, `presentacion_producto`, `categoria`, `imagen_producto`, `descripcion`, `precio_compra`, `precio_venta`, `proveedor`) VALUES
(32, '07919122829', 'Castrol GTX', 10, '', '8', 0x43617374726f6c4754582e6a7067, 'Aceite Miltigrasol Castrol 949ml', 10, 20, 7878),
(33, '7501390505159', 'Aceite Roshfrans', 10, '', '8', 0x416365697465204d756c7469677261646f20526f73686672616e7320486920456e65726779203230772d3530203935306d6c2e77656270, 'Aceite Multigrado Roshfrans Hi Energy 20w-50 950ml', 10, 20, 4242),
(34, '7502224650151', 'Valvoline Vr1 ', 10, '', '8', 0x4c7562726963616e74652056616c766f6c696e65c2ae2056723120526163696e6720323077353020536c2e77656270, 'Lubricante Valvoline® Vr1 Racing 20w50 Sl', 10, 20, 7878),
(36, '7501087551353', 'Bardahl', 10, '', '8', 0x4cc3ad717569646f2070617261206672656e6f73204261726461686c20444f5433204c463320333530206d6c2e77656270, 'Líquido para frenos Bardahl DOT3 LF3 350 ml', 10, 20, 7878),
(38, '7501087542030', 'Bardahl', 10, '', '7', 0x416e7469636f6e67656c616e74652e6a7067, 'Garrafa de Anticongelante Concentrado Color Verde Bardahl', 100, 232, 4242),
(39, '075261164463', 'Bardahl ', 10, '', '7', 0x30, 'Bardahl Anticongelante Ultra Concentrado 3.78L', 10, 20, 7878),
(47, '269391', 'Duralast ', 5, '', '7', 0x4465706f7369746f2d5265637570657261646f722d64652d5265667269676572616e74652d64656c2d5261646961646f722d447572616c6173742d52413130392e6a7067, 'Deposito Recuperador de Refrigerante del Radiador Duralast RA109', 15, 30, 7878),
(53, '700800', 'Duralast ', 5, '', '9', 0x42616c617461732d64652d436572616d6963612d447572616c6173742d4d4b443831352e6a7067, 'Balatas de Ceramica Duralast MKD815', 12, 16, 7878),
(61, '7501087551902', 'Liquido de Frenos Bardahl Dot3 900 ml', 5, '', '9', 0x626f74656c6c612d64652d3930306d6c2d64652d6c69717569646f2d64652d6672656e6f732d646f742d332d6261726461686c202831292e6a7067, 'Liquido de Frenos Bardahl Dot3 900 ml', 50, 104, 78848),
(62, '0276608444', 'Chevron Hidráulic Aw Iso 68', 10, '', '8', 0x63686576726f6e5f636c61726974795f6879647261756c69635f6f696c5f61775f36385f6879647261756c69635f666c7569645f7061696c2e6a7067, 'Chevron Hidráulic Aw Iso 68', 300, 638, 302302),
(63, '7502271010687', 'Lubricante AKRON para Cadena 545ml/377g', 25, '', '9', 0x363136383765363935613732335f323336313134306a70672e6a7067, 'Lubricante AKRON para Cadena 545ml/377g', 45, 87, 78848),
(64, '7501234567890', 'Martillo Claw Pro', 13, '', '10', 0x4d617274696c6c6f20436c61772050726f2e6a7067, 'Martillo Claw Pro', 50, 81, 4242),
(65, '7509876543210', 'Trupper  Llave Stilson 12\"', 10, '', '10', 0x5472757070657220204c6c617665205374696c736f6e2031322e77656270, 'Trupper  Llave Stilson 12\"', 100, 174, 4242),
(66, '7504455667788', 'Aceite de Motor 10W-30', 45, '', '8', 0x416365697465206465204d6f746f72203130572d33302e77656270, 'Aceite de Motor 10W-30', 139, 174, 7878),
(68, '7504455667004', 'Bujías de Iridio NGK', 15, '', '6', 0x30, 'Bujías de Iridio NGK', 30, 70, 7878),
(69, '7505566778005', 'Sensor de Oxígeno Universal', 3, '', '6', 0x53656e736f72206465204f78c3ad67656e6f20556e6976657273616c2e77656270, 'Sensor de Oxígeno Universal', 600, 1160, 78848),
(70, '7506677889006', 'Termostato para Motor 180°F', 5, '', '6', 0x30, 'Termostato para Motor 180°F', 250, 464, 302302),
(71, '7501100114000', 'Kit de Empaques para Motor', 15, '', '6', 0x4b697420646520456d7061717565732070617261204d6f746f722e77656270, 'Kit de Empaques para Motor', 300, 406, 302302),
(72, '7502200225001', 'Bomba de Combustible Eléctrica', 23, '', '6', 0x426f6d626120646520436f6d6275737469626c6520456cc3a96374726963612e706e67, 'Bomba de Combustible Eléctrica', 100, 268, 302302),
(73, '7503300336002', 'Manguera de Refrigerante 1.5\" x 1 m', 10, '', '6', 0x4d616e6775657261206465205265667269676572616e746520312e3520782031206d2e6a7067, 'Manguera de Refrigerante 1.5\" x 1 m', 110, 220, 302302),
(74, '7504400447003', 'Alternador 12V 90A', 5, '', '6', 0x416c7465726e61646f7220313256203930412e6a7067, 'Alternador 12V 90A', 1600, 2900, 302302),
(75, '7505500558004', 'Juego de Pistones 1.6L', 7, '', '6', 0x4a7565676f20646520506973746f6e657320312e364c2e77656270, 'Juego de Pistones 1.6L', 1000, 2204, 302302),
(76, '7506600669005', 'Cadena de Distribución Metálica', 9, '', '6', 0x436164656e612064652044697374726962756369c3b36e204d6574c3a16c6963612e6a7067, 'Cadena de Distribución Metálica', 500, 1740, 302302),
(77, '7501010103009', 'Cojinetes de Cigüeñal', 14, '', '6', 0x436f6a696e6574657320646520436967c3bc65c3b1616c2e6a7067, 'Cojinetes de Cigüeñal', 200, 580, 4242),
(78, '7503232325001', 'Tapa de Radiador 16 PSI', -2, '', '6', 0x54617061206465205261646961646f72203136205053492e6a7067, 'Tapa de Radiador 16 PSI', 100, 269, 7878),
(79, '7505454547003', 'Balero de Clutch', 30, '', '6', 0x42616c65726f6465436c75742e77656270, 'Balero de Clutch', 100, 174, 4242),
(80, '7508787871006', 'Retenes de Aceite para Motor', 35, '', '6', 0x526574656e6573206465204163656974652070617261204d6f746f722e77656270, 'Retenes de Aceite para Motor', 150, 232, 4242),
(81, '7504242425000', 'Tapón de Aceite Universal', 9, '', '6', 0x546170c3b36e2064652041636569746520556e6976657273616c2e77656270, 'Tapón de Aceite Universal', 50, 116, 78848),
(82, '7505564550005', ' Termostato 195°F', 15, '', '7', 0x5465726d6f737461746f20313935c2b0462e77656270, ' Termostato 195°F', 90, 174, 302302),
(83, '7506674560006', 'Manguera Superior de Radiador 1.5\" x 1 m', 12, '', '7', 0x4d616e6775657261205375706572696f72206465205261646961646f7220312e3520782031206d2e6a7067, 'Manguera Superior de Radiador 1.5\" x 1 m', 50, 116, 78848),
(84, '7507784570007', ' Tapa de Radiador con Válvula de Alivio', 4, '', '7', 0x54617061206465205261646961646f7220636f6e2056c3a16c76756c6120646520416c6976696f2e77656270, ' Tapa de Radiador con Válvula de Alivio', 150, 232, 4242),
(85, '7508894580008', 'Sensor de Temperatura del Refrigerante', 15, '', '7', 0x53656e736f722064652054656d70657261747572612064656c205265667269676572616e74652e6a7067, 'Sensor de Temperatura del Refrigerante', 150, 232, 302302),
(86, '7502124610011', ' Refrigerante Orgánico ROJO 1 Galón', 20, '', '7', 0x5265667269676572616e7465204f7267c3a16e69636f20524f4a4f20312047616cc3b36e2e77656270, ' Refrigerante Orgánico ROJO 1 Galón', 280, 406, 4242),
(87, '7505454640014', 'Viscoso para Ventilador de Motor', 2, '', '7', 0x566973636f736f20706172612056656e74696c61646f72206465204d6f746f722e4a5047, 'Viscoso para Ventilador de Motor', 350, 928, 4242),
(88, '7506564650015', 'Líquido de Limpieza para Radiadores', 10, '', '7', 0x4cc3ad717569646f206465204c696d7069657a612070617261205261646961646f7265732e77656270, 'Líquido de Limpieza para Radiadores', 250, 406, 7878),
(89, '7501234710001', 'Aceite para Transmisión Automática ATF Dexron III', 16, '', '8', 0x4163656974652070617261205472616e736d697369c3b36e204175746f6dc3a1746963612041544620446578726f6e204949492e77656270, 'Aceite para Transmisión Automática ATF Dexron III', 150, 290, 7878),
(90, '7503344730003', 'Valvulina 80W-90 para Transmisión Manual', 20, '', '8', 0x56616c76756c696e61203830572d39302070617261205472616e736d697369c3b36e204d616e75616c2e6a7067, 'Valvulina 80W-90 para Transmisión Manual', 200, 348, 78848),
(91, '7509904790009', 'Retén de Aceite para Eje de Transmisión', 20, '', '8', 0x526574c3a96e20646520416365697465207061726120456a65206465205472616e736d697369c3b36e2e77656270, 'Retén de Aceite para Eje de Transmisión', 149, 232, 4242),
(93, '7509894880018', 'Tapa de Registro para Transmisión Manual', 8, '', '8', 0x5461706120646520526567697374726f2070617261205472616e736d697369c3b36e204d616e75616c2e6a7067, 'Tapa de Registro para Transmisión Manual', 200, 580, 7878),
(94, '7502024890019', 'Rodamientos para Caja de Cambios', 50, '', '8', 0x526f64616d69656e746f7320706172612043616a612064652043616d62696f732e6a7067, 'Rodamientos para Caja de Cambios', 100, 174, 78848),
(95, '7502234920002', ' Líquido de Frenos DOT 4', 10, '', '9', 0x4cc3ad717569646f206465204672656e6f7320444f5420342e6a7067, ' Líquido de Frenos DOT 4', 149, 232, 302302),
(96, '7503344930003', 'Disco de Freno Ventilado 12\"', 6, '', '9', 0x446973636f206465204672656e6f2056656e74696c61646f2031322e77656270, 'Disco de Freno Ventilado 12\"', 500, 928, 302302),
(97, '7504454940004', 'Caliper de Freno Derecho', 2, '', '9', 0x43616c69706572206465204672656e6f204465726563686f2e77656270, 'Caliper de Freno Derecho', 500, 1160, 302302),
(98, '7505564950005', 'Manguera de Freno Flexible', 9, '', '9', 0x4d616e6775657261206465204672656e6f20466c657869626c652e77656270, 'Manguera de Freno Flexible', 200, 406, 302302),
(99, '7507784970007', 'Tambor de Freno Trasero', 5, '', '9', 0x54616d626f72206465204672656e6f205472617365726f2e6a7067, 'Tambor de Freno Trasero', 500, 1021, 7878),
(100, '7501015000010', ' Zapatas de Freno para Tambor', 6, '', '9', 0x5a617061746173206465204672656e6f20706172612054616d626f722e6a7067, ' Zapatas de Freno para Tambor', 500, 812, 78848),
(101, '7502025090019', 'Protector de Polvo para Disco de Freno', 10, '', '9', 0x50726f746563746f7220646520506f6c766f207061726120446973636f206465204672656e6f2e6a7067, 'Protector de Polvo para Disco de Freno', 100, 290, 4242),
(102, '7503135100020', 'Tornillo de Purga para Freno', 8, '', '9', 0x546f726e696c6c6f2064652050757267612070617261204672656e6f2e77656270, 'Tornillo de Purga para Freno', 150, 232, 7878),
(103, '7503345130003', 'Juego de Herramientas para Mantenimiento de Frenos', 3, '', '9', 0x4a7565676f2064652048657272616d69656e7461732070617261204d616e74656e696d69656e746f206465204672656e6f732e6a7067, 'Juego de Herramientas para Mantenimiento de Frenos', 500, 1044, 4242),
(104, '7503235220012', 'Aceite para Frenos de Equipo Pesado', 10, '', '9', 0x4163656974652070617261204672656e6f732064652045717569706f2050657361646f2e6a7067, 'Aceite para Frenos de Equipo Pesado', 200, 290, 4242),
(105, '7505565350005', 'Cinta Métrica de 5m Trupper', 10, '', '10', 0x43696e7461204dc3a9747269636120646520356d2e77656270, 'Cinta Métrica de 5m Trupper', 40, 93, 4242),
(106, '7509905390009', 'Llave de Cruz para Auto', 6, '', '10', 0x4c6c617665206465204372757a2070617261204175746f2e77656270, 'Llave de Cruz para Auto', 80, 174, 78848),
(107, '7501015400010', 'Pala de Jardinera Trupper', 5, '', '10', 0x50616c61206465204a617264696e65726120545275707065722e6a7067, 'Pala de Jardinera Trupper', 40, 93, 4242),
(108, '7501115310011', 'Martillo de Carpintero 16 oz Stanley', 5, '', '10', 0x4d617274696c6c6f2064652043617270696e7465726f203136206f7a2e77656270, 'Martillo de Carpintero 16 oz Stanley', 50, 174, 78848),
(109, '7502225320012', 'Juego de Llaves Allen PRETUL', 3, '', '10', 0x4a7565676f2d64652d4c6c617665732d416c6c656e2d50524554554c2e6a7067, 'Juego de Llaves Allen PRETUL', 200, 336, 78848),
(110, '7503335330013', 'Serrucho para Madera Trupper', 6, '', '10', 0x536572727563686f2070617261204d616465726120547275707065722e6a7067, 'Serrucho para Madera Trupper', 200, 290, 4242),
(111, '7504445340014', 'Corta Cables Profesional Trupper', 15, '', '10', 0x436f727461204361626c65732050726f666573696f6e616c2e6a706567, 'Corta Cables Profesional Trupper', 150, 290, 7878),
(112, '7505555350015', ' Pinzas de Punta Larga Trupper', 10, '', '10', 0x50696e7a61732064652050756e7461204c6172676120547275707065722e77656270, ' Pinzas de Punta Larga Trupper', 150, 232, 4242),
(113, '7508885380018', 'Sierra para Metal Trupper', 4, '', '10', 0x5369657272612070617261204d6574616c20547275707065722e6a7067, 'Sierra para Metal Trupper', 200, 290, 302302),
(115, '7513335320012', 'Amoladora Angular 4.5\"DeWalt', 3, '', '11', 0x416d6f6c61646f726120416e67756c617220342e35446557616c742e77656270, 'Amoladora Angular 4.5\"DeWalt', 2500, 3480, 7878),
(116, '7518885370017', 'Pistola de Calor 2000WTrupper', 2, '', '11', 0x506973746f6c612064652043616c6f72203230303057547275707065722e77656270, 'Pistola de Calor 2000WTrupper', 1000, 2320, 7878),
(117, '7519995380018', 'Multiherramienta Eléctrica Trupper', 4, '', '11', 0x4d756c746968657272616d69656e746120456cc3a963747269636120547275707065722e6a7067, 'Multiherramienta Eléctrica Trupper', 2000, 3480, 7878),
(118, '7521115390019', ' Destornillador Eléctrico Recargable', 7, '', '11', 0x446573746f726e696c6c61646f7220456cc3a963747269636f2052656361726761626c652e6a7067, ' Destornillador Eléctrico Recargable', 900, 1740, 302302),
(120, '7524445320012', 'Guantes de Nitrilo Anticorte Milwaukee', 10, '', '12', 0x4775616e746573206465204e697472696c6f20416e7469636f727465204d656c77616b65652e6a7067, 'Guantes de Nitrilo Anticorte Milwaukee', 250, 522, 302302),
(121, '7526665340014', 'Gafas de Seguridad Antiempañantes Trupper', 24, '', '12', 0x47616661732064652053656775726964616420416e7469656d7061c3b1616e74657320547275707065722e6a7067, 'Gafas de Seguridad Antiempañantes Trupper', 150, 232, 302302),
(122, '7527775350015', 'Chaleco Reflectante Clase II', 6, '', '12', 0x4368616c65636f205265666c656374616e746520436c6173652049492e6a7067, 'Chaleco Reflectante Clase II', 250, 522, 7878),
(123, '7529995370017', 'Máscara de Soldador Automática', 5, '', '12', 0x30, 'Máscara de Soldador Automática', 600, 1044, 7878),
(124, '7531115380018', 'Arnés de Seguridad de 5 Puntos', 2, '', '12', 0x41726ec3a9732064652053656775726964616420646520352050756e746f732e77656270, 'Arnés de Seguridad de 5 Puntos', 600, 1044, 7878),
(125, '7534445410021', ' Rodilleras para Trabajos Pesados', 9, '', '12', 0x526f64696c6c6572617320706172612054726162616a6f732050657361646f732e6a7067, ' Rodilleras para Trabajos Pesados', 200, 347, 7878),
(126, '7535555420022', 'Cinta de Demarcación de Seguridad', 15, '', '12', 0x43696e74612064652044656d617263616369c3b36e206465205365677572696461642e6a7067, 'Cinta de Demarcación de Seguridad', 50, 174, 7878),
(127, '7537775440024', 'Lámpara de Cabeza con LED DeWalt', 5, '', '12', 0x4cc3a16d7061726120646520436162657a6120636f6e204c454420446557616c742e6a7067, 'Lámpara de Cabeza con LED DeWalt', 250, 406, 78848),
(128, '7532225390019', 'Respirador de Doble Filtro SURTEK', 6, '', '12', 0x52657370697261646f7220646520446f626c652046696c74726f2053555254454b2e6a7067, 'Respirador de Doble Filtro SURTEK', 150, 232, 78848),
(129, '7533335400020', ' Extintor Portátil de 4 kg', 4, '', '12', 0x457874696e746f7220506f7274c3a174696c2064652034206b672e6a7067, ' Extintor Portátil de 4 kg', 500, 1044, 4242),
(130, '7566665500030', ' Cepillo de Alambre Manual', 10, '', '10', 0x436570696c6c6f20646520416c616d627265204d616e75616c2e6a7067, ' Cepillo de Alambre Manual', 50, 116, 78848),
(131, '7564445480028', 'Alicates de Corte Lateral Trupper', 9, '', '10', 0x416c69636174657320646520436f727465204c61746572616c20547275707065722e6a7067, 'Alicates de Corte Lateral Trupper', 190, 336, 78848),
(132, '7562225460026', ' Escofina para Madera (Set 3 piezas)', 5, '', '10', 0x4573636f66696e612070617261204d616465726120285365742033207069657a6173292e77656270, ' Escofina para Madera (Set 3 piezas)', 200, 348, 4242),
(133, '7545555310011', 'Juego de Llaves Combinadas (12 piezas)', 3, '', '10', 0x4a7565676f206465204c6c6176657320436f6d62696e6164617320283132207069657a6173292e6a7067, 'Juego de Llaves Combinadas (12 piezas)', 250, 580, 78848),
(144, '7507674860016', 'Aceite Sintético para Transmisión CVT', 15, '', '8', 0x4163656974652053696e74c3a97469636f2070617261205472616e736d697369c3b36e204356542e706e67, 'Aceite Sintético para Transmisión CVT', 150, 232, 4242),
(147, '7512225310011', 'Taladro Percutor 750W BOSCH', 2, '', '11', 0x54616c6164726f2d5065726375746f722d373530572d424f5343482e6a7067, 'Taladro Percutor 750W BOSCH', 1500, 2320, 7878),
(148, '56156511', 'Aceite Sintético para Transmisión CVT', 10, '', '12', 0x30, 'Aceite Sintético para Transmisión CVT', 100, 232, 4242);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(50) NOT NULL,
  `Nombre` varchar(300) NOT NULL,
  `Apellidos` varchar(300) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Direccion` varchar(500) NOT NULL,
  `marca` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `Nombre`, `Apellidos`, `Telefono`, `Direccion`, `marca`) VALUES
(4242, 'Octavioooooo', 'Ortiz Medina ', '7721361606', 'Tasquillo Hidalgo', 'Trupper'),
(7878, 'Adalberto', 'Camargo', '7721213337', 'ActopanYork', 'Ford'),
(154215, 'Angel', 'Herndnadez', '7721524578', 'jgvjhvjykhvkh', 'ubkhb'),
(302302, 'Cristian', 'López López', '2147483647', 'Caxuxi', 'Mobil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`name`, `username`, `email`, `password`, `id`) VALUES
('misael', 'misael', 'misaellule123@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 1),
('cristian', 'cris', 'cristian@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2),
('luis', 'luismi', 'lujis123@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 3),
('Adalberto', 'adal', 'adal123@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 4),
('Octavio', 'Octavio', 'oct@gmail.com', '4fe9e68eb1fedf1f376d7f6c09c7bec62e0bcdb2', 5),
('Fernando', 'Fernando', 'fer@gmail.com', '4fe9e68eb1fedf1f376d7f6c09c7bec62e0bcdb2', 6),
('Octavio', 'Ortiz', 'oct_@gamil.com', '10d3b99bdfca6a916ca01da099ec98e62b04af40', 7),
('Juan', 'Gomez', 'juan@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 8),
('Renata', 'Ferrera', 'rena@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 9),
('Crispin', 'Lopez', 'cris1@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 10),
('Octavio', 'Ortiz Medina', 'medina@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `fecha`, `total`) VALUES
(1, '2025-03-07 06:25:02', 20.00),
(2, '2025-03-18 04:24:14', 208.00),
(3, '2025-03-18 04:26:59', 104.00),
(4, '2025-03-18 04:29:10', 104.00),
(5, '2025-03-18 04:35:20', 104.00),
(6, '2025-03-18 04:41:44', 1008.00),
(7, '2025-03-21 01:04:30', 144.00),
(8, '2025-03-21 01:43:16', 64.00),
(9, '2025-03-21 01:46:10', 96.00),
(10, '2025-03-21 02:36:38', 278.00),
(11, '2025-03-21 02:36:42', 278.00),
(12, '2025-03-21 02:49:13', 174.00),
(13, '2025-03-21 02:49:52', 104.00),
(14, '2025-03-21 02:51:28', 104.00),
(15, '2025-03-21 02:51:40', 174.00),
(16, '2025-03-21 02:51:43', 174.00),
(17, '2025-03-21 02:53:06', 174.00),
(18, '2025-03-21 02:53:12', 174.00),
(19, '2025-03-21 02:57:34', 120.00),
(20, '2025-03-21 03:02:39', 174.00),
(21, '2025-03-21 03:05:31', 174.00),
(22, '2025-03-21 03:53:04', 1024.00),
(23, '2025-03-21 03:56:00', 566.00),
(24, '2025-03-21 15:36:21', 432.00),
(25, '2025-03-21 15:41:48', 16.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cortes_caja`
--
ALTER TABLE `cortes_caja`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venta_id` (`venta_id`);

--
-- Indices de la tabla `historial_cortes`
--
ALTER TABLE `historial_cortes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial_ordenes`
--
ALTER TABLE `historial_ordenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_proveedor` (`proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `cortes_caja`
--
ALTER TABLE `cortes_caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `historial_cortes`
--
ALTER TABLE `historial_cortes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `historial_ordenes`
--
ALTER TABLE `historial_ordenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1222113;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `historial_ordenes`
--
ALTER TABLE `historial_ordenes`
  ADD CONSTRAINT `historial_ordenes_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
