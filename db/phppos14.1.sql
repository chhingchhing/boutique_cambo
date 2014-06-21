-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 07, 2014 at 09:11 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phppos14.1`
--

-- --------------------------------------------------------

--
-- Table structure for table `phppos_app_config`
--

CREATE TABLE IF NOT EXISTS `phppos_app_config` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phppos_app_config`
--

INSERT INTO `phppos_app_config` (`key`, `value`) VALUES
('additional_payment_types', ''),
('automatically_email_receipt', '0'),
('averaging_method', 'moving_average'),
('barcode_price_include_tax', '0'),
('calculate_average_cost_price_from_receivings', '0'),
('change_sale_date_when_completing_suspended_sale', '0'),
('change_sale_date_when_suspending', '0'),
('company', 'CIMS'),
('company_logo', '1'),
('currency_symbol', '$'),
('customers_store_accounts', '0'),
('date_format', 'middle_endian'),
('default_payment_type', 'Cash'),
('default_tax_1_name', 'Sales Tax'),
('default_tax_1_rate', ''),
('default_tax_2_cumulative', '0'),
('default_tax_2_name', 'Sales Tax 2'),
('default_tax_2_rate', ''),
('default_tax_3_name', ''),
('default_tax_3_rate', ''),
('default_tax_4_name', ''),
('default_tax_4_rate', ''),
('default_tax_5_name', ''),
('default_tax_5_rate', ''),
('default_tax_rate', '8'),
('disable_confirmation_sale', '0'),
('hide_dashboard_statistics', '0'),
('hide_signature', '0'),
('hide_store_account_payments_in_reports', '0'),
('hide_suspended_sales_in_reports', '0'),
('language', 'english'),
('number_of_items_per_page', '20'),
('prices_include_tax', '0'),
('print_after_sale', '0'),
('return_policy', 'Change return policy'),
('round_cash_on_sales', '0'),
('sale_prefix', 'CIMS'),
('show_receipt_after_suspending_sale', '0'),
('time_format', '12_hour'),
('track_cash', '0'),
('version', '14.1'),
('website', '');

-- --------------------------------------------------------

--
-- Table structure for table `phppos_app_files`
--

