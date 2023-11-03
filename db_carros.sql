-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2023 a las 18:10:01
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
-- Base de datos: `db_carros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 2),
(6, '2023_10_20_181745_create_products_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand` varchar(191) NOT NULL,
  `model` varchar(191) NOT NULL,
  `year` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` text NOT NULL,
  `transmission` varchar(191) NOT NULL,
  `color` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `brand`, `model`, `year`, `price`, `stock`, `description`, `transmission`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Toyota', 'Corolla', 2022, 25000.00, 10, 'El Toyota Corolla 2022 es un automóvil compacto muy popular conocido por su confiabilidad y eficiencia. Viene con un motor de 1.8 litros, transmisión automática, y ofrece un excelente consumo de combustible. Ideal para aquellos que buscan un vehículo económico para desplazamientos diarios.', 'Automática', 'Blanco', '2023-10-21 00:49:39', '2023-10-21 12:25:12'),
(2, 'Ford', 'F-150', 2023, 45000.00, 5, 'La Ford F-150 2023 es una camioneta de gran tamaño con capacidades excepcionales de carga y remolque. Equipada con un motor V8 de 5.0 litros, esta camioneta es ideal para trabajos pesados. Ofrece comodidad en carretera y una cabina espaciosa.', 'Automática', 'Gris', '2023-10-21 00:54:11', '2023-10-21 00:54:11'),
(3, 'Honda', 'Civic', 2022, 22000.00, 8, 'El Honda Civic 2022 es un sedán compacto conocido por su eficiencia en combustible y manejo ágil. Viene con un motor de 2.0 litros, una transmisión manual y una larga lista de características de seguridad. Es perfecto para conductores que valoran la economía de combustible.', 'Manual', 'Azul', '2023-10-21 00:56:40', '2023-10-21 00:56:40'),
(4, 'Chevrolet', 'Malibu', 2022, 26000.00, 6, 'El Chevrolet Malibu 2022 es un sedán mediano con un diseño elegante y comodidades modernas...', 'Automática', 'Rojo', NULL, NULL),
(5, 'Volkswagen', 'Jetta', 2023, 24000.00, 7, 'El Volkswagen Jetta 2023 es un sedán compacto versátil con un interior espacioso y un manejo cómodo...', 'Automática', 'Plata', NULL, NULL),
(6, 'Nissan', 'Altima', 2022, 23000.00, 9, 'El Nissan Altima 2022 es un sedán mediano con un interior de alta calidad y características tecnológicas avanzadas...', 'Automática', 'Negro', NULL, NULL),
(7, 'Jeep', 'Wrangler', 2023, 35000.00, 4, 'El Jeep Wrangler 2023 es un icónico todoterreno con capacidades excepcionales fuera de la carretera...', 'Manual', 'Verde', NULL, NULL),
(8, 'Mercedes-Benz', 'C-Class', 2022, 46000.00, 3, 'El Mercedes-Benz C-Class 2022 es un sedán de lujo con un diseño elegante y un interior lujoso...', 'Automática', 'Plata', NULL, '2023-10-21 01:03:32'),
(9, 'BMW', '3 Series', 2023, 48000.00, 2, 'El BMW 3 Series 2023 es un sedán deportivo con un rendimiento excepcional y un interior sofisticado...', 'Automática', 'Azul', NULL, NULL),
(10, 'Audi', 'A4', 2022, 42000.00, 5, 'El Audi A4 2022 es un sedán de lujo con una combinación de elegancia y tecnología de vanguardia...', 'Automática', 'Gris', NULL, NULL),
(11, 'Hyundai', 'Elantra', 2023, 22000.00, 8, 'El Hyundai Elantra 2023 es un sedán compacto con un diseño atractivo y un interior espacioso...', 'Automática', 'Rojo', NULL, NULL),
(12, 'Kia', 'Optima', 2023, 27000.00, 5, 'El Kia Optima 2023 es un sedán mediano con un diseño elegante y una larga lista de características de seguridad...', 'Automática', 'Plata', NULL, NULL),
(13, 'Subaru', 'Outback', 2022, 32000.00, 3, 'El Subaru Outback 2022 es un crossover con tracción en las cuatro ruedas que combina comodidad en carretera con capacidad todoterreno...', 'Automática', 'Azul', NULL, NULL),
(14, 'Tesla', 'Model 3', 2023, 50000.00, 2, 'El Tesla Model 3 2023 es un automóvil eléctrico con un rendimiento sorprendente y tecnología de vanguardia...', 'Automática', 'Blanco', NULL, '2023-10-21 13:02:56'),
(15, 'Mazda', 'CX-5', 2022, 28000.00, 6, 'El Mazda CX-5 2022 es un SUV compacto con un diseño elegante y un manejo ágil...', 'Automática', 'Gris', NULL, NULL),
(16, 'Acura', 'RDX', 2023, 38000.00, 4, 'El Acura RDX 2023 es una SUV de lujo con un interior de alta calidad y tecnologías avanzadas...', 'Automática', 'Rojo', NULL, NULL),
(17, 'Lexus', 'ES', 2022, 42000.00, 3, 'El Lexus ES 2022 es un sedán de lujo con un diseño sofisticado y un interior de lujo...', 'Automática', 'Negro', NULL, NULL),
(18, 'Ford', 'Mustang', 2023, 45000.00, 3, 'El Ford Mustang 2023 es un icónico muscle car conocido por su potencia y estilo deportivo...', 'Manual', 'Amarillo', NULL, NULL),
(19, 'Toyota', 'Camry', 2022, 27000.00, 6, 'El Toyota Camry 2022 es un sedán mediano que combina eficiencia de combustible con comodidad en carretera...', 'Automática', 'Plateado', NULL, NULL),
(20, 'Chevrolet', 'Tahoe', 2023, 55000.00, 2, 'La Chevrolet Tahoe 2023 es una SUV de gran tamaño con capacidad para hasta ocho pasajeros...', 'Automática', 'Negro', NULL, NULL),
(21, 'Jeep', 'Cherokee', 2022, 34000.00, 4, 'El Jeep Cherokee 2022 es un SUV compacto que ofrece capacidades todoterreno y un interior cómodo...', 'Automática', 'Verde', NULL, NULL),
(22, 'Hyundai', 'Tucson', 2023, 28000.00, 5, 'El Hyundai Tucson 2023 es un SUV compacto con un diseño moderno y una amplia gama de características tecnológicas...', 'Automática', 'Blanco', NULL, NULL),
(23, 'Nissan', 'Rogue', 2022, 32000.00, 3, 'El Nissan Rogue 2022 es un SUV compacto con un interior espacioso y características de seguridad avanzadas...', 'Automática', 'Azul', NULL, NULL),
(24, 'Mercedes-Benz', 'Clase S', 2023, 100000.00, 5, 'Este impresionante vehículo de lujo es un Mercedes-Benz Clase S, un símbolo de elegancia y prestigio. Con un año de fabricación 2023, este automóvil combina un diseño sofisticado con un rendimiento excepcional.', 'Manual', 'Negro', '2023-10-21 13:00:29', '2023-10-21 13:01:04'),
(31, 'Toyota', 'RAV4', 2022, 30000.00, 7, 'El Toyota Camry 2022 es un sedán mediano que combina comodidad y eficiencia. Esta variante plateada es una opción elegante para aquellos que buscan un automóvil confiable y espacioso.', 'Automática', 'Plateado', '2023-10-21 21:30:33', '2023-10-21 21:32:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'José Carlos López ', 'josecarloslopezm2003@hotmail.com', NULL, '$2y$10$oP7QzaC9F6lLQhR/8Qxfqu0JyvXFEFo/Hgp65BsV27pLX2egjpS4W', NULL, '2023-10-21 00:37:04', '2023-10-21 00:37:04'),
(2, 'Usuario Nombre', 'prueba@gmail.com', NULL, '$2y$10$3ZG0njryRfYrS7LXebBG9eGhv5oGlwUZcqVQqiMe3AffUc2wvuWPW', NULL, '2023-10-21 09:14:37', '2023-10-21 09:14:37'),
(3, 'Prueba2', 'prueba2@gmail.com', NULL, '$2y$10$ahHaZYbqq4WW9RJcwZCNuOgxOJVjBQ3v2o8XiQLTRN7zO4vfh7Piu', NULL, '2023-10-21 10:10:32', '2023-10-21 10:10:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
