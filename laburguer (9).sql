-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2024 a las 22:47:14
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laburguer`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('ceja@gmail.com|127.0.0.1', 'i:1;', 1720062438),
('ceja@gmail.com|127.0.0.1:timer', 'i:1720062438;', 1720062438),
('gabriel@gmail.com|127.0.0.1', 'i:1;', 1720141452),
('gabriel@gmail.com|127.0.0.1:timer', 'i:1720141452;', 1720141452);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Entradas', NULL, NULL),
(3, 'Especialidades', NULL, NULL),
(4, 'Nuevas Hamburguesas', NULL, NULL),
(5, 'Cortes', NULL, NULL),
(6, 'Parrilladas', NULL, NULL),
(7, 'Hot Dog', NULL, NULL),
(8, 'Burrittas', NULL, NULL),
(9, 'Boneless', NULL, NULL),
(10, 'Alambres', NULL, NULL),
(11, 'Aguachiles', NULL, NULL),
(12, 'Tacos', NULL, NULL),
(13, 'Ensaladas', NULL, NULL),
(14, 'Mocktails', NULL, NULL),
(15, 'Refrescos', NULL, NULL),
(16, 'Ginger Beer', '2024-04-10 15:18:36', '2024-04-10 15:18:36'),
(17, 'Mineralizadas', '2024-04-10 15:30:54', '2024-04-10 15:30:54'),
(18, 'Aguas Frescas', NULL, NULL),
(19, 'Kombuchás', '2024-04-11 07:46:59', '2024-04-11 07:46:59'),
(20, 'Café', '2024-04-11 08:40:25', '2024-04-11 08:40:25'),
(21, 'Café Frío', '2024-04-11 08:49:19', '2024-04-11 08:49:19'),
(22, 'Té Frío', '2024-04-11 08:59:44', '2024-04-11 08:59:44'),
(24, 'Malteadas', '2024-04-11 10:07:44', '2024-04-11 10:07:44'),
(25, 'Moothies', '2024-04-11 10:10:59', '2024-04-11 10:10:59'),
(26, 'Hamburguesas', '2024-04-12 10:44:56', '2024-04-12 10:44:56'),
(34, 'Pastor', '2024-08-19 10:28:38', '2024-08-19 10:28:38'),
(35, 'Trompos pastor', '2024-08-19 10:31:11', '2024-08-19 10:31:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `comentario` varchar(255) NOT NULL,
  `puntuacion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `estatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `nombre`, `comentario`, `puntuacion`, `created_at`, `updated_at`, `estatus`) VALUES
(2, 'Chelsea', 'Ofrece un buen servicio a la mesa, fui con mi familia y disfrutamos la buena comida y el ambiente del lugar', '5', '2024-04-01 20:53:40', '2024-04-19 18:04:36', 1),
(5, 'Gabriel', 'Excelente ambiente y buena atencion por parte del mesero', '5', '2024-04-19 18:02:10', '2024-04-19 18:11:00', 1),
(14, 'Angela', 'Me gusto demasiado este lugar teien muy buena atencion y comida muy buena 😋', '5', '2024-04-21 08:23:23', '2024-04-21 08:23:30', 1),
(19, 'Fabiola', 'Me encanto la comida', '5', '2024-04-22 04:09:10', '2024-08-07 21:18:14', 1),
(22, 'Chelsea', 'A sido demasiada buena la comida', '5', '2024-04-29 23:06:02', '2024-07-21 00:15:02', 1),
(33, 'Chelsea', 'Es muy rica la comida', '5', '2024-08-19 09:47:07', '2024-08-19 10:28:03', 1),
(35, 'Fabian', 'Es muy rica la comida', '5', '2024-08-19 10:10:40', '2024-08-19 10:30:41', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `Nombre`, `Descripcion`, `Imagen`, `created_at`, `updated_at`) VALUES
(1, 'vision', 'Ser reconocidos como el destino preferido para los amantes de la comida, destacando por nuestra innovación en sabores y compromiso con la satisfacción de nuestros clientes.', 'uploads/m9xKaLheVixMAmf2ZYsVXegOSO4i2DuYqhaRO2TY.jpg', NULL, '2024-04-12 12:07:17'),
(2, 'mision', 'Brindar a nuestros clientes una experiencia excepcional mediante la preparación de platillos de calidad, funcionando sabores auténticos en cada bocado creando momentos memorables para nuestros clientes.', 'uploads/tJ8OyCSpVGBpWooZ4BIm7ySrixoQgxTLQFuh5xz0.jpg', NULL, '2024-08-19 10:08:50'),
(3, 'quienessomos', 'Somos un establecimiento gastronómico dedicado a ofrecer experiencias culinarias únicas, especialmente en la creación de deliciosas hamburguesas. Nos comprometemos a superar las  expectativas de nuestros comensales mediante la combinación de ingredientes', 'uploads/QMM4FdszhOIsuh9ob1naD11ph8jEKQJ4vBIIdzK6.jpg', NULL, '2024-04-21 08:18:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE `galerias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `galerias`
--

