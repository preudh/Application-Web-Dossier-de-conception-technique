-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 27 oct. 2020 à 20:04
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ocpizza`
--
CREATE DATABASE IF NOT EXISTS `ocpizza1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `ocpizza1`;

-- --------------------------------------------------------

--
-- Structure de la table `tab_access_right`
--

DROP TABLE IF EXISTS `tab_access_right`;
CREATE TABLE IF NOT EXISTS `tab_access_right` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_grade` varchar(50) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_adress`
--

DROP TABLE IF EXISTS `tab_adress`;
CREATE TABLE IF NOT EXISTS `tab_adress` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_postal_code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `a_city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `a_street` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `a_street_number` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `a_intercom_code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `a_floor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_asso_bill_dashbord`
--

DROP TABLE IF EXISTS `tab_asso_bill_dashbord`;
CREATE TABLE IF NOT EXISTS `tab_asso_bill_dashbord` (
  `tab_asso_bill_dashbord_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_id` int(11) NOT NULL,
  `dash_id` int(11) NOT NULL,
  PRIMARY KEY (`tab_asso_bill_dashbord_id`),
  KEY `b_id` (`b_id`),
  KEY `dash_id` (`dash_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_asso_ingredient_inventory`
--

DROP TABLE IF EXISTS `tab_asso_ingredient_inventory`;
CREATE TABLE IF NOT EXISTS `tab_asso_ingredient_inventory` (
  `asso_ingredient_inventory_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `i_id` int(11) NOT NULL,
  `ing_id` int(11) NOT NULL,
  PRIMARY KEY (`asso_ingredient_inventory_id`),
  KEY `i_id` (`i_id`),
  KEY `ing_id` (`ing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_asso_ingredient_pizza`
--

DROP TABLE IF EXISTS `tab_asso_ingredient_pizza`;
CREATE TABLE IF NOT EXISTS `tab_asso_ingredient_pizza` (
  `asso_ing_pizza_id` int(11) NOT NULL,
  `ing_id` int(11) NOT NULL,
  `piz_id` int(11) NOT NULL,
  `quantity` decimal(5,2) UNSIGNED NOT NULL,
  PRIMARY KEY (`asso_ing_pizza_id`),
  KEY `ing_id` (`ing_id`,`piz_id`),
  KEY `piz_id` (`piz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_asso_restaurant_dashboard`
--

DROP TABLE IF EXISTS `tab_asso_restaurant_dashboard`;
CREATE TABLE IF NOT EXISTS `tab_asso_restaurant_dashboard` (
  `asso_restaurant_dashboard_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) NOT NULL,
  `dash_id` int(11) NOT NULL,
  PRIMARY KEY (`asso_restaurant_dashboard_id`),
  KEY `r_id` (`r_id`,`dash_id`),
  KEY `dash_id` (`dash_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_asso_restaurant_product`
--

DROP TABLE IF EXISTS `tab_asso_restaurant_product`;
CREATE TABLE IF NOT EXISTS `tab_asso_restaurant_product` (
  `asso_restaurant_menu_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `p_id` int(11) NOT NULL,
  `price_sale_excluding_vat` decimal(5,2) NOT NULL,
  `r_id` int(11) NOT NULL,
  PRIMARY KEY (`asso_restaurant_menu_id`),
  KEY `m_id` (`p_id`,`r_id`),
  KEY `p_id` (`p_id`,`r_id`),
  KEY `r_id` (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_asso_staff_access_right_id`
--

DROP TABLE IF EXISTS `tab_asso_staff_access_right_id`;
CREATE TABLE IF NOT EXISTS `tab_asso_staff_access_right_id` (
  `tab_asso_staff_acces_right_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  PRIMARY KEY (`tab_asso_staff_acces_right_id`),
  KEY `s_id` (`s_id`,`a_id`),
  KEY `a_id` (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_asso_staff_dashboard`
--

DROP TABLE IF EXISTS `tab_asso_staff_dashboard`;
CREATE TABLE IF NOT EXISTS `tab_asso_staff_dashboard` (
  `asso_staff_dashboard_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) NOT NULL,
  `dash_id` int(11) NOT NULL,
  PRIMARY KEY (`asso_staff_dashboard_id`),
  KEY `s_id` (`s_id`,`dash_id`),
  KEY `dash_id` (`dash_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_asso_supplier_ingredient`
--

DROP TABLE IF EXISTS `tab_asso_supplier_ingredient`;
CREATE TABLE IF NOT EXISTS `tab_asso_supplier_ingredient` (
  `asso_ingredient_supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `sup_id` int(11) NOT NULL,
  `ing_id` int(11) NOT NULL,
  PRIMARY KEY (`asso_ingredient_supplier_id`),
  KEY `sup_id` (`sup_id`,`ing_id`),
  KEY `ing_id` (`ing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_asso_supplier_trading_product`
--

DROP TABLE IF EXISTS `tab_asso_supplier_trading_product`;
CREATE TABLE IF NOT EXISTS `tab_asso_supplier_trading_product` (
  `asso_supplier_trading_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `tp_id` int(11) NOT NULL,
  `sup_id` int(11) NOT NULL,
  PRIMARY KEY (`asso_supplier_trading_product_id`),
  KEY `tp_id` (`tp_id`,`sup_id`),
  KEY `sup_id` (`sup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_asso_trading_product_inventory`
--

DROP TABLE IF EXISTS `tab_asso_trading_product_inventory`;
CREATE TABLE IF NOT EXISTS `tab_asso_trading_product_inventory` (
  `asso_trading_product_inventory` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `tp_id` int(11) NOT NULL,
  `itp_id` int(11) NOT NULL,
  PRIMARY KEY (`asso_trading_product_inventory`),
  KEY `tp_id` (`tp_id`,`itp_id`),
  KEY `itp_id` (`itp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_bill`
--

DROP TABLE IF EXISTS `tab_bill`;
CREATE TABLE IF NOT EXISTS `tab_bill` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_number` int(11) NOT NULL,
  `r_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `b_date_time` datetime NOT NULL,
  `b_num_siren` int(9) NOT NULL,
  `b_price_exc_vat` decimal(10,2) NOT NULL,
  `b_vat` decimal(10,2) NOT NULL,
  `b_total_price` decimal(10,2) NOT NULL,
  `t_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`b_id`),
  KEY `t_id` (`t_id`),
  KEY `c_id` (`c_id`),
  KEY `card_id` (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_customer`
--

DROP TABLE IF EXISTS `tab_customer`;
CREATE TABLE IF NOT EXISTS `tab_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_my_order` varchar(10) NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`cust_id`),
  KEY `user_id` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_dashboard`
--

DROP TABLE IF EXISTS `tab_dashboard`;
CREATE TABLE IF NOT EXISTS `tab_dashboard` (
  `dash_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_starting_date` date NOT NULL,
  `d_ending_date` date NOT NULL,
  `dash_turnover_global` decimal(5,2) DEFAULT NULL,
  `r_id` int(11) NOT NULL,
  PRIMARY KEY (`dash_id`),
  KEY `r_id` (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_delivery_person`
--

DROP TABLE IF EXISTS `tab_delivery_person`;
CREATE TABLE IF NOT EXISTS `tab_delivery_person` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `o_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `o_delivery_id` int(11) NOT NULL,
  PRIMARY KEY (`d_id`),
  KEY `s_id` (`s_id`),
  KEY `o_id` (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_ingredient`
--

DROP TABLE IF EXISTS `tab_ingredient`;
CREATE TABLE IF NOT EXISTS `tab_ingredient` (
  `ing_id` int(11) NOT NULL AUTO_INCREMENT,
  `ing_name` varchar(50) NOT NULL,
  `ing_description` varchar(50) NOT NULL,
  `ing_quantity_calculated` decimal(5,2) NOT NULL,
  `ing_cost_price_exc_vat` decimal(5,2) NOT NULL,
  `ing_vat_rate100` decimal(3,1) NOT NULL,
  `ing_quantity_threshold` decimal(5,2) NOT NULL,
  `ing_unit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_inventory_ingredient`
--

DROP TABLE IF EXISTS `tab_inventory_ingredient`;
CREATE TABLE IF NOT EXISTS `tab_inventory_ingredient` (
  `i_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) NOT NULL,
  `i_quantity` int(5) NOT NULL,
  `i_reception_date` date NOT NULL,
  `i_expiration_date` date NOT NULL,
  PRIMARY KEY (`i_id`),
  KEY `r_id` (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_inventory_trading_product`
--

DROP TABLE IF EXISTS `tab_inventory_trading_product`;
CREATE TABLE IF NOT EXISTS `tab_inventory_trading_product` (
  `itp_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `itp_quantity` int(5) NOT NULL,
  `itp_reception_date` date NOT NULL,
  `itp_expiration _date` date NOT NULL,
  PRIMARY KEY (`itp_id`),
  KEY `r_id` (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_order`
--

DROP TABLE IF EXISTS `tab_order`;
CREATE TABLE IF NOT EXISTS `tab_order` (
  `o_id` int(11) NOT NULL,
  `o_date_time` datetime NOT NULL,
  `o_statut` varchar(10) NOT NULL,
  `o_statut_time` timestamp NOT NULL,
  `o_payment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `o_delivery_id` int(11) NOT NULL,
  `o_delivery_time` datetime NOT NULL,
  `o_total_amount` decimal(10,2) NOT NULL,
  `o_note` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `u_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  PRIMARY KEY (`o_id`),
  KEY `u_id` (`u_id`),
  KEY `a_id` (`a_id`),
  KEY `r_id` (`r_id`),
  KEY `u_id_2` (`u_id`),
  KEY `u_id_3` (`u_id`),
  KEY `u_id_4` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_order_line`
--

DROP TABLE IF EXISTS `tab_order_line`;
CREATE TABLE IF NOT EXISTS `tab_order_line` (
  `order_line_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_line_quantity` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  PRIMARY KEY (`order_line_id`),
  KEY `pc_id` (`p_id`,`o_id`),
  KEY `o_id` (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_payment`
--

DROP TABLE IF EXISTS `tab_payment`;
CREATE TABLE IF NOT EXISTS `tab_payment` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `o_id` int(11) NOT NULL,
  PRIMARY KEY (`p_id`),
  KEY `p_type` (`p_type`),
  KEY `o_id` (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_payment_card`
--

DROP TABLE IF EXISTS `tab_payment_card`;
CREATE TABLE IF NOT EXISTS `tab_payment_card` (
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `card_name` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `card_type` varchar(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`card_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_payment_cash`
--

DROP TABLE IF EXISTS `tab_payment_cash`;
CREATE TABLE IF NOT EXISTS `tab_payment_cash` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_received` decimal(5,2) NOT NULL,
  `c_refund` decimal(5,2) NOT NULL,
  `c_balance` decimal(5,2) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `p_id` (`p_id`),
  KEY `p_id_2` (`p_id`),
  KEY `p_id_3` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_pizza`
--

DROP TABLE IF EXISTS `tab_pizza`;
CREATE TABLE IF NOT EXISTS `tab_pizza` (
  `piz_id` int(11) NOT NULL AUTO_INCREMENT,
  `piz_name` varchar(50) NOT NULL,
  `piz_unit_sale_price_exc_vat` decimal(5,2) NOT NULL,
  `piz_prod_capacity` int(5) NOT NULL,
  `piz_size` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `piz_pan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`piz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_product`
--

DROP TABLE IF EXISTS `tab_product`;
CREATE TABLE IF NOT EXISTS `tab_product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `p_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `p_vat_rate100` decimal(3,1) NOT NULL,
  `piz_id` int(11) DEFAULT NULL,
  `tp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `piz_id` (`piz_id`),
  KEY `tp_id` (`tp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_restaurant`
--

DROP TABLE IF EXISTS `tab_restaurant`;
CREATE TABLE IF NOT EXISTS `tab_restaurant` (
  `r_id` int(11) NOT NULL,
  `r_name` varchar(50) NOT NULL,
  `r_num_siren` int(9) NOT NULL,
  `r_phone` varchar(10) NOT NULL,
  `t_email` varchar(50) NOT NULL,
  `a_id` int(11) NOT NULL,
  PRIMARY KEY (`r_id`),
  KEY `a_id` (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_staff`
--

DROP TABLE IF EXISTS `tab_staff`;
CREATE TABLE IF NOT EXISTS `tab_staff` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`s_id`),
  KEY `u_id` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_supplier`
--

DROP TABLE IF EXISTS `tab_supplier`;
CREATE TABLE IF NOT EXISTS `tab_supplier` (
  `sup_id` int(11) NOT NULL AUTO_INCREMENT,
  `sup_name` varchar(50) NOT NULL,
  `sup_phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sup_email` varchar(50) NOT NULL,
  `a_id` int(11) NOT NULL,
  PRIMARY KEY (`sup_id`),
  KEY `a_id` (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_supplier_line`
--

DROP TABLE IF EXISTS `tab_supplier_line`;
CREATE TABLE IF NOT EXISTS `tab_supplier_line` (
  `sl_id` int(11) NOT NULL AUTO_INCREMENT,
  `sl_quantity_trading_product` int(5) DEFAULT NULL,
  `sl_quantity_ingredient` int(5) DEFAULT NULL,
  `supplier_order_id` int(11) NOT NULL,
  `ing_id` int(11) DEFAULT NULL,
  `tp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sl_id`),
  KEY `supplier_order_id` (`supplier_order_id`,`ing_id`),
  KEY `ing_id` (`ing_id`),
  KEY `tp_id` (`tp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_supplier_order`
--

DROP TABLE IF EXISTS `tab_supplier_order`;
CREATE TABLE IF NOT EXISTS `tab_supplier_order` (
  `supplier_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `sup_id` int(11) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `shipping_date` date NOT NULL,
  PRIMARY KEY (`supplier_order_id`),
  KEY `sup_id` (`sup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_ticket_restaurant`
--

DROP TABLE IF EXISTS `tab_ticket_restaurant`;
CREATE TABLE IF NOT EXISTS `tab_ticket_restaurant` (
  `t_id` int(11) NOT NULL,
  `t_number` int(11) NOT NULL,
  `t_validation_date` date NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`t_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_trading_product`
--

DROP TABLE IF EXISTS `tab_trading_product`;
CREATE TABLE IF NOT EXISTS `tab_trading_product` (
  `tp_id` int(11) NOT NULL AUTO_INCREMENT,
  `tp_name` varchar(50) NOT NULL,
  `tp_description` varchar(50) NOT NULL,
  `tp_cost_price_exc_vat` decimal(5,2) NOT NULL,
  `tp_vat_rate_100` decimal(2,1) NOT NULL,
  `tp_price_sale_excluding_vat` decimal(5,2) NOT NULL,
  PRIMARY KEY (`tp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_user`
--

DROP TABLE IF EXISTS `tab_user`;
CREATE TABLE IF NOT EXISTS `tab_user` (
  `u_id` int(11) NOT NULL,
  `u_first_name` varchar(50) NOT NULL,
  `u_last_name` varchar(50) NOT NULL,
  `u_login` varchar(30) NOT NULL,
  `u_password` varchar(50) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_phone_number` varchar(10) NOT NULL,
  `a_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  PRIMARY KEY (`u_id`),
  KEY `u_id` (`u_id`),
  KEY `a_id` (`a_id`),
  KEY `r_id` (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `tab_asso_bill_dashbord`
--
ALTER TABLE `tab_asso_bill_dashbord`
  ADD CONSTRAINT `tab_asso_bill_dashbord_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `tab_bill` (`b_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_asso_bill_dashbord_ibfk_2` FOREIGN KEY (`dash_id`) REFERENCES `tab_dashboard` (`dash_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_asso_ingredient_inventory`
--
ALTER TABLE `tab_asso_ingredient_inventory`
  ADD CONSTRAINT `tab_asso_ingredient_inventory_ibfk_4` FOREIGN KEY (`i_id`) REFERENCES `tab_inventory_ingredient` (`i_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_asso_ingredient_inventory_ibfk_5` FOREIGN KEY (`ing_id`) REFERENCES `tab_ingredient` (`ing_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_asso_ingredient_pizza`
--
ALTER TABLE `tab_asso_ingredient_pizza`
  ADD CONSTRAINT `tab_asso_ingredient_pizza_ibfk_1` FOREIGN KEY (`ing_id`) REFERENCES `tab_ingredient` (`ing_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_asso_ingredient_pizza_ibfk_2` FOREIGN KEY (`piz_id`) REFERENCES `tab_pizza` (`piz_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_asso_restaurant_dashboard`
--
ALTER TABLE `tab_asso_restaurant_dashboard`
  ADD CONSTRAINT `tab_asso_restaurant_dashboard_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `tab_restaurant` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_asso_restaurant_dashboard_ibfk_2` FOREIGN KEY (`dash_id`) REFERENCES `tab_dashboard` (`dash_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_asso_restaurant_product`
--
ALTER TABLE `tab_asso_restaurant_product`
  ADD CONSTRAINT `tab_asso_restaurant_product_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `tab_product` (`p_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_asso_restaurant_product_ibfk_2` FOREIGN KEY (`r_id`) REFERENCES `tab_restaurant` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_asso_staff_access_right_id`
--
ALTER TABLE `tab_asso_staff_access_right_id`
  ADD CONSTRAINT `tab_asso_staff_access_right_id_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `tab_staff` (`s_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_asso_staff_access_right_id_ibfk_2` FOREIGN KEY (`a_id`) REFERENCES `tab_access_right` (`a_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_asso_staff_dashboard`
--
ALTER TABLE `tab_asso_staff_dashboard`
  ADD CONSTRAINT `tab_asso_staff_dashboard_ibfk_1` FOREIGN KEY (`dash_id`) REFERENCES `tab_dashboard` (`dash_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_asso_staff_dashboard_ibfk_2` FOREIGN KEY (`s_id`) REFERENCES `tab_staff` (`s_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_asso_supplier_ingredient`
--
ALTER TABLE `tab_asso_supplier_ingredient`
  ADD CONSTRAINT `tab_asso_supplier_ingredient_ibfk_1` FOREIGN KEY (`sup_id`) REFERENCES `tab_supplier` (`sup_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_asso_supplier_ingredient_ibfk_2` FOREIGN KEY (`ing_id`) REFERENCES `tab_ingredient` (`ing_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_asso_supplier_trading_product`
--
ALTER TABLE `tab_asso_supplier_trading_product`
  ADD CONSTRAINT `tab_asso_supplier_trading_product_ibfk_1` FOREIGN KEY (`sup_id`) REFERENCES `tab_supplier` (`sup_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_asso_supplier_trading_product_ibfk_2` FOREIGN KEY (`tp_id`) REFERENCES `tab_trading_product` (`tp_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_asso_trading_product_inventory`
--
ALTER TABLE `tab_asso_trading_product_inventory`
  ADD CONSTRAINT `tab_asso_trading_product_inventory_ibfk_1` FOREIGN KEY (`itp_id`) REFERENCES `tab_inventory_trading_product` (`itp_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_asso_trading_product_inventory_ibfk_2` FOREIGN KEY (`tp_id`) REFERENCES `tab_trading_product` (`tp_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_bill`
--
ALTER TABLE `tab_bill`
  ADD CONSTRAINT `tab_bill_ibfk_1` FOREIGN KEY (`card_id`) REFERENCES `tab_payment_card` (`card_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_bill_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `tab_payment_cash` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_bill_ibfk_3` FOREIGN KEY (`t_id`) REFERENCES `tab_ticket_restaurant` (`t_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_customer`
--
ALTER TABLE `tab_customer`
  ADD CONSTRAINT `tab_customer_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `tab_user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_dashboard`
--
ALTER TABLE `tab_dashboard`
  ADD CONSTRAINT `tab_dashboard_ibfk_2` FOREIGN KEY (`r_id`) REFERENCES `tab_restaurant` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_delivery_person`
--
ALTER TABLE `tab_delivery_person`
  ADD CONSTRAINT `tab_delivery_person_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `tab_staff` (`s_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_delivery_person_ibfk_2` FOREIGN KEY (`o_id`) REFERENCES `tab_order` (`o_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_inventory_ingredient`
--
ALTER TABLE `tab_inventory_ingredient`
  ADD CONSTRAINT `tab_inventory_ingredient_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `tab_restaurant` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_inventory_trading_product`
--
ALTER TABLE `tab_inventory_trading_product`
  ADD CONSTRAINT `tab_inventory_trading_product_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `tab_restaurant` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_order`
--
ALTER TABLE `tab_order`
  ADD CONSTRAINT `tab_order_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `tab_adress` (`a_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `tab_order_ibfk_3` FOREIGN KEY (`r_id`) REFERENCES `tab_restaurant` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_order_ibfk_4` FOREIGN KEY (`u_id`) REFERENCES `tab_user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_order_line`
--
ALTER TABLE `tab_order_line`
  ADD CONSTRAINT `tab_order_line_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `tab_product` (`p_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_order_line_ibfk_2` FOREIGN KEY (`o_id`) REFERENCES `tab_order` (`o_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_payment`
--
ALTER TABLE `tab_payment`
  ADD CONSTRAINT `tab_payment_ibfk_1` FOREIGN KEY (`o_id`) REFERENCES `tab_order` (`o_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_payment_card`
--
ALTER TABLE `tab_payment_card`
  ADD CONSTRAINT `tab_payment_card_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `tab_payment` (`p_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_payment_cash`
--
ALTER TABLE `tab_payment_cash`
  ADD CONSTRAINT `tab_payment_cash_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `tab_payment` (`p_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_product`
--
ALTER TABLE `tab_product`
  ADD CONSTRAINT `tab_product_ibfk_1` FOREIGN KEY (`tp_id`) REFERENCES `tab_trading_product` (`tp_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_product_ibfk_2` FOREIGN KEY (`piz_id`) REFERENCES `tab_pizza` (`piz_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_staff`
--
ALTER TABLE `tab_staff`
  ADD CONSTRAINT `tab_staff_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `tab_user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_supplier`
--
ALTER TABLE `tab_supplier`
  ADD CONSTRAINT `tab_supplier_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `tab_adress` (`a_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_supplier_line`
--
ALTER TABLE `tab_supplier_line`
  ADD CONSTRAINT `tab_supplier_line_ibfk_1` FOREIGN KEY (`supplier_order_id`) REFERENCES `tab_supplier_order` (`supplier_order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_supplier_line_ibfk_2` FOREIGN KEY (`ing_id`) REFERENCES `tab_ingredient` (`ing_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_supplier_line_ibfk_3` FOREIGN KEY (`tp_id`) REFERENCES `tab_trading_product` (`tp_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_supplier_order`
--
ALTER TABLE `tab_supplier_order`
  ADD CONSTRAINT `tab_supplier_order_ibfk_1` FOREIGN KEY (`sup_id`) REFERENCES `tab_supplier` (`sup_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `tab_ticket_restaurant`
--
ALTER TABLE `tab_ticket_restaurant`
  ADD CONSTRAINT `tab_ticket_restaurant_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `tab_payment` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `tab_user`
--
ALTER TABLE `tab_user`
  ADD CONSTRAINT `tab_user_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `tab_adress` (`a_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tab_user_ibfk_2` FOREIGN KEY (`r_id`) REFERENCES `tab_restaurant` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