CREATE TABLE IF NOT EXISTS `phppos_app_files` (
  `file_id` int(10) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_data` longblob NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `phppos_app_files`
--

INSERT INTO `phppos_app_files` (`file_id`, `file_name`, `file_data`) VALUES
(1, 'cg-logo.png', 0x89504e470d0a1a0a0000000d49484452000000aa000000290806000000a552b2f400000dea49444154789ced9c7f6c55e779c73fdfdbb37b3ccf42966b599615591e435d82f80315e2fa8f2c4b09a25216659b46bba89a42d340ed14529aa115a12c8b2284a60ad18c0d4f76e99674edb22a4bdba5ddb234a2acd310620448c4504a1943cc430859ccb22c447cae4eeeb33fdef7dc7beef5b9bf0c7666e97efff0b9e7c7fbbccffb9ee77ddee7d731b4d1461b6db4d1461b6db4d1c6ff2f68a93b98181eef010e600c253d9ab9a33030392e2cddca6e99f877a11f0157c74eef2c54d39d9f18c1649d326d443c0c7c12085cf3a41f730394ca17cb0ffcb3c15ffef2e8a9f8ee8fba8dbb8d60c97b30f2c81e30b40e19424e6e0010262740525a9404b015d8077c6b6278fcc0d8e99d731574c590d0d7115b819c992189cc23a9c56124827b4d4bbf4edbb84b587a41052f8186d00c70a57c0d12614904cb375825740fd003fc21c6e0c4fd479e1a7b67d76d800f264656032f030f82613023e9ba19f3c92a50d6d129f0f5826019369336ee22964750e5f67b836360cfa044b5417adf4ffecae846ac05f69bd95a495b413f9e181e7ff50b4f7d07837d180f202b1abc2ef457189710b7d3dd9a25545d1f9210fcc2ccba13c16d63656079043581987ffaf4aee9269e9c062e4d0c8f9f477ac3b07542a3c0db06dd987dde694ebd26d8d6317a6a810d5b0bf39323c592edd156aa2b06b925ef21658f7a15d73c8cab82bff76dd7014332db2c290fdc02be0d342da49e26c230b396d969e3a3c3d20baa170689940dda1cc6ded959048e0b30d12315074ddc875960d81c70a163f4546bfc080c3933a0ad51570c9649a33a0db628984d3b2d0861581814eaf7a6e73c70ed8e786b6bd4158365d1a866ad6bd30a122e189a904b9c225ad6a69e405b91ae3c2c8746bd8d4a76e4aa89e1f18ed6da57463b65295ba245cc4f7caa1391c300b3db6d895d39587a418539c194fb6943406f4badcd2ab66863f13bb6c1468cbc89d8e0bf8076566a8560c90575ecf44e40ff021441f7823d3471ff78f3fd4a5e0126a7494cb63571fd6072a453d2670deb10cc214e2dca7468e323c172685480d781f70deb30e31062fbc4f07877330d9d7d5bdee9930c562be9cf0f264706e5d2b1db25e50c4e089d5bc438daf888b05c29d41b88e7855e46f499d961a4bd13c3e357cd6cbec2d14ab249e56b5d69522a17050ccc4f7eea9fd28526be6aa0a46d5dc041ddc010cee4c8031705fb3bdac5282b0acb22a83e1efa0f13c3e3bd66ec47f4c9580db67a4134a09417b024b285a51c2af3422ce8043d926e584ac69a4bd15a4ade0d8ac22e809e016b6bd31586654da18e9ddef9ad89fb8fbc69e80f10bf09eac5c8950b9a70852a29e942659d29d9b44c3388ebd93db8ea2c537264d6b0dbc015997e82f47ac7e8a9b9ecb61084e110702b8ea29b776bcc6ddc1d346de8056198c3553355da966695a1a2ea73f7e26fa42fec983c1b7cfc17d36b54b45ed4bc9d9ccfdfbab271e3915e60a0ecfb57d498561ca39ce60b39c5d7c2dcecb58e8fdd56124070b5b0f398ae8f3ff26ffd402766f3488f02bf85d9334857e3286a9635827c1ea47e9ca9528ca3e8ca8267c2308f9bc3aeea7b6e08e92da0621e6fc651345bd55f0ea917e8c22cd742b86e268ea2992abe72c02adcbb6d45791580eb711495cca8200c03dc1857b5402793af0a1e9ba110e4f3ab81a7307b1069287362aabd9e325e039e4d4e764c9e5d0f3cf9bfbfde3702d66f46201fd0b7a4909a3499b2edc9c77ee585631fffa50da0c72ca56d534f902291660e9f862daf4cd30964db8083c04348a7307b17e951a46ecff39966e6c7339c07f6029f036e001bd2b783301c06b661b6116980c491cd8a0b2fcce23d07bc92a2b506781a1801067cdf95b46a09bdd921e01b295abd987d11e9616008b3ae52fb34ad2cba700eb327819b9ed67a601b308cd93d4050d1a63ecd83c09f654f6e0341f51a602b30097422e54ac4132c64befabc079c1605be06f64798ba7de97d25296f9b9a2f78c6e7e41d3d00ba30f5201b485f575a93fa9f49322b5de79aca6d81e805e5805ecc0680ded2f8cc1e007e1ce4f3cf02afc7854263c7cb8db90718a898c37cbe0be9796017669d99f3b5c04e5f50c0d3e569e590be04bc08f465f2d148b34a256d1e84e108aeb0670dd511a06a61caa67f0d291784611eb3af01cf62d693d9a6f6c249eed7d5c08d34ea16ccc6fde06e613685740698a9e8246ba2cb7867fbe4d91cf005e03950a7c11c6617252e189a53553bf9df5e53f6203d5111363561d8aca457ca9f0594edda72fd7549cfa6997b1ca3bf32dd95c97fbf1f7b6f1086afc45174abc15c2d80df06bf047c15177198052e01ef81af9dad2504953cbd1784610eb3ad981d007a90e67089940b380d7e1be97ffcf3bf8614a4687500634049f882301cc4ed269f408a811b989d47ba82fbac67c4f7f123e066864907f0dfde64fa9c5f8c79dfe63266e7906e95faac27a48ec7ba41ed9a821a84612ff002523766d790f6013f88a3e876ad3675b006ec795027d825497b406f1e1ddd506cd470c7c4994f203d51f6a8fcd174f3f0a663cfd66a570bbb8f6f1e31d15f22556b5b7213d883d941e0be200cf73614d6852f732db01bc863761a695f1c45c75be519200843f7ed99d3dad7811d98bddd8cb60fc2701589a096f97b1c78c0f3fd37482fc685c2947ffe8f7166c52c6607e342e17c1dda6b0027a47011d80334c5572ba8e7c86cc64d3448078057e3426131428ae0114383c0bc197b807f6c46487ddf55395397956a3edc9fc90fd55abce2b734031c41ba0e74208d61f6fd200cef6dc86b253e0b0c02f3487b804509a9c766dc161d037f0abcb95861f026ddef01607602e9b9388aa64a0f248b365b8b56c26c0bb006b302ce467f33ed5cdd2dd41654b3fb71de7011782d8ea2e604ab0a3b26cf82d9a75dcedede97f4ded1d10d8d1b266c402ab68af388eea03ccf16fcf0a8b4b18bc0df01db90a6fc0bdb82d9cb413e3fe2bde41a1d58fa450ffbab17800bad441132f069afed6f00275aa255c91338811f048ac04f705f542c16bfe19deb8bc0993b1c634dd4b651a535fe7819675b2d12b60a69d0db9253780fb159b86afc546cd53b4bade6fa4bf4d2e102a8e730c471141d0bc2f033c05fe034da08f043607710863fa8d01cd99a799dbff23e547ecf15846127b0ab82b96a5ecae727301b4af5f1bb413ebfa5f46c56bb4a6fbba3ea7c08e71cc748e7ea2aa14675c4c9189db07e3108c342a626ce76a0d2d74ec485c2c95add34139e9a6afc483da8132cef056deee8e886f9565a9b8f2995bed127cb296e859d524421062b9608bacea83807e228ba1884e136e000f079a47ecc8e028341187e338ea2b95a6d5398c169aff4c0ba90be5e6a5bdf29dd0774fa6bf7007fd2306a50ebe8faba07b75bc6de79ca46b3b15947731db0aee6fdf431fbda0bc02205d5315058bc549091ba6f0d49c6aa72cb4e69c496f971e1131937909cf034a8718da3e87a1086cf204d03bb9056e126f657837c7e6fc9bb2d75b2c0c69b5b60b7b9eb950b25ddde5d4b4c8ca9aafbc5051aa9317229beba925d835adf9cb5461b92b1d46ad7c8ebaf5ec855a82fa8d52b721148424db068d372c07cac547c385d91886a11bb8f6fee04fa0cc3c4aca0d8ecd8e228ba1584e13e5c52e025ccfa91c6bc26790ab3853b4f7dda33c07d992fce9d3f8d0b6b15307b3f45eb24d2934dd02fc309e6d9a44d1c45df08c2f07b489d5919b412ed661454791b7f15d85f777bafe6b992ffba26e192e7fa4b61ced259f3d83e792667f019dcff04b8a95c3495d06b75ed7ce5a79b71ff0b800eb9b8e1cfa92e9c6ea045e2282a0661f81a4ec85ec2ec5ea40731fb5ba4176ab6cf78e15ec35ecaea2708c300b3b59ed625a4b27d6b762b2e1432dbd5820f4f559b3435ea25a8b66f9bed66b655be5ac192d7a3961560666eb311d6087ec7d1d1f95cc7b52bde1268dd1a917501a3061dc02cc6c9c39b8e553da3ca6d3b03711415e3287a1be9f78193fe850e03df46da78276612f89a01d88473dcc0d96d7325cf7db1bbdb62f86aa6bfbbb0eb3683da1ab56cb77561b62e08c3da36489d01bdf3c678c7c6c7beecbc7659f7f6c9b3eb9c272f6f6abaa8a8cc7c399f01ea02d61bb6d7cc8624158043f9beefcf26e95183fc578e6f5e07a5f3cc2390075b0b7a12f19077a0be6b2e64b4708b6a7e3bbd00fcb677889ec0a534fbaac25cc91cf6056198ed6854a213f824662f7a3b780eb3ef0085050e5fab684590d273d2a8bff2fd9e26c7580bd37114d50c933563a36e047e98e9b1556f1119def3d4f97f3db9f1b12f270ed126616f54d69756b715263a64f4210249f3c05f03c7948b4bfc0a06ccec8d8a9240ff23a1eff3fc81a17eb0bca088f196c1a13f7ff8a7958e4cfd34f002c48502c04c90cfefc12506be8ad9aa1a36d8e3c096ba041d3a30eb430a7c00fd15a4939875df913685c569e366b77e47f751cc466a384ab59da8b2fcbc041ca9d54533366a27d2ea064cd6d44ac50f3fbcec3c77af29459773b07cb3eaad36116277ff2a7018e39b47c73614761fdf1ca49e0b04abcb35ac4e4ba75f8554d2d70073a0ef493c7f78d3b1f2caad7e112d6aaeb850980bc2703ff09fc041ef64553fd64d7579642db8b63780434813711415bd397067684548eb85be6ac12dd2726149eb8baaa7decd7a01ffb3b81c75b9e3f4cbcb5a6dd92bf01c460fd235123b55e58d39f1e89df603339b9374157857e8383073746c430c60104b7ad760553a9ae03b4f420ce96dbf2074c58c9f231d97fb8715d571dc333e4c7501b3cbc05bc01c52d3498e388ae2200c5f45ba8ad93866c997b63fa3d60b58a855668029ccfe03e96748d3a59096337d4ee30a4f16f375420cbce5dfcde5269ebf829b8769dcbf4eaa0de924ae8aaa7c2d4b7b37f2fc5d62a98de5421086eb837cfee58f9a8f36da68a38d36da68a38d158cff0311f00ce8ad7bd0b30000000049454e44ae426082);

-- --------------------------------------------------------

--
-- Table structure for table `phppos_customers`
--

CREATE TABLE IF NOT EXISTS `phppos_customers` (
  `person_id` int(10) NOT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `balance` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `taxable` int(1) NOT NULL DEFAULT '1',
  `cc_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_preview` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_issuer` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `tier_id` int(10) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `account_number` (`account_number`),
  KEY `person_id` (`person_id`),
  KEY `deleted` (`deleted`),
  KEY `cc_token` (`cc_token`),
  KEY `phppos_customers_ibfk_2` (`tier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_employees`
--

CREATE TABLE IF NOT EXISTS `phppos_employees` (
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `person_id` int(10) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `username` (`username`),
  KEY `person_id` (`person_id`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phppos_employees`
--

INSERT INTO `phppos_employees` (`username`, `password`, `person_id`, `language`, `deleted`) VALUES
('admin', '202cb962ac59075b964b07152d234b70', 1, NULL, 0),
('sothea', '25d55ad283aa400af464c76d713c07ad', 2, 'english', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phppos_employees_locations`
--

CREATE TABLE IF NOT EXISTS `phppos_employees_locations` (
  `employee_id` int(10) NOT NULL,
  `location_id` int(10) NOT NULL,
  PRIMARY KEY (`employee_id`,`location_id`),
  KEY `phppos_employees_locations_ibfk_2` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phppos_employees_locations`
--

INSERT INTO `phppos_employees_locations` (`employee_id`, `location_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phppos_giftcards`
--

CREATE TABLE IF NOT EXISTS `phppos_giftcards` (
  `giftcard_id` int(11) NOT NULL AUTO_INCREMENT,
  `giftcard_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` decimal(23,10) NOT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`giftcard_id`),
  UNIQUE KEY `giftcard_number` (`giftcard_number`),
  KEY `deleted` (`deleted`),
  KEY `phppos_giftcards_ibfk_1` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_inventory`
--

CREATE TABLE IF NOT EXISTS `phppos_inventory` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_items` int(11) NOT NULL DEFAULT '0',
  `trans_user` int(11) NOT NULL DEFAULT '0',
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trans_comment` text COLLATE utf8_unicode_ci NOT NULL,
  `trans_inventory` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`trans_id`),
  KEY `phppos_inventory_ibfk_1` (`trans_items`),
  KEY `phppos_inventory_ibfk_2` (`trans_user`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_items`
--

CREATE TABLE IF NOT EXISTS `phppos_items` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_included` int(1) NOT NULL DEFAULT '0',
  `cost_price` decimal(23,10) NOT NULL,
  `unit_price` decimal(23,10) NOT NULL,
  `promo_price` decimal(23,10) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `reorder_level` decimal(23,10) DEFAULT NULL,
  `item_id` int(10) NOT NULL AUTO_INCREMENT,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `image_id` int(10) DEFAULT NULL,
  `override_default_tax` int(1) NOT NULL DEFAULT '0',
  `is_service` int(1) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_number` (`item_number`),
  UNIQUE KEY `product_id` (`product_id`),
  KEY `phppos_items_ibfk_1` (`supplier_id`),
  KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `deleted` (`deleted`),
  KEY `phppos_items_ibfk_2` (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_items_taxes`
--

CREATE TABLE IF NOT EXISTS `phppos_items_taxes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percent` decimal(15,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_tax` (`item_id`,`name`,`percent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_items_tier_prices`
--

CREATE TABLE IF NOT EXISTS `phppos_items_tier_prices` (
  `tier_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `unit_price` decimal(23,10) DEFAULT '0.0000000000',
  `percent_off` int(11) DEFAULT NULL,
  PRIMARY KEY (`tier_id`,`item_id`),
  KEY `phppos_items_tier_prices_ibfk_2` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_item_kits`
--

CREATE TABLE IF NOT EXISTS `phppos_item_kits` (
  `item_kit_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_kit_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_included` int(1) NOT NULL DEFAULT '0',
  `unit_price` decimal(23,10) DEFAULT NULL,
  `cost_price` decimal(23,10) DEFAULT NULL,
  `override_default_tax` int(1) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_kit_id`),
  UNIQUE KEY `item_kit_number` (`item_kit_number`),
  UNIQUE KEY `product_id` (`product_id`),
  KEY `name` (`name`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_item_kits_taxes`
--

CREATE TABLE IF NOT EXISTS `phppos_item_kits_taxes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_kit_id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percent` decimal(15,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_tax` (`item_kit_id`,`name`,`percent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_item_kits_tier_prices`
--

CREATE TABLE IF NOT EXISTS `phppos_item_kits_tier_prices` (
  `tier_id` int(10) NOT NULL,
  `item_kit_id` int(10) NOT NULL,
  `unit_price` decimal(23,10) DEFAULT '0.0000000000',
  `percent_off` int(11) DEFAULT NULL,
  PRIMARY KEY (`tier_id`,`item_kit_id`),
  KEY `phppos_item_kits_tier_prices_ibfk_2` (`item_kit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_item_kit_items`
--

CREATE TABLE IF NOT EXISTS `phppos_item_kit_items` (
  `item_kit_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` decimal(23,10) NOT NULL,
  PRIMARY KEY (`item_kit_id`,`item_id`,`quantity`),
  KEY `phppos_item_kit_items_ibfk_2` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_locations`
--

CREATE TABLE IF NOT EXISTS `phppos_locations` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `receive_stock_alert` text COLLATE utf8_unicode_ci,
  `stock_alert_email` text COLLATE utf8_unicode_ci,
  `timezone` text COLLATE utf8_unicode_ci,
  `mailchimp_api_key` text COLLATE utf8_unicode_ci,
  `enable_credit_card_processing` text COLLATE utf8_unicode_ci,
  `merchant_id` text COLLATE utf8_unicode_ci,
  `merchant_password` text COLLATE utf8_unicode_ci,
  `default_tax_1_rate` text COLLATE utf8_unicode_ci,
  `default_tax_1_name` text COLLATE utf8_unicode_ci,
  `default_tax_2_rate` text COLLATE utf8_unicode_ci,
  `default_tax_2_name` text COLLATE utf8_unicode_ci,
  `default_tax_2_cumulative` text COLLATE utf8_unicode_ci,
  `default_tax_3_rate` text COLLATE utf8_unicode_ci,
  `default_tax_3_name` text COLLATE utf8_unicode_ci,
  `default_tax_4_rate` text COLLATE utf8_unicode_ci,
  `default_tax_4_name` text COLLATE utf8_unicode_ci,
  `default_tax_5_rate` text COLLATE utf8_unicode_ci,
  `default_tax_5_name` text COLLATE utf8_unicode_ci,
  `deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`location_id`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `phppos_locations`
--

INSERT INTO `phppos_locations` (`location_id`, `name`, `address`, `phone`, `fax`, `email`, `receive_stock_alert`, `stock_alert_email`, `timezone`, `mailchimp_api_key`, `enable_credit_card_processing`, `merchant_id`, `merchant_password`, `default_tax_1_rate`, `default_tax_1_name`, `default_tax_2_rate`, `default_tax_2_name`, `default_tax_2_cumulative`, `default_tax_3_rate`, `default_tax_3_name`, `default_tax_4_rate`, `default_tax_4_name`, `default_tax_5_rate`, `default_tax_5_name`, `deleted`) VALUES
(1, 'Default', '123 Nowhere street', '555-555-5555', '', 'no-reply@phppointofsale.com', '0', '', 'America/New_York', '', '0', '', '', NULL, 'Sales Tax', NULL, 'Sales Tax 2', '0', NULL, '', NULL, '', NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phppos_location_items`
--

CREATE TABLE IF NOT EXISTS `phppos_location_items` (
  `location_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cost_price` decimal(23,10) DEFAULT NULL,
  `unit_price` decimal(23,10) DEFAULT NULL,
  `promo_price` decimal(23,10) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `quantity` decimal(23,10) DEFAULT '0.0000000000',
  `reorder_level` decimal(23,10) DEFAULT NULL,
  `override_default_tax` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`location_id`,`item_id`),
  KEY `phppos_location_items_ibfk_2` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_location_items_taxes`
--

CREATE TABLE IF NOT EXISTS `phppos_location_items_taxes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `item_id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percent` decimal(16,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_tax` (`location_id`,`item_id`,`name`,`percent`),
  KEY `phppos_location_items_taxes_ibfk_2` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_location_items_tier_prices`
--

CREATE TABLE IF NOT EXISTS `phppos_location_items_tier_prices` (
  `tier_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `location_id` int(10) NOT NULL,
  `unit_price` decimal(23,10) DEFAULT '0.0000000000',
  `percent_off` int(11) DEFAULT NULL,
  PRIMARY KEY (`tier_id`,`item_id`,`location_id`),
  KEY `phppos_location_items_tier_prices_ibfk_2` (`location_id`),
  KEY `phppos_location_items_tier_prices_ibfk_3` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_location_item_kits`
--

CREATE TABLE IF NOT EXISTS `phppos_location_item_kits` (
  `location_id` int(11) NOT NULL,
  `item_kit_id` int(11) NOT NULL,
  `unit_price` decimal(23,10) DEFAULT NULL,
  `cost_price` decimal(23,10) DEFAULT NULL,
  `override_default_tax` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`location_id`,`item_kit_id`),
  KEY `phppos_location_item_kits_ibfk_2` (`item_kit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_location_item_kits_taxes`
--

CREATE TABLE IF NOT EXISTS `phppos_location_item_kits_taxes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `item_kit_id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percent` decimal(16,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_tax` (`location_id`,`item_kit_id`,`name`,`percent`),
  KEY `phppos_location_item_kits_taxes_ibfk_2` (`item_kit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_location_item_kits_tier_prices`
--

CREATE TABLE IF NOT EXISTS `phppos_location_item_kits_tier_prices` (
  `tier_id` int(10) NOT NULL,
  `item_kit_id` int(10) NOT NULL,
  `location_id` int(10) NOT NULL,
  `unit_price` decimal(23,10) DEFAULT '0.0000000000',
  `percent_off` int(11) DEFAULT NULL,
  PRIMARY KEY (`tier_id`,`item_kit_id`,`location_id`),
  KEY `phppos_location_item_kits_tier_prices_ibfk_2` (`location_id`),
  KEY `phppos_location_item_kits_tier_prices_ibfk_3` (`item_kit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_modules`
--

CREATE TABLE IF NOT EXISTS `phppos_modules` (
  `name_lang_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc_lang_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  UNIQUE KEY `name_lang_key` (`name_lang_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phppos_modules`
--

INSERT INTO `phppos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `icon`, `module_id`) VALUES
('module_config', 'module_config_desc', 100, 'cogs', 'config'),
('module_customers', 'module_customers_desc', 10, 'group', 'customers'),
('module_employees', 'module_employees_desc', 80, 'user', 'employees'),
('module_giftcards', 'module_giftcards_desc', 90, 'credit-card', 'giftcards'),
('module_item_kits', 'module_item_kits_desc', 30, 'inbox', 'item_kits'),
('module_items', 'module_items_desc', 20, 'table', 'items'),
('module_locations', 'module_locations_desc', 110, 'home', 'locations'),
('module_receivings', 'module_receivings_desc', 60, 'cloud-download', 'receivings'),
('module_reports', 'module_reports_desc', 50, 'bar-chart-o', 'reports'),
('module_sales', 'module_sales_desc', 70, 'shopping-cart', 'sales'),
('module_suppliers', 'module_suppliers_desc', 40, 'download', 'suppliers');

-- --------------------------------------------------------

--
-- Table structure for table `phppos_modules_actions`
--

CREATE TABLE IF NOT EXISTS `phppos_modules_actions` (
  `action_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `action_name_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`action_id`,`module_id`),
  KEY `phppos_modules_actions_ibfk_1` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phppos_modules_actions`
--

INSERT INTO `phppos_modules_actions` (`action_id`, `module_id`, `action_name_key`, `sort`) VALUES
('add_update', 'customers', 'module_action_add_update', 1),
('add_update', 'employees', 'module_action_add_update', 130),
('add_update', 'giftcards', 'module_action_add_update', 200),
('add_update', 'item_kits', 'module_action_add_update', 70),
('add_update', 'items', 'module_action_add_update', 40),
('add_update', 'locations', 'module_action_add_update', 240),
('add_update', 'suppliers', 'module_action_add_update', 100),
('assign_all_locations', 'employees', 'module_action_assign_all_locations', 151),
('delete', 'customers', 'module_action_delete', 20),
('delete', 'employees', 'module_action_delete', 140),
('delete', 'giftcards', 'module_action_delete', 210),
('delete', 'item_kits', 'module_action_delete', 80),
('delete', 'items', 'module_action_delete', 50),
('delete', 'locations', 'module_action_delete', 250),
('delete', 'suppliers', 'module_action_delete', 110),
('delete_sale', 'sales', 'module_action_delete_sale', 230),
('delete_suspended_sale', 'sales', 'module_action_delete_suspended_sale', 181),
('edit_sale', 'sales', 'module_edit_sale', 190),
('edit_sale_price', 'sales', 'module_edit_sale_price', 170),
('give_discount', 'sales', 'module_give_discount', 180),
('search', 'customers', 'module_action_search_customers', 30),
('search', 'employees', 'module_action_search_employees', 150),
('search', 'giftcards', 'module_action_search_giftcards', 220),
('search', 'item_kits', 'module_action_search_item_kits', 90),
('search', 'items', 'module_action_search_items', 60),
('search', 'locations', 'module_action_search_locations', 260),
('search', 'suppliers', 'module_action_search_suppliers', 120),
('see_cost_price', 'items', 'module_see_cost_price', 61),
('view_categories', 'reports', 'reports_categories', 100),
('view_customers', 'reports', 'reports_customers', 120),
('view_deleted_sales', 'reports', 'reports_deleted_sales', 130),
('view_discounts', 'reports', 'reports_discounts', 140),
('view_employees', 'reports', 'reports_employees', 150),
('view_giftcards', 'reports', 'reports_giftcards', 160),
('view_inventory_reports', 'reports', 'reports_inventory_reports', 170),
('view_item_kits', 'reports', 'module_item_kits', 180),
('view_items', 'reports', 'reports_items', 190),
('view_payments', 'reports', 'reports_payments', 200),
('view_profit_and_loss', 'reports', 'reports_profit_and_loss', 210),
('view_receivings', 'reports', 'reports_receivings', 220),
('view_register_log', 'reports', 'reports_register_log_title', 230),
('view_sales', 'reports', 'reports_sales', 240),
('view_sales_generator', 'reports', 'reports_sales_generator', 110),
('view_store_account', 'reports', 'reports_store_account', 250),
('view_suppliers', 'reports', 'reports_suppliers', 260),
('view_taxes', 'reports', 'reports_taxes', 270);

-- --------------------------------------------------------

--
-- Table structure for table `phppos_people`
--

CREATE TABLE IF NOT EXISTS `phppos_people` (
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int(10) DEFAULT NULL,
  `person_id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`person_id`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `email` (`email`),
  KEY `phppos_people_ibfk_1` (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `phppos_people`
--

INSERT INTO `phppos_people` (`first_name`, `last_name`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `image_id`, `person_id`) VALUES
('Chhing Chhing', 'Hem', '555-555-5555', 'chhing99@gmail.com', 'Phnom Penh', '', '', '', '', '', '', NULL, 1),
('sothea', 'sea', '', 'sothea.sea@gmail.com', '', '', '', '', '', '', '', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `phppos_permissions`
--

CREATE TABLE IF NOT EXISTS `phppos_permissions` (
  `module_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `person_id` int(10) NOT NULL,
  PRIMARY KEY (`module_id`,`person_id`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phppos_permissions`
--

INSERT INTO `phppos_permissions` (`module_id`, `person_id`) VALUES
('config', 1),
('customers', 1),
('employees', 1),
('giftcards', 1),
('item_kits', 1),
('items', 1),
('locations', 1),
('receivings', 1),
('reports', 1),
('sales', 1),
('suppliers', 1),
('customers', 2),
('items', 2),
('sales', 2),
('suppliers', 2);

-- --------------------------------------------------------

--
-- Table structure for table `phppos_permissions_actions`
--

CREATE TABLE IF NOT EXISTS `phppos_permissions_actions` (
  `module_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `person_id` int(11) NOT NULL,
  `action_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`module_id`,`person_id`,`action_id`),
  KEY `phppos_permissions_actions_ibfk_2` (`person_id`),
  KEY `phppos_permissions_actions_ibfk_3` (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phppos_permissions_actions`
--

INSERT INTO `phppos_permissions_actions` (`module_id`, `person_id`, `action_id`) VALUES
('customers', 1, 'add_update'),
('customers', 1, 'delete'),
('customers', 1, 'search'),
('employees', 1, 'add_update'),
('employees', 1, 'assign_all_locations'),
('employees', 1, 'delete'),
('employees', 1, 'search'),
('giftcards', 1, 'add_update'),
('giftcards', 1, 'delete'),
('giftcards', 1, 'search'),
('item_kits', 1, 'add_update'),
('item_kits', 1, 'delete'),
('item_kits', 1, 'search'),
('items', 1, 'add_update'),
('items', 1, 'delete'),
('items', 1, 'search'),
('items', 1, 'see_cost_price'),
('locations', 1, 'add_update'),
('locations', 1, 'delete'),
('locations', 1, 'search'),
('reports', 1, 'view_categories'),
('reports', 1, 'view_customers'),
('reports', 1, 'view_deleted_sales'),
('reports', 1, 'view_discounts'),
('reports', 1, 'view_employees'),
('reports', 1, 'view_giftcards'),
('reports', 1, 'view_inventory_reports'),
('reports', 1, 'view_item_kits'),
('reports', 1, 'view_items'),
('reports', 1, 'view_payments'),
('reports', 1, 'view_profit_and_loss'),
('reports', 1, 'view_receivings'),
('reports', 1, 'view_register_log'),
('reports', 1, 'view_sales'),
('reports', 1, 'view_sales_generator'),
('reports', 1, 'view_store_account'),
('reports', 1, 'view_suppliers'),
('reports', 1, 'view_taxes'),
('sales', 1, 'delete_sale'),
('sales', 1, 'delete_suspended_sale'),
('sales', 1, 'edit_sale'),
('sales', 1, 'edit_sale_price'),
('sales', 1, 'give_discount'),
('suppliers', 1, 'add_update'),
('suppliers', 1, 'delete'),
('suppliers', 1, 'search'),
('customers', 2, 'add_update'),
('customers', 2, 'delete'),
('customers', 2, 'search'),
('items', 2, 'add_update'),
('items', 2, 'delete'),
('items', 2, 'search'),
('items', 2, 'see_cost_price'),
('sales', 2, 'delete_sale'),
('sales', 2, 'delete_suspended_sale'),
('sales', 2, 'edit_sale'),
('sales', 2, 'edit_sale_price'),
('sales', 2, 'give_discount'),
('suppliers', 2, 'add_update'),
('suppliers', 2, 'delete'),
('suppliers', 2, 'search');

-- --------------------------------------------------------

--
-- Table structure for table `phppos_price_tiers`
--

CREATE TABLE IF NOT EXISTS `phppos_price_tiers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_receivings`
--

CREATE TABLE IF NOT EXISTS `phppos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `receiving_id` int(10) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(10) DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`receiving_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `employee_id` (`employee_id`),
  KEY `deleted` (`deleted`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_receivings_items`
--

CREATE TABLE IF NOT EXISTS `phppos_receivings_items` (
  `receiving_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serialnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line` int(3) NOT NULL,
  `quantity_purchased` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `item_cost_price` decimal(23,10) NOT NULL,
  `item_unit_price` decimal(23,10) NOT NULL,
  `discount_percent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`receiving_id`,`item_id`,`line`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_register_log`
--

CREATE TABLE IF NOT EXISTS `phppos_register_log` (
  `register_log_id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL,
  `shift_start` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shift_end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `open_amount` decimal(23,10) NOT NULL,
  `close_amount` decimal(23,10) NOT NULL,
  `cash_sales_amount` decimal(23,10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`register_log_id`),
  KEY `phppos_register_log_ibfk_1` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_sales`
--

CREATE TABLE IF NOT EXISTS `phppos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `show_comment_on_receipt` int(1) NOT NULL DEFAULT '0',
  `sale_id` int(10) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_ref_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `deleted_by` int(10) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `suspended` int(1) NOT NULL DEFAULT '0',
  `store_account_payment` int(1) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  KEY `deleted` (`deleted`),
  KEY `location_id` (`location_id`),
  KEY `phppos_sales_ibfk_4` (`deleted_by`),
  KEY `sales_search` (`location_id`,`store_account_payment`,`sale_time`,`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_sales_items`
--

CREATE TABLE IF NOT EXISTS `phppos_sales_items` (
  `sale_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serialnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `quantity_purchased` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `item_cost_price` decimal(23,10) NOT NULL,
  `item_unit_price` decimal(23,10) NOT NULL,
  `discount_percent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sale_id`,`item_id`,`line`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_sales_items_taxes`
--

CREATE TABLE IF NOT EXISTS `phppos_sales_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percent` decimal(15,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_sales_item_kits`
--

CREATE TABLE IF NOT EXISTS `phppos_sales_item_kits` (
  `sale_id` int(10) NOT NULL DEFAULT '0',
  `item_kit_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `quantity_purchased` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `item_kit_cost_price` decimal(23,10) NOT NULL,
  `item_kit_unit_price` decimal(23,10) NOT NULL,
  `discount_percent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sale_id`,`item_kit_id`,`line`),
  KEY `item_kit_id` (`item_kit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_sales_item_kits_taxes`
--

CREATE TABLE IF NOT EXISTS `phppos_sales_item_kits_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_kit_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percent` decimal(15,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sale_id`,`item_kit_id`,`line`,`name`,`percent`),
  KEY `item_id` (`item_kit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_sales_payments`
--

CREATE TABLE IF NOT EXISTS `phppos_sales_payments` (
  `payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_amount` decimal(23,10) NOT NULL,
  `truncated_card` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `card_issuer` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `payment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`),
  KEY `sale_id` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_sessions`
--

CREATE TABLE IF NOT EXISTS `phppos_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phppos_sessions`
--

INSERT INTO `phppos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('7837e59c11bfb7dc8f822d06da1837d9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0', 1402129290, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('8c6af76a716f5f68b1937ddb5c6b85d5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0', 1402120874, ''),
('c66f7807c9db55704baa063161c7e416', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0', 1402120874, '');

-- --------------------------------------------------------

--
-- Table structure for table `phppos_store_accounts`
--

CREATE TABLE IF NOT EXISTS `phppos_store_accounts` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `transaction_amount` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `balance` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sno`),
  KEY `deleted` (`deleted`),
  KEY `phppos_store_accounts_ibfk_1` (`sale_id`),
  KEY `phppos_store_accounts_ibfk_2` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phppos_suppliers`
--

CREATE TABLE IF NOT EXISTS `phppos_suppliers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `account_number` (`account_number`),
  KEY `person_id` (`person_id`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `phppos_customers`
--
ALTER TABLE `phppos_customers`
  ADD CONSTRAINT `phppos_customers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `phppos_people` (`person_id`),
  ADD CONSTRAINT `phppos_customers_ibfk_2` FOREIGN KEY (`tier_id`) REFERENCES `phppos_price_tiers` (`id`);

--
-- Constraints for table `phppos_employees`
--
ALTER TABLE `phppos_employees`
  ADD CONSTRAINT `phppos_employees_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `phppos_people` (`person_id`);

--
-- Constraints for table `phppos_employees_locations`
--
ALTER TABLE `phppos_employees_locations`
  ADD CONSTRAINT `phppos_employees_locations_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `phppos_employees` (`person_id`),
  ADD CONSTRAINT `phppos_employees_locations_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `phppos_locations` (`location_id`);

--
-- Constraints for table `phppos_giftcards`
--
ALTER TABLE `phppos_giftcards`
  ADD CONSTRAINT `phppos_giftcards_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `phppos_customers` (`person_id`);

--
-- Constraints for table `phppos_inventory`
--
ALTER TABLE `phppos_inventory`
  ADD CONSTRAINT `phppos_inventory_ibfk_1` FOREIGN KEY (`trans_items`) REFERENCES `phppos_items` (`item_id`),
  ADD CONSTRAINT `phppos_inventory_ibfk_2` FOREIGN KEY (`trans_user`) REFERENCES `phppos_employees` (`person_id`),
  ADD CONSTRAINT `phppos_inventory_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `phppos_locations` (`location_id`);

--
-- Constraints for table `phppos_items`
--
ALTER TABLE `phppos_items`
  ADD CONSTRAINT `phppos_items_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `phppos_suppliers` (`person_id`),
  ADD CONSTRAINT `phppos_items_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `phppos_app_files` (`file_id`);

--
-- Constraints for table `phppos_items_taxes`
--
ALTER TABLE `phppos_items_taxes`
  ADD CONSTRAINT `phppos_items_taxes_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `phppos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `phppos_items_tier_prices`
--
ALTER TABLE `phppos_items_tier_prices`
  ADD CONSTRAINT `phppos_items_tier_prices_ibfk_1` FOREIGN KEY (`tier_id`) REFERENCES `phppos_price_tiers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `phppos_items_tier_prices_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `phppos_items` (`item_id`);

--
-- Constraints for table `phppos_item_kits_taxes`
--
ALTER TABLE `phppos_item_kits_taxes`
  ADD CONSTRAINT `phppos_item_kits_taxes_ibfk_1` FOREIGN KEY (`item_kit_id`) REFERENCES `phppos_item_kits` (`item_kit_id`) ON DELETE CASCADE;

--
-- Constraints for table `phppos_item_kits_tier_prices`
--
ALTER TABLE `phppos_item_kits_tier_prices`
  ADD CONSTRAINT `phppos_item_kits_tier_prices_ibfk_1` FOREIGN KEY (`tier_id`) REFERENCES `phppos_price_tiers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `phppos_item_kits_tier_prices_ibfk_2` FOREIGN KEY (`item_kit_id`) REFERENCES `phppos_item_kits` (`item_kit_id`);

--
-- Constraints for table `phppos_item_kit_items`
--
ALTER TABLE `phppos_item_kit_items`
  ADD CONSTRAINT `phppos_item_kit_items_ibfk_1` FOREIGN KEY (`item_kit_id`) REFERENCES `phppos_item_kits` (`item_kit_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `phppos_item_kit_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `phppos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `phppos_location_items`
--
ALTER TABLE `phppos_location_items`
  ADD CONSTRAINT `phppos_location_items_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `phppos_locations` (`location_id`),
  ADD CONSTRAINT `phppos_location_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `phppos_items` (`item_id`);

--
-- Constraints for table `phppos_location_items_taxes`
--
ALTER TABLE `phppos_location_items_taxes`
  ADD CONSTRAINT `phppos_location_items_taxes_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `phppos_locations` (`location_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `phppos_location_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `phppos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `phppos_location_items_tier_prices`
--
ALTER TABLE `phppos_location_items_tier_prices`
  ADD CONSTRAINT `phppos_location_items_tier_prices_ibfk_1` FOREIGN KEY (`tier_id`) REFERENCES `phppos_price_tiers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `phppos_location_items_tier_prices_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `phppos_locations` (`location_id`),
  ADD CONSTRAINT `phppos_location_items_tier_prices_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `phppos_items` (`item_id`);

--
-- Constraints for table `phppos_location_item_kits`
--
ALTER TABLE `phppos_location_item_kits`
  ADD CONSTRAINT `phppos_location_item_kits_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `phppos_locations` (`location_id`),
  ADD CONSTRAINT `phppos_location_item_kits_ibfk_2` FOREIGN KEY (`item_kit_id`) REFERENCES `phppos_item_kits` (`item_kit_id`);

--
-- Constraints for table `phppos_location_item_kits_taxes`
--
ALTER TABLE `phppos_location_item_kits_taxes`
  ADD CONSTRAINT `phppos_location_item_kits_taxes_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `phppos_locations` (`location_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `phppos_location_item_kits_taxes_ibfk_2` FOREIGN KEY (`item_kit_id`) REFERENCES `phppos_item_kits` (`item_kit_id`) ON DELETE CASCADE;

--
-- Constraints for table `phppos_location_item_kits_tier_prices`
--
ALTER TABLE `phppos_location_item_kits_tier_prices`
  ADD CONSTRAINT `phppos_location_item_kits_tier_prices_ibfk_1` FOREIGN KEY (`tier_id`) REFERENCES `phppos_price_tiers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `phppos_location_item_kits_tier_prices_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `phppos_locations` (`location_id`),
  ADD CONSTRAINT `phppos_location_item_kits_tier_prices_ibfk_3` FOREIGN KEY (`item_kit_id`) REFERENCES `phppos_item_kits` (`item_kit_id`);

--
-- Constraints for table `phppos_modules_actions`
--
ALTER TABLE `phppos_modules_actions`
  ADD CONSTRAINT `phppos_modules_actions_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `phppos_modules` (`module_id`);

--
-- Constraints for table `phppos_people`
--
ALTER TABLE `phppos_people`
  ADD CONSTRAINT `phppos_people_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `phppos_app_files` (`file_id`);

--
-- Constraints for table `phppos_permissions`
--
ALTER TABLE `phppos_permissions`
  ADD CONSTRAINT `phppos_permissions_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `phppos_employees` (`person_id`),
  ADD CONSTRAINT `phppos_permissions_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `phppos_modules` (`module_id`);

--
-- Constraints for table `phppos_permissions_actions`
--
ALTER TABLE `phppos_permissions_actions`
  ADD CONSTRAINT `phppos_permissions_actions_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `phppos_modules` (`module_id`),
  ADD CONSTRAINT `phppos_permissions_actions_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `phppos_employees` (`person_id`),
  ADD CONSTRAINT `phppos_permissions_actions_ibfk_3` FOREIGN KEY (`action_id`) REFERENCES `phppos_modules_actions` (`action_id`);

--
-- Constraints for table `phppos_receivings`
--
ALTER TABLE `phppos_receivings`
  ADD CONSTRAINT `phppos_receivings_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `phppos_locations` (`location_id`),
  ADD CONSTRAINT `phppos_receivings_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `phppos_employees` (`person_id`),
  ADD CONSTRAINT `phppos_receivings_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `phppos_suppliers` (`person_id`);

--
-- Constraints for table `phppos_receivings_items`
--
ALTER TABLE `phppos_receivings_items`
  ADD CONSTRAINT `phppos_receivings_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `phppos_items` (`item_id`),
  ADD CONSTRAINT `phppos_receivings_items_ibfk_2` FOREIGN KEY (`receiving_id`) REFERENCES `phppos_receivings` (`receiving_id`);

--
-- Constraints for table `phppos_register_log`
--
ALTER TABLE `phppos_register_log`
  ADD CONSTRAINT `phppos_register_log_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `phppos_employees` (`person_id`);

--
-- Constraints for table `phppos_sales`
--
ALTER TABLE `phppos_sales`
  ADD CONSTRAINT `phppos_sales_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `phppos_locations` (`location_id`),
  ADD CONSTRAINT `phppos_sales_ibfk_4` FOREIGN KEY (`deleted_by`) REFERENCES `phppos_employees` (`person_id`),
  ADD CONSTRAINT `phppos_sales_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `phppos_employees` (`person_id`),
  ADD CONSTRAINT `phppos_sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `phppos_customers` (`person_id`);

--
-- Constraints for table `phppos_sales_items`
--
ALTER TABLE `phppos_sales_items`
  ADD CONSTRAINT `phppos_sales_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `phppos_items` (`item_id`),
  ADD CONSTRAINT `phppos_sales_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `phppos_sales` (`sale_id`);

--
-- Constraints for table `phppos_sales_items_taxes`
--
ALTER TABLE `phppos_sales_items_taxes`
  ADD CONSTRAINT `phppos_sales_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `phppos_sales_items` (`sale_id`),
  ADD CONSTRAINT `phppos_sales_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `phppos_items` (`item_id`);

--
-- Constraints for table `phppos_sales_item_kits`
--
ALTER TABLE `phppos_sales_item_kits`
  ADD CONSTRAINT `phppos_sales_item_kits_ibfk_1` FOREIGN KEY (`item_kit_id`) REFERENCES `phppos_item_kits` (`item_kit_id`),
  ADD CONSTRAINT `phppos_sales_item_kits_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `phppos_sales` (`sale_id`);

--
-- Constraints for table `phppos_sales_item_kits_taxes`
--
ALTER TABLE `phppos_sales_item_kits_taxes`
  ADD CONSTRAINT `phppos_sales_item_kits_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `phppos_sales_item_kits` (`sale_id`),
  ADD CONSTRAINT `phppos_sales_item_kits_taxes_ibfk_2` FOREIGN KEY (`item_kit_id`) REFERENCES `phppos_item_kits` (`item_kit_id`);

--
-- Constraints for table `phppos_sales_payments`
--
ALTER TABLE `phppos_sales_payments`
  ADD CONSTRAINT `phppos_sales_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `phppos_sales` (`sale_id`);

--
-- Constraints for table `phppos_store_accounts`
--
ALTER TABLE `phppos_store_accounts`
  ADD CONSTRAINT `phppos_store_accounts_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `phppos_sales` (`sale_id`),
  ADD CONSTRAINT `phppos_store_accounts_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `phppos_customers` (`person_id`);

--
-- Constraints for table `phppos_suppliers`
--
ALTER TABLE `phppos_suppliers`
  ADD CONSTRAINT `phppos_suppliers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `phppos_people` (`person_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