INSERT INTO `galerias` (`id`, `foto`, `created_at`, `updated_at`) VALUES
(3, 'uploads/b2YYX7Cwh1DoXAAZERV9wMsa2JVpjlajcUWoumvs.jpg', NULL, NULL),
(4, 'uploads/wvwNApgDXnQ6NIQDHGjd8yxbgwxpFOFgkLs1fiVj.jpg', NULL, NULL),
(5, 'uploads/M5OtRGB9J1aC7XwCMRfMWcXooPQhQCwu3eav0F8z.jpg', NULL, NULL),
(9, 'uploads/KGu2d1KkmpS7tNRswXihFbHHtiIUQVe4t4VfrW6F.jpg', NULL, NULL),
(11, 'uploads/JkUFxF8X5Rfq4c4Os5Ut8949XvEsqhC6BLsCNW2e.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '0001_01_01_000000_create_users_table', 1),
(6, '0001_01_01_000001_create_cache_table', 1),
(7, '0001_01_01_000002_create_jobs_table', 1),
(8, '2024_03_31_165013_create_comentarios_table', 1),
(9, '2024_04_04_033753_create_categorias_table', 2),
(10, '2024_04_04_072115_create_platillos_table', 3),
(11, '2024_04_10_145058_create_eventos_table', 4),
(12, '2024_04_11_010924_change_precio_float_to_platillos', 5),
(14, '2024_04_12_011259_create_galerias_table', 6),
(15, '2024_04_19_121058_add_estatus_to_comentarios_table', 7),
(16, '2024_07_31_183820_add_status_to_platillos', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platillos`
--

CREATE TABLE `platillos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` double NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `platillos`
--

INSERT INTO `platillos` (`id`, `nombre`, `imagen`, `descripcion`, `precio`, `categoria`, `created_at`, `updated_at`, `status`) VALUES
(13, 'ORDEN DE PAPAS FRIES', 'uploads/9clvAaDdGtvYeoeXOPhHtyjQ7JFLQMg0OLDEgvMC.jpg', '250gr de papas a la francesa, acompañadas de aderezo de la casa y queso cheddar.', 85, 'Entradas', NULL, '2024-08-19 23:41:35', 1),
(14, 'ORDEN DE PAPAS GAJO', 'uploads/t0FPtG9MiJKtKQkMsJ7bijQ59KDrQ1gqJKJSrWAN.png', '250gr de papas corte gajo acompañadas de aderezo de la casa y queso cheddar.', 95, 'Entradas', NULL, '2024-08-19 23:18:09', 0),
(15, 'ORDEN DE DEDOS DE QUESO', 'uploads/ZwbRsk7oMktu6nKr1JP8ur675sVpVF6MjnGIGNOj.jpg', 'Deliciosos dedos de queso mozzarella acompañados de aderezo smoke.', 105, 'Entradas', NULL, '2024-08-12 23:18:15', 1),
(16, 'ORDEN DE AROS DE CEBOLLA', 'uploads/xARh4S1wbnEKydXb8d0cC4c1DiRBKJNONeIvV2He.jpg', 'Aros de cebolla fritos acompañados de salsa BBQ y aderezo smoke.', 95, 'Entradas', NULL, '2024-04-21 08:26:29', 1),
(17, 'ELOTE ASADO', 'uploads/7VNnrQ1zdTK6Gdy4Tji2L4y0fpiioI7uBo99VbaL.jpg', 'Delicioso elote dulce,asado con mantequilla de romero, bañado en crema acida y bites de tocino crujiente.', 90, 'Entradas', NULL, '2024-04-21 08:27:23', 1),
(18, 'NACHOS CHAW', 'uploads/LbCQPAibxSq9grVhJgUmViP9wfTY7HsMeIBNbIPN.jpg', 'Totopos bañados de queso cheddar, frijoles refritos, guacamole, crema, y carne a eleccion arrachera o carne al pastor.', 190, 'Entradas', NULL, '2024-04-21 08:29:16', 1),
(19, 'GUACAMOLE NATURAL', 'uploads/XNm28vMHztc133tVsu80SC0h1xzCN1k5SjBD21ZH.jpg', 'Guacamole rustico mezclado con pico de gallo, sal, pimienta y toque de limon acompañado de totopos.', 115, 'Entradas', NULL, '2024-04-21 08:28:14', 1),
(20, 'GUACAMOLE CON PANELA', 'uploads/zCPUXwzMIngP7SY9N0faONfw28xHt6p1v44dyw6v.jpg', 'Guacamole rustico mezclado con pico de gallo, sal, pimienta y toque de limon acompañado de totopos y con topping de queso panela.', 160, 'Entradas', NULL, '2024-04-21 08:28:59', 1),
(21, 'GUACAMOLE CON PASTOR', 'uploads/hQjqEQOKULw1DglOTHpWpGiKWlcEYIrGSUlvapyK.jpg', 'Guacamole rustico mezclado con pico de gallo, sal, pimienta y toque de limon acompañado de totopos y carne al pastor.', 180, 'Entradas', NULL, '2024-04-21 08:28:47', 1),
(25, 'NOBLE', 'uploads/6j8V1VFj9v8h3Pzio7bcmvZy6fxTt1p9WkW2NoZ8.png', 'Queso cheddar, jitomate, cebolla morada, relish de pepinillos y aderezo de la casa.', 167, 'Hamburguesas', NULL, NULL, 1),
(26, 'CAMPESINA', 'uploads/E3LiZCZwdyxP4bWN0AWOg35AaJfgXb5HxJpDgwzN.png', 'Salchicha para asar, mermelada de tocino, cebolla morada, queso cheddar, piña asada, aderezo alí huevo tierno.', 195, 'Hamburguesas', NULL, NULL, 1),
(27, 'Duquesa', 'uploads/mMD5hIYZarINDIlmRkZNuDOAukEci27vL0qdFse9.png', 'Piña asada, cebolla Crunch, salsa alí, queso manchego, salsa alí y aderezo de la casa y tocino.', 175, 'Hamburguesas', NULL, NULL, 1),
(28, 'BURGUES', 'uploads/0ZJGXWlfBxcKe8lQCXd0Rtxrk4KD2PvfogtogWjn.png', 'Hamburguesa bañada en queso cheddar, queso manchego, aderezo de la casa, cebolla crunch y mermelada de tocino.', 215, 'Hamburguesas', NULL, NULL, 1),
(29, 'PORTER', 'uploads/mYuouosO3lriv4UMW2rKjXtHSE8BtoNyB8KCmQzQ.png', 'Queso de bola, piña asada, cebolla Crunch, tocino, relish de pepinillos, mayonesa de habanero.', 195, 'Hamburguesas', NULL, NULL, 1),
(30, 'CRIOLLA', 'uploads/eBAcaVwee6K21XmIdUFgHShUoND3T322NuqNsjlR.png', 'Jalapeño Popper, mermelada de tocino, queso cheddar, cebolla morada, relish d epepinillos, mix de vegetales y mayonesa de habanero.', 190, 'Hamburguesas', NULL, NULL, 1),
(32, 'TUMS', 'uploads/4bhJDUQcilTnzvcFL1e9HpY2L0MBRGU0wf7R9BEc.png', 'Queso cheddar, tocino, mermelada de tocino, relish de pepinillos y aderezo de la casa.', 190, 'Hamburguesas', NULL, NULL, 1),
(33, 'TERRATENIENTE', 'uploads/azAu6LujZyJozeUGKE5PJPMV1TE5yLmFe1bjQHJ0.png', 'Queso manchego, tocino, cebolla Crunch, salsa BBQ y aderezo smoke.', 175, 'Hamburguesas', NULL, NULL, 1),
(34, 'MEXA', 'uploads/G8A71dqECI4SSOtxySibNKZ81rA8psTYtgkCoSPS.png', 'chorizo, cebolla Crunch, aguacate, mayonesa de habanero, queso manchego y aderezo de la casa', 195, 'Especialidades', NULL, '2024-04-21 08:30:59', 1),
(35, 'PALERMO', 'uploads/JLUcXPKD4OIPfbXs6RwxbpOYzdIAsevTwo0hIW8G.jpg', 'Chorizo Argentino, chimichurri artesanal, cebolla Crunch, queso manchego y aderezo de la casa.', 195, 'Especialidades', NULL, '2024-04-21 08:33:08', 1),
(36, 'SUPREMA', 'uploads/D7nF8g3RptMYhv6V5V9mU8mFmvar7cYZl14LfhTh.jpg', '100gr de queso mozzarella empanizado, tocino, relish de pepinillos, salsa alí y aderezo de la casa.', 190, 'Especialidades', NULL, '2024-04-21 08:33:56', 1),
(38, 'IMPERIAL', 'uploads/AVwOcGFLie6pQkBQjQRznwYbNe8wecnEvHIZjk9r.png', '352gr de carne estilo \"La Burguesía\", queso manchego, cebolla Crunch, mermelada de tocino y mayonesa de habanero.', 225, 'Especialidades', NULL, '2024-04-21 08:34:39', 1),
(39, 'VICTORIA', 'uploads/MVkU8lQ1XsRG8eZkaqmaQP5SFC9kyJ2Rm9UQ7jWi.jpg', 'Queso panela asado, queso manchego, aguacate, cebolla Crunch, chimichurri artesanal y aderezo de la casa.', 195, 'Especialidades', NULL, '2024-04-21 08:35:20', 1),
(40, 'CHACK', 'uploads/4lj5ADUTAHITcV2mGjUHyT18sSOSYZB18YfHErjI.jpg', 'Camarones salteados con ajo, carne estilo \"La Burguesía\", queso manchego, mermelada de tocino, aguacate, salsa alí y aderezo de la casa.', 215, 'Especialidades', NULL, '2024-04-21 08:36:28', 1),
(41, 'KUKULKAN', 'uploads/ADGQsu2OWHqoc2GJM9LXlV6ITU27fJDLLrprHA0E.png', 'Mayo Cilandro, carne al pastor, queso manchego, piña asada, mermelada de cebolla.', 195, 'Nuevas Hamburguesas', NULL, NULL, 1),
(42, 'KRAKEN', 'uploads/KewVA6P1GxbB2ptyfHnBfiOJ5XLRk5KKHjrcyg0p.png', 'Delicioso Pulpo y camarones sarandeado al grill, aderezo sirracha, queso manchego, tomate, aguacate, cebolla asada, acompañada de papas cambray y salsa de tamarindo.', 315, 'Nuevas Hamburguesas', NULL, NULL, 1),
(43, 'X KEREN', 'uploads/xiyRtLjEGawzEuhYPRmsbS85rqGCDAvaIgkd44by.png', 'Deliciosa costilla ahumada bañada en salsa BBQ, mermelada de cebolla, guacamole, mayo sirracha y queso manchego.', 235, 'Nuevas Hamburguesas', NULL, NULL, 1),
(44, 'ARRACHERA', 'uploads/HqsI8haBCc6S4UUi6CZn3JVxpa3OCSGggGPaaOKw.png', '320gr de carne en crudo, acompañado de verduras braceadas guacamole y pure de papa.', 390, 'Cortes', NULL, NULL, 1),
(45, 'RIB EYE', 'uploads/t0bBNCUaP0d97z9lGyr2aXqFFhb3VspAbrY4GfJP.png', '320gr de carne en crudo, acompañado de verduras braceadas, guacamole y pure de papa.', 430, 'Cortes', NULL, NULL, 1),
(46, 'COSTILLAS BBQ', 'uploads/I2OfhE87YcdUGvubM76iG4wA4C1h7ambfnoYwCVu.png', 'Deliciosas costillas BBQ(500gr) acompañadas de tu salsa favorita (hot, mango habanero o BBQ), acompañado de papas a la francesa y elote asado.', 290, 'Cortes', NULL, NULL, 1),
(47, 'PÁ TODOS', 'uploads/9HWNqdm9eFa7dnKNamnFIBfqsZfMyZNRhoXZG8TI.png', 'Deliciosa selección de carnes, arrachera, pollo, salchicha de azar, chorizo argentino, chistorra, chuleta, camarones, acompañado de 2 quesadillas, nopales asados, cebolla cambray y elote dulce.', 680, 'Parrilladas', NULL, NULL, 1),
(48, 'PÁ CONSENTIRTE', 'uploads/hzQkm47TE5bBW7D6HKLpxMbh1W4lFfCV2R9HJiqk.png', 'Deliciosa seleecion de carnes, pulpo braceado, arrachera, chistorra, camarones zarandeados, costillas ahumadas, acompañado de pimientos asados, 2 quesadillas, elote dulce,cebolla cambray.', 870, 'Parrilladas', NULL, NULL, 1),
(49, 'MEXIDOG', 'uploads/x4NbZRwPsJODBpLkAmoPqy0MMuV3W4nXdoSybPSK.png', 'Queso manchego, chorizo, guacamole y aderezo de la casa.', 145, 'Hot Dog', NULL, NULL, 1),
(50, 'HAWAI DOG', 'uploads/HjNzhV3fIoRAAPEZ9bo68HH7S362D7lzkPW0WDET.png', 'Piña, jitomate, cebolla asada, aderezo alí, queso de bola.', 145, 'Hot Dog', NULL, NULL, 1),
(51, 'CHAMPI DOG', 'uploads/gknzgglYwswk7oQFeG4n6ia0Mx7NfrNcz97phVBk.png', 'Champiñones, queso manchego, cebolla Crunch y aderezo smoke.', 140, 'Hot Dog', NULL, NULL, 1),
(52, 'PASTOR', 'uploads/lnjbt7RY9Rp2410sdsMnfOy9suTZsKPtLgjyxfQ4.png', 'Acompañado con papas fritas y ensalada.', 175, 'Burrittas', NULL, NULL, 1),
(53, 'CHULETA', 'uploads/PpVU4VGE3E46ds4LfHtvWShvzCtZ2yv0EofvxH8I.png', 'Acompañado con papas fritas y ensalada.', 175, 'Burrittas', NULL, NULL, 1),
(54, 'POLLO', 'uploads/0w5VuC0bWNgf9b8pTjWUxaZtGA7c4yVVErcm02f1.png', 'Acompañado con papas fritas y ensalada.', 180, 'Burrittas', NULL, NULL, 1),
(55, 'VEGETARIANO', 'uploads/i47PpKPFEaOxJaVoQN8weh7WhvIaisbP5xBMgvYl.png', 'Acompañado con papas fritas y ensalada.', 185, 'Burrittas', NULL, NULL, 1),
(56, 'ARRACHERA', 'uploads/PHp9nYp75JOX7BNdzcrhvZqlxc9u5rIUsNtQwjz3.png', 'Acompañado con papas fritas y ensalada.', 195, 'Burrittas', NULL, NULL, 1),
(57, 'CAMARONES', 'uploads/ahTunn4emPA1rS49YKjw84bxUGmHMc059rlSQ1G0.png', 'Acompañado con papas fritas y ensalada.', 195, 'Burrittas', NULL, NULL, 1),
(58, '10 PZAS', 'uploads/cMmLhgSXDN38LBtd2HV3O9wnkaur2pqzzl65f0Dn.png', 'Crujientes trozos de pollo al estilo de la casa bañado en salsa a tu eleccion, acompañados de papas y verduras. ESCOJE TU SALSA: BBQ, MANGO HABANERO, HOT O SIN SALSA.', 195, 'Boneless', NULL, NULL, 1),
(59, '15 PZAS', 'uploads/OoHapzaXBtKJruWy9nSlPd0K0bWoAhp61DKKQ7gC.png', 'Crujientes trozos de pollo al estilo de la casa bañado en salsa a tu eleccion, acompañados de papas y verduras. ESCOJE TU SALSA: BBQ, MANGO HABANERO, HOT O SIN SALSA.', 235, 'Boneless', NULL, NULL, 1),
(60, '20 PZAS', 'uploads/fvtL4QAGXy7RFdRw08P0ryR9fqb4almfWjKvggQa.png', 'Crujientes trozos de pollo al estilo de la casa bañado en salsa a tu eleccion, acompañados de papas y verduras. ESCOJE TU SALSA: BBQ, MANGO HABANERO, HOT O SIN SALSA.', 265, 'Boneless', NULL, NULL, 1),
(61, 'PASTOR', 'uploads/iHEUmafThQCes0MEZyt4mprfAaLKkrAR1dyMbUY0.png', 'Acompañados de tortillas de maíz.', 175, 'Alambres', NULL, NULL, 1),
(62, 'CHULETA', 'uploads/AVE0j3lmYgqeuRmIzoydlzobmjJRUpUrAQ4LDu8p.png', 'Acompañados de tortillas de maíz.', 180, 'Alambres', NULL, NULL, 1),
(63, 'POLLO', 'uploads/IYPOowtMp8MYOEXhq0znUMnqFQNwZabg5ylPlvpu.png', 'Acompañados de tortillas de maíz.', 185, 'Alambres', NULL, NULL, 1),
(64, 'ARRACHERA', 'uploads/WkAB2cqhUGpSukS6RQOK6O03LttpnEsim4zZp7BX.png', 'Acompañados de tortillas de maíz.', 195, 'Alambres', NULL, NULL, 1),
(65, 'CAMARONES', 'uploads/5Rt3G5ufPkFJfcmXum5ZENkKVogU2QWRNN3jgbBc.png', 'Acompañados de tortillas de maíz.', 195, 'Alambres', NULL, NULL, 1),
(66, 'NEGRO', 'uploads/dabzhSB1pfMWwhfdHG2DJUsAl5Uhc1JOQlHvKniA.png', 'Acompañados de totopos.', 280, 'Aguachiles', NULL, NULL, 1),
(67, 'VERDE', 'uploads/5axTARlv4QAC3nTVnGuR4B0l5RDJTffKSYQufByu.png', 'Acompañados de totopos.', 280, 'Aguachiles', NULL, NULL, 1),
(68, 'TEMPORADA', 'uploads/rV6zFZjn4QUSooHvPjt4yJwYYs0Cq99IAKVb5fIH.png', 'Acompañados de totopos.', 280, 'Aguachiles', NULL, NULL, 1),
(69, 'PASTOR', 'uploads/8KVdxg6WIkO61Pn1vU8MRiWLqOmCpK0WHMkP9952.png', 'Piña, cebolla blanca y cilantro. ORDEN DE 3 TACOS.', 85, 'Tacos', NULL, NULL, 1),
(70, 'CHULETA', 'uploads/YfVEY0w8sW2qcVv9E836wADfEKRrflbVmZHZJIVa.png', 'Nopal asado, cebolla de cambray asada, guacamole rústico y germen de alfalfa. ORDEN DE 3 TACOS.', 95, 'Tacos', NULL, NULL, 1),
(71, 'POLLO', 'uploads/EE0XdphKyosDcVAUbwDD6eEo0xvHrbm3sZp2dwqt.png', 'Nopal asado, cebolla de cambray asada, guacamole rústico y germen de alfalfa. ORDEN DE 3 TACOS.', 105, 'Tacos', NULL, NULL, 1),
(72, 'VEGETARIANO', 'uploads/dZC92VUvfAu51ddKa86w9lLxIBKOdwfFD26Wt0rA.png', 'Pimientos, calabaza italiana, zanahoria, nopal, cebolla morada. Acompañada de ensalada de vegetales. ORDEN DE 3 TACOS.', 100, 'Tacos', NULL, NULL, 1),
(73, 'ARRACHERA', 'uploads/TkqmwxYVbzFJMULru52g3pLWEmWBexz32fW1j5R4.png', 'Nopal asado, cebolla cambray asada, guacamole rústico, germen de alfalfa y jitomate cherry confitado. ORDEN DE 3 TACOS.', 145, 'Tacos', NULL, NULL, 1),
(74, 'CAMARONES', 'uploads/zbq94j2yARNgbDD8CDDH1XMngql4OcpKJsmReFzd.png', 'Ensalada de vegetales verdes, guacamole rústico, pimientos y germinado de alfalfa. ORDEN DE 3 TACOS.', 140, 'Tacos', NULL, NULL, 1),
(75, 'ENSALADA TROPICAL', 'uploads/S106bdiwOUtH7qw1HXUGEEhdGgSY3IWhEyUxz4q1.png', 'Mix de lecgugas y espinacas, fresas, arándanos, núez y aderezo.', 170, 'Ensaladas', NULL, NULL, 1),
(76, 'ENSALADA MONACO', 'uploads/bypDOypwijqaIm5dWiL4SbcJir5CoWOjDvDLKSmR.png', 'Pepino, lechuga, col morada, zanahoria, ajonjolí negro, aguacate y proteina a elegir(pollo, huevo, queso panela), reduccion de vino tinto.', 170, 'Ensaladas', NULL, NULL, 1),
(77, 'ENSALADA CON QUESO DE CABRA', 'uploads/FrkGE1yXHR4tQCKbjoRFpdwO6zEogbGkLUGcwGNB.png', 'Mix de lechugas frescas, tomates cherrys, zanahoria, cebolla morada, bolitas de queso de cabra empanizadas y vinagreta.', 180, 'Ensaladas', NULL, NULL, 1),
(78, '25/12', 'uploads/LIw0C1tfdxKN9IoIqt6sHDUrHpsr0DY0yYcWi6Xq.png', 'Una rica combinación de Guayaba, Manzana, Jamaica, tamarindo y piloncillo. Un rico Mocktail con gran significado, recordando el primer día de nuestra existencia.', 100, 'Mocktails', NULL, NULL, 1),
(79, 'ATARDECER PÚRPURA', 'uploads/7CZQtAtrubGS8gNVka0AJekCn2p1otkedNKOR74K.png', 'Rica explosión de Acai, limón, naranja, aquafaba, miel de agave y top de quinina.', 100, 'Mocktails', NULL, NULL, 1),
(80, 'JAROCHO CARIBEÑO', 'uploads/2q364B3C8EbFQcWGtcQdS5LbD3Kj5FRFRHR9VDI8.png', 'Rica combinación de maracuyá, expresó, naranja y miel de agave.', 100, 'Mocktails', NULL, NULL, 1),
(81, 'PURPLE MACHINE', 'uploads/jKhRataReWb36ymnMTPCwfH4Ntpgdyr0l3IzKP8j.png', 'Explosiva combinación de frutos rojos, naranja, limón, cardamomo, aquafaba y quinina.', 100, 'Mocktails', NULL, NULL, 1),
(82, 'BLOODY BLACK', 'uploads/ld0sWvarR0Jh0QMn93JbZ2JIrq7x4QlKpdKEMz3A.png', 'Rico mix de jugo de tomate, almejas, camarón, salsas receta de la casa, limón, apio y top de soda.', 100, 'Mocktails', NULL, NULL, 1),
(83, 'COCA-COLA', 'uploads/CyAIfYtY8IYsFZhMpiHeyMrRRxSF192cxaJ5pwHD.webp', 'Disfruta de un buen refresco', 45, 'Refrescos', NULL, NULL, 1),
(84, 'COCA-COLA LIGTH', 'uploads/HaeJwO4Sg4FnUkeSYZSAaPuC83id0HP8GYDY2WEJ.webp', 'Disfruta de un buen refresco', 45, 'Refrescos', NULL, NULL, 1),
(85, 'COCA-COLA CERO', 'uploads/8fMkGApITwGCaekIBG8vV06kiKkzcykwZM4WDGm5.webp', 'Disfruta de un buen refresco', 45, 'Refrescos', NULL, NULL, 1),
(86, 'MANZANA MUNDET', 'uploads/aYnPGX2I6lI227AgMDiSN9hawVKh5AkJtjpMbPPD.webp', 'Disfruta de un buen refresco', 45, 'Refrescos', NULL, NULL, 1),
(87, 'SPRITE', 'uploads/i4aOtVQLpgwo2isPNktuXgG1F7f36rcW6U08RBBM.jpg', 'Disfruta de un buen refresco', 45, 'Refrescos', NULL, NULL, 1),
(88, 'GINGER BIRRA WILD', 'uploads/dnBrZaVMsIcy9igahGWSTKEyRRp3yUH8laRVpNpl.png', 'Jengibre, cúrcuma y limón', 85, 'Ginger Beer', NULL, NULL, 1),
(89, 'GINGER BIRRA GOLD', 'uploads/HcZNGnj8IuB8fBom1CVSwMzUji8XzuKTo3TG47tk.png', 'Jengibre', 85, 'Ginger Beer', NULL, NULL, 1),
(90, 'SODA RAÍZ', 'uploads/bVkxAeSHLShCZJUDNdVKCIz9c5wxoDIQHv5Oic94.png', 'Jengibre y miel de agave.', 90, 'Ginger Beer', NULL, NULL, 1),
(91, 'FELIX SODA', 'uploads/OmugpJ9512ZkDAikpC0pBcj7SHqHrE36uKtjDxpb.png', 'Maracuya, Frambuesas, Damasco, Lychee, Guanabana', 48, 'Ginger Beer', NULL, NULL, 1),
(92, 'VELVELT SODA', 'uploads/I8xyfySD1midgtbl7yDMKYDAHYG3ajYdA0eezoCC.png', 'Agua de manantial de maracuyá, guanabana y lychee', 48, 'Ginger Beer', NULL, NULL, 1),
(93, 'NARANJADA', 'uploads/ud4F9pi3aM2fQvvPT3PdcwjwPr879RHpC5RBnTJp.png', 'Jugo de naranja fresco junto con agua mineral', 56, 'Mineralizadas', NULL, NULL, 1),
(94, 'LIMONADA', 'uploads/rO14ExA2AI5EU02odyZo5pIW89XCq6NzTI9in62k.png', 'Jugo de limón fresco junto con agua mineral', 56, 'Mineralizadas', NULL, NULL, 1),
(95, 'Strawberry mint', 'uploads/Q2i2mxt3CJrJRnNCP3VBMMnqoH2n3UAagxHM5vo9.png', 'Limonada de fresa con menta', 65, 'Mineralizadas', NULL, '2024-04-14 07:14:43', 1),
(96, 'HORCHATA', 'uploads/R4pus66NqDTEdwSJi2ZUJ3qKrAWSXGbecfZ9mVag.jpg', 'Clásica', 48, 'Aguas Frescas', NULL, NULL, 1),
(97, 'JAMAICA', 'uploads/f6lRV9CTt0TNESpLoC33EYI4YjAFzK61tR3gaCxU.jpg', 'Clásica', 48, 'Aguas Frescas', NULL, NULL, 1),
(98, 'NARANJA', 'uploads/NYCjAkcTFjq9OXJzBqNRkWvrUO1JoTFanKzODQug.jpg', 'Clásica', 48, 'Aguas Frescas', NULL, NULL, 1),
(99, 'LIMÓN', 'uploads/mURCLFiUFkrcAf3f2begJa74m8vVMsoBTe8DlHAF.jpg', 'Clásica', 48, 'Aguas Frescas', NULL, NULL, 1),
(100, 'TÚCAN', 'uploads/EzdVDtXn6KJnwdWR0OQ9nia8btyEg2L7ksOEcNGo.jpg', 'Especial. Maracuyá, mango, romero', 58, 'Aguas Frescas', NULL, NULL, 1),
(101, 'SELVA ENCANTADA', 'uploads/DIpTPMO78OOY57hxxBie4ihKWbakJ8VXamenlDzv.jpg', 'Especial. Frutos rojos, limón, miel de agave', 58, 'Aguas Frescas', NULL, NULL, 1),
(102, 'TOLOK', 'uploads/vkTNrLVNTQI9K4fBa1OoJOwTMaOwQjHioTVhEv0z.jpg', 'Especial. Pepino, menta, limón', 58, 'Aguas Frescas', NULL, NULL, 1),
(103, 'COCOFRESH', 'uploads/TJIfeuDSN5dK8jS4FkkBv3moHOtkPtQU73lC3mmV.jpg', 'Fresa, coco, limón y miel', 58, 'Aguas Frescas', NULL, NULL, 1),
(104, 'KIN\'YETEL HAA', 'uploads/o3sDE9YiAdycHGDwxgKhZQI82UrkWfbtefk26W4e.jpg', 'Jamaica, naranja, anís estrella', 58, 'Aguas Frescas', NULL, NULL, 1),
(105, 'KOMBUCHA ARTESANAL', 'uploads/bQG6wdcQqFkql2tFb04MvMAUkOXMb7io28Si4yY5.jpg', 'La kombucha es una infusión que se prepara con té y se fermenta con SCOBY, una simbiosis de levaduras y bacterias. Una excelente alternativa a los refrescos.', 95, 'Kombuchás', NULL, NULL, 1),
(106, 'KOMBUCHA DE MANGO', 'uploads/5YkCruZ6oo6VYzGkIUvduPDjnzltYoBqnyRWi8bP.jpg', 'Kombucha Clásica.', 95, 'Kombuchás', NULL, NULL, 1),
(107, 'KOMBUCHA DE FRESA', 'uploads/eDuLwt3MVE8Zgi1pgOvCtb4AnBxx0543zEF84jxh.jpg', 'Kombucha Clásica.', 95, 'Kombuchás', NULL, NULL, 1),
(108, 'KOMBUCHA DE FRUTOS ROJOS', 'uploads/koWwynzBHYjGZHgq7cVXKrMvMOxkOjcK9pmOrN5W.jpg', 'Kombucha Clásica.', 95, 'Kombuchás', NULL, NULL, 1),
(109, 'KOMBUCHA DE MANGO MIEL MELIPONA', 'uploads/B43BDLTTKPXChPy3mMHCTbUyiYdpoWnUp4kjzzai.jpg', 'Kombucha Especiales.', 95, 'Kombuchás', NULL, NULL, 1),
(110, 'KOMBUCHA DE FRUTOS ROJOS CON CARDAMOMO', 'uploads/Z0SLpH3lm1vb3sOFIZ9WRuoEKcWoiKA9FS2Qflku.jpg', 'Kombucha Especiales.', 95, 'Kombuchás', NULL, NULL, 1),
(111, 'KOMBUCHA DE MANGO-FRESA Y ROMERO', 'uploads/SUgD2iwZnEJi1p0t9tR6laJgujAZ2EcWdQguxhVq.jpg', 'Kombucha Especiales.', 95, 'Kombuchás', NULL, NULL, 1),
(112, 'AMERICANO', 'uploads/51sQeV21LlV0bBGkqzGuSR7ITEVKd7BbSZopoGUL.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 50, 'Café', NULL, NULL, 1),
(113, 'ESPRESO', 'uploads/YZcmFPF8G8RkGMbSDwb2wojUH2ikkNJEhNDbZT7w.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 45, 'Café', NULL, NULL, 1),
(114, 'ESPRESO DUPLE', 'uploads/l31bRbEPwfSWs760ebBFEPe4WWdUeqdsZReMKafE.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 50, 'Café', NULL, NULL, 1),
(115, 'MACHIATO', 'uploads/1vF14vvfHPYj6w9nXvjJk7ZLiQKaaFRy83oep3yN.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 45, 'Café', NULL, NULL, 1),
(116, 'MACHIATO DUPLEX', 'uploads/amPBGdKG8dKiyzWtpmes82dAAnwofWDyu4V2OhBf.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 50, 'Café', NULL, NULL, 1),
(117, 'CAPUCCINO', 'uploads/BzzJenWyjSkLrZJ6hzLlzKfFfXzaggxubn8u6su3.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 60, 'Café', NULL, NULL, 1),
(118, 'MOCA', 'uploads/OqV5wF56AdZWjXLc9iwBvDrXCz7WOmd6o3txpPms.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 65, 'Café', NULL, NULL, 1),
(119, 'LATTE', 'uploads/bkPyqylfefe5Dg2RXC578ccgbK4yAhqDspqM2MOm.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 65, 'Café', NULL, NULL, 1),
(120, 'Té', 'uploads/QqumJ7VuLyD4fxUGgGred6vUADr7ouLX3zX4IJxY.jpg', 'Pregunta por los disponibles', 40, 'Café', NULL, NULL, 1),
(121, 'AMERICANO FRIO', 'uploads/vLkxeBnPRxod7Yn3A6feDlh4nVJBnuL1XgoJzZSu.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 45, 'Café Frío', NULL, NULL, 1),
(122, 'ESPRESO', 'uploads/zRJAC61sIjEesn1AjFeKpDpJrBbfiX8bIrKPTLZk.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 40, 'Café Frío', NULL, NULL, 1),
(123, 'LATTE', 'uploads/9AScwYIYRvVQ3ZTM6dRVqpG5dKfLV4y0FMPWa15g.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 60, 'Café Frío', NULL, NULL, 1),
(124, 'LATTE CARAMELO', 'uploads/lVOYiqayfCjCAmT5ClTilZYYHDep6XA5EXKrotRz.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 70, 'Café Frío', NULL, NULL, 1),
(125, 'MOKA', 'uploads/4IMGT0raw0WSUkYP2w722Z3KG6SoivOCN7Pcllb4.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 75, 'Café Frío', NULL, NULL, 1),
(126, 'CAPUCCINO', 'uploads/279iM4ewu3PLFELYb1d8itGmXSG5Qs1J9sZ1Q1IJ.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 70, 'Café Frío', NULL, NULL, 1),
(127, 'FRAPUCCINO', 'uploads/nePXmwckHBfeePY3WjfZ7ssYghnPUCsQgzsBqcrP.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 80, 'Café Frío', NULL, NULL, 1),
(128, 'MOKACCINO', 'uploads/uzwixTEJZN9xFvEbThfXhGKy2s4sdapaTAhxFnFd.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 90, 'Café Frío', NULL, NULL, 1),
(129, 'AFFOGATO', 'uploads/djXg55C8WXEMx8oLv1dUAYRCzp1VcpMim1Q5mDfi.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 70, 'Café Frío', NULL, NULL, 1),
(130, 'TE CLÁSICO', 'uploads/NXrJl0C2bTTF4gUyLwNZc598jhlI8xHrQ8smlA51.jpg', '\"Despierta tus sentidos con cada sorbo.\"', 45, 'Café Frío', NULL, NULL, 1),
(131, 'LEMON BLACK', 'uploads/Sw4NMjzrpNlDYG0Jk1WEzaFawRsck11YNaQ3xdQz.jpg', 'Té negro con limón y miel', 100, 'Té Frío', NULL, NULL, 1),
(132, 'FRESH BLOOM', 'uploads/p8sxvjSRaFAO1459XQRA5oeWNdZTNRoW4qLdcjKT.jpg', 'Miex de fresa, te negro, limon y miel', 105, 'Té Frío', NULL, NULL, 1),
(137, 'FRESA', 'uploads/qmaiixk8tZ5ZS3J91ruZP35Vmw1qnh1hNpOznfH7.jpg', 'Malteada de fresa', 90, 'Malteadas', NULL, NULL, 1),
(138, 'VAINILLA', 'uploads/dRMoKmTxkS0nL49Nv5bH7ukBhne81Ejo00ypT396.jpg', 'Malteada de vainilla.', 90, 'Malteadas', NULL, NULL, 1),
(139, 'CHOCOLATE', 'uploads/RQLoFXJTxO8Nt2ZGhKJePSykpnsWnqagicKO9bld.jpg', 'Malteada de chocolate.', 90, 'Malteadas', NULL, NULL, 1),
(140, 'OREO', 'uploads/5DJcXQKqdZnpNl1hV1uMZhRQEdysOPv7wYGUdJhU.jpg', 'Malteada de oreo.', 100, 'Malteadas', NULL, NULL, 1),
(141, 'COOL MARACUYÁ', 'uploads/n7Vt49aHVDqhnCaLbCrQKcRtHkoAlJlNAy9LVlG7.jpg', 'Mix de Maracuyá, mango, miel y naranja.', 85, 'Moothies', NULL, NULL, 1),
(142, 'COOL SUMMER', 'uploads/qemUQqjAbn7bIGuLc2tvJuP79KyqrFsA9Lz4dL09.jpg', 'Mix de piña, papaya, platano, fresa, mango y naranja.', 85, 'Moothies', NULL, NULL, 1),
(143, 'MAQUINA DEL TIEMPO', 'uploads/BiLWzZWAdPf5XikpZ0BgWgqFLxinfCyKZjn912UQ.jpg', 'Mix de mango, sandia, chamoy con un escarchado de manzana verde y dulce explosivo.', 85, 'Moothies', NULL, NULL, 1),
(144, 'RED FRESH', 'uploads/XLAQ4jpAsEl1O1dNeBpxbncXJqu7hiZps1xYXxWl.jpg', 'Mix de fresa, sandia, albaha y miel de abeja.', 85, 'Moothies', NULL, NULL, 1),
(145, 'MEDIEVAL', 'uploads/iLmEvSVpWNXWuGIyKUDs2L7khNqLZh4lTmIvUTa2.jpg', 'Queso azúl, queso manchego, cebolla Crunch, tocino, manzana salteada en miel de maple y aderezo smoke', 195, 'Especialidades', NULL, '2024-04-21 08:39:07', 1),
(146, 'MONTECRISTO', 'uploads/YhtSc5w6d4RAnssbBRJdb8NojKdM74LfFOQKFfKr.jpg', '18gr de arrachera, queso manchego, aguacate, salsa alí, cebolla morada y piña asada con habanero.', 210, 'Especialidades', NULL, '2024-04-21 08:38:32', 1),
(147, 'MONARCA', 'uploads/NBHAS33LZfAIqJKkh0EzzyIy2ZGvJDoS1BCbPbHK.jpg', 'Pollo cajún, queso manchego, ensalada coleslaw, sweet sirracha, aderezo de la casa', 185, 'Especialidades', NULL, '2024-04-21 08:40:01', 1),
(148, 'ARTESANA', 'uploads/nv0KRNwuptyXpz2bpXKkwbg0YJxtFD9zclMXiRWx.jpg', 'Hongo portodello relleno de queso de cabra, platano macho frito, piña asada, cebolla Crunch y aderezo de la casa', 175, 'Especialidades', NULL, '2024-04-21 08:40:29', 1),
(150, 'Hamburguesa americana', 'uploads/NQE7vLLxvdEYBmXQ95uh5tcK2cBWCIY0LwDUXn5y.png', 'Hamburguesa americana', 200, 'Hamburguesas', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ibIhEsEoDRoLPT6FVJbGrNuFTzlYz8kQeLKGYN0B', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTE45N3J0VG1LbWN2SzFSZWFWdWRSWnJaVWRXVVc1T3RiYk5jMDNEeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9maWxlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjk7fQ==', 1724120829),
('SHRh5BzTc6C7kEcD7ZrjALYZeC5Zk3RXXGnWkPSX', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoid3I3bktPYXEzQmE3NXZZOXZUcGJLVzFTNlVLY0Yyemlsa25GU1RlaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJyaXRvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjk7fQ==', 1724093309);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Chelsea', '20220@upb.edu.mx', NULL, '$2y$12$ZnfNyEd.Rx1Cx4iQxmJyOO4gDHtcU.3M.JRUFe2eqw/hk1lYAkonS', NULL, '2024-07-04 07:22:30', '2024-07-04 07:22:30'),
(6, 'Fabian', 'fabian@gmail.com', NULL, '$2y$12$pxgyOXDZ2TbQjmElHi2aI.yCVrNXHLtbSxDlFZjAKSSisVNoSPkMK', NULL, '2024-07-05 06:04:21', '2024-07-05 06:04:21'),
(7, 'fabi', 'fa@upb.edu.mx', NULL, '$2y$12$gQz.kDTTG9DLIZsq9MbRM.WfRplOebACb5EU5m4iDKoPIYlG7NYQi', NULL, '2024-07-05 06:17:07', '2024-07-05 06:17:07'),
(8, 'Ceja', 'ceja@gmail.com', NULL, '$2y$12$DaCTWugMJUIz.tKv8Jf.KO1Ov8v6NmGdaMmE7Sc1hl2t7r4p1UDOm', NULL, '2024-07-08 21:58:06', '2024-07-08 21:58:06'),
(9, 'Fabian', '123456789@gmail.com', NULL, '$2y$12$.czNOrmlMp2NbrfjBtjqpe3/UJpRNOZfbHIX/Y5bShVWZUZWM9kwC', NULL, '2024-08-10 08:38:17', '2024-08-10 08:38:17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `platillos`
--
ALTER TABLE `platillos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `platillos`
--
ALTER TABLE `platillos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
