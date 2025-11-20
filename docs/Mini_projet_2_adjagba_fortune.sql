-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 10 août 2025 à 20:20
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `garage_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_09_020925_create_vehicules_table', 1),
(5, '2025_08_09_020941_create_reparations_table', 1),
(6, '2025_08_09_020956_create_techniciens_table', 1),
(7, '2025_08_09_021009_create_reparation_technicien_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reparations`
--

CREATE TABLE `reparations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicule_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `duree_main_oeuvre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `objet_reparation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reparations`
--

INSERT INTO `reparations` (`id`, `vehicule_id`, `date`, `duree_main_oeuvre`, `objet_reparation`, `created_at`, `updated_at`) VALUES
(1, 11, '1975-05-30', '3 heures', 'Autem tempore modi voluptas nam velit et nisi.', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(2, 12, '2022-06-10', '4 heures', 'At neque est rerum labore.', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(3, 13, '1983-11-03', '3 heures', 'Qui dolorem natus inventore cupiditate reiciendis voluptatem.', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(4, 14, '2014-09-17', '5 heures', 'Nemo necessitatibus vel nisi reprehenderit non sit.', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(5, 15, '2000-03-31', '1 heures', 'Fugiat et dolorem aliquam autem.', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(6, 16, '1976-05-29', '1 heures', 'Adipisci tempora qui minima omnis quaerat rerum aut.', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(7, 17, '1995-01-10', '2 heures', 'Rerum magnam similique reiciendis beatae iste illo.', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(8, 18, '2023-03-18', '3 heures', 'A ipsum dicta suscipit tenetur minima.', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(9, 19, '2024-01-21', '3 heures', 'Officia velit sapiente dignissimos quia et sit id.', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(10, 20, '2011-06-30', '1 heures', 'Voluptatem mollitia aperiam labore tenetur aliquam possimus.', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(11, 21, '2002-02-10', '4 heures', 'Aliquid nam et autem maiores ut vitae.', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(12, 22, '1973-09-17', '2 heures', 'Voluptas ea soluta sit.', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(13, 23, '1974-06-23', '3 heures', 'Odit vel quos enim non quae nesciunt.', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(14, 24, '2002-12-07', '3 heures', 'A exercitationem sapiente ea deleniti accusantium dolor omnis.', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(15, 25, '1983-08-26', '1 heures', 'Aliquam laudantium quo quisquam laudantium rerum quasi.', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(16, 1, '2025-08-10', '3h', 'Changement des freins', '2025-08-10 18:44:38', '2025-08-10 18:44:38'),
(17, 1, '2025-08-10', '3h', 'Changement des freins', '2025-08-10 18:45:33', '2025-08-10 18:45:33');

-- --------------------------------------------------------

--
-- Structure de la table `reparation_technicien`
--

CREATE TABLE `reparation_technicien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reparation_id` bigint(20) UNSIGNED NOT NULL,
  `technicien_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reparation_technicien`
--

INSERT INTO `reparation_technicien` (`id`, `reparation_id`, `technicien_id`, `created_at`, `updated_at`) VALUES
(1, 1, 5, NULL, NULL),
(2, 1, 1, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 2, 4, NULL, NULL),
(5, 2, 1, NULL, NULL),
(6, 3, 4, NULL, NULL),
(7, 3, 1, NULL, NULL),
(8, 3, 2, NULL, NULL),
(9, 4, 3, NULL, NULL),
(10, 4, 2, NULL, NULL),
(11, 4, 5, NULL, NULL),
(12, 5, 5, NULL, NULL),
(13, 6, 3, NULL, NULL),
(14, 6, 2, NULL, NULL),
(15, 7, 3, NULL, NULL),
(16, 7, 2, NULL, NULL),
(17, 8, 1, NULL, NULL),
(18, 9, 4, NULL, NULL),
(19, 9, 5, NULL, NULL),
(20, 10, 1, NULL, NULL),
(21, 10, 4, NULL, NULL),
(22, 11, 2, NULL, NULL),
(23, 11, 4, NULL, NULL),
(24, 12, 3, NULL, NULL),
(25, 12, 5, NULL, NULL),
(26, 12, 2, NULL, NULL),
(27, 13, 3, NULL, NULL),
(28, 13, 1, NULL, NULL),
(29, 13, 5, NULL, NULL),
(30, 14, 3, NULL, NULL),
(31, 14, 4, NULL, NULL),
(32, 14, 5, NULL, NULL),
(33, 15, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FJ6I6qK63h1ckYhju7gKhykEjLYrk4Ze01ihkS3I', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2pJUW5RMnA5ckRQc29wbUVQNFI5bUNQQVNncEJTMTRVRGYyVkI5NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1754856452);

-- --------------------------------------------------------

--
-- Structure de la table `techniciens`
--

CREATE TABLE `techniciens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialite` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `techniciens`
--

INSERT INTO `techniciens` (`id`, `nom`, `prenom`, `specialite`, `created_at`, `updated_at`) VALUES
(1, 'Hickle', 'Cleta', 'Électricité', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(2, 'Zemlak', 'Carol', 'Carrosserie', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(3, 'Rippin', 'Albina', 'Électricité', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(4, 'Bode', 'Rebeca', 'Mécanique', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(5, 'Jacobson', 'Pierce', 'Carrosserie', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(6, 'Fortuné', 'ADJAGBA', 'Mécanique', '2025-08-10 18:45:03', '2025-08-10 18:45:03');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vehicules`
--

CREATE TABLE `vehicules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `immatriculation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marque` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modele` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `couleur` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annee` int(11) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `carosserie` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `energie` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `boite` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vehicules`
--

INSERT INTO `vehicules` (`id`, `immatriculation`, `marque`, `modele`, `couleur`, `annee`, `kilometrage`, `carosserie`, `energie`, `boite`, `created_at`, `updated_at`) VALUES
(1, 'KB-2164-VB', 'Herman, Beer and Parisian', 'quia', 'black', 2008, 144015, 'molestias', 'Essence', 'Manuelle', '2025-08-10 18:43:23', '2025-08-10 18:43:23'),
(2, 'NN-4328-DL', 'Hagenes-Rowe', 'cum', 'teal', 1974, 80714, 'doloribus', 'Électrique', 'Manuelle', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(3, 'PF-2751-ZE', 'Veum, Stoltenberg and Koss', 'dicta', 'teal', 1999, 117018, 'aperiam', 'Essence', 'Automatique', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(4, 'IB-8598-ZR', 'Ryan LLC', 'libero', 'blue', 2010, 156764, 'et', 'Essence', 'Automatique', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(5, 'OT-1584-AX', 'Feeney-Romaguera', 'voluptatum', 'silver', 1974, 185974, 'vel', 'Électrique', 'Manuelle', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(6, 'PU-7644-RP', 'Gibson, Farrell and Haley', 'qui', 'white', 2021, 50563, 'enim', 'Diesel', 'Manuelle', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(7, 'UJ-3800-EY', 'Christiansen-Bernhard', 'magni', 'green', 2013, 125226, 'in', 'Diesel', 'Automatique', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(8, 'LU-3789-CJ', 'Tromp Group', 'architecto', 'teal', 2015, 105512, 'dolore', 'Diesel', 'Automatique', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(9, 'BL-2497-MM', 'Kshlerin-O\'Conner', 'eum', 'purple', 1999, 177305, 'ut', 'Électrique', 'Manuelle', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(10, 'JD-7907-YL', 'Ondricka Ltd', 'officiis', 'olive', 2020, 59263, 'pariatur', 'Électrique', 'Manuelle', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(11, 'SL-8259-UC', 'Nicolas-Prohaska', 'aliquid', 'green', 2014, 122880, 'repudiandae', 'Diesel', 'Automatique', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(12, 'UH-7313-WO', 'Jones-Parisian', 'id', 'lime', 1987, 119633, 'sequi', 'Électrique', 'Manuelle', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(13, 'RC-4736-TO', 'Heidenreich-Reichel', 'itaque', 'teal', 1998, 74033, 'tempora', 'Électrique', 'Manuelle', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(14, 'SO-7992-EP', 'Reilly, Considine and Beahan', 'error', 'yellow', 2019, 176060, 'nesciunt', 'Essence', 'Automatique', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(15, 'RC-8760-PG', 'Price Inc', 'ut', 'maroon', 2007, 55859, 'omnis', 'Diesel', 'Automatique', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(16, 'VW-2956-RZ', 'Schmitt-Rau', 'suscipit', 'white', 1995, 31175, 'et', 'Essence', 'Manuelle', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(17, 'ZG-7126-GK', 'Boyer PLC', 'rem', 'blue', 1989, 106607, 'nemo', 'Essence', 'Automatique', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(18, 'NT-5755-ON', 'Padberg Inc', 'dicta', 'teal', 1974, 139649, 'delectus', 'Diesel', 'Automatique', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(19, 'LW-8680-KH', 'Jacobi-Dooley', 'sint', 'white', 2004, 135753, 'qui', 'Essence', 'Manuelle', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(20, 'KZ-6924-UR', 'Heathcote-Jakubowski', 'est', 'lime', 2002, 172810, 'laborum', 'Essence', 'Automatique', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(21, 'UG-4065-SK', 'Predovic, Leffler and Schaden', 'voluptas', 'aqua', 2018, 123603, 'maiores', 'Électrique', 'Automatique', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(22, 'SH-4215-GO', 'Dooley Inc', 'enim', 'purple', 1971, 120659, 'facilis', 'Électrique', 'Manuelle', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(23, 'TF-8224-JB', 'Oberbrunner, Medhurst and Sanford', 'distinctio', 'fuchsia', 2000, 167740, 'dignissimos', 'Essence', 'Automatique', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(24, 'DZ-1640-PJ', 'Wolff and Sons', 'molestiae', 'lime', 1991, 108844, 'quae', 'Diesel', 'Automatique', '2025-08-10 18:43:24', '2025-08-10 18:43:24'),
(25, 'NY-7724-FA', 'Streich, Crona and Lemke', 'autem', 'green', 2025, 137361, 'iste', 'Essence', 'Manuelle', '2025-08-10 18:43:24', '2025-08-10 18:43:24');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `reparations`
--
ALTER TABLE `reparations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reparations_vehicule_id_foreign` (`vehicule_id`);

--
-- Index pour la table `reparation_technicien`
--
ALTER TABLE `reparation_technicien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reparation_technicien_reparation_id_foreign` (`reparation_id`),
  ADD KEY `reparation_technicien_technicien_id_foreign` (`technicien_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `techniciens`
--
ALTER TABLE `techniciens`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `vehicules`
--
ALTER TABLE `vehicules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicules_immatriculation_unique` (`immatriculation`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `reparations`
--
ALTER TABLE `reparations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `reparation_technicien`
--
ALTER TABLE `reparation_technicien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `techniciens`
--
ALTER TABLE `techniciens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `vehicules`
--
ALTER TABLE `vehicules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reparations`
--
ALTER TABLE `reparations`
  ADD CONSTRAINT `reparations_vehicule_id_foreign` FOREIGN KEY (`vehicule_id`) REFERENCES `vehicules` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reparation_technicien`
--
ALTER TABLE `reparation_technicien`
  ADD CONSTRAINT `reparation_technicien_reparation_id_foreign` FOREIGN KEY (`reparation_id`) REFERENCES `reparations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reparation_technicien_technicien_id_foreign` FOREIGN KEY (`technicien_id`) REFERENCES `techniciens` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
