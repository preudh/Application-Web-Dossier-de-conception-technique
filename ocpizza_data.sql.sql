-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 27 oct. 2020 à 20:08
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

--
-- Déchargement des données de la table `tab_access_right`
--

INSERT INTO `tab_access_right` (`a_id`, `a_grade`) VALUES
(1, 'order'),
(2, 'status'),
(3, 'inventory'),
(4, 'dashboard'),
(5, 'supplier_order'),
(6, 'product'),
(7, 'supplierpayment'),
(8, 'admin'),
(9, 'delivery'),
(10, 'customerpayment');

--
-- Déchargement des données de la table `tab_adress`
--

INSERT INTO `tab_adress` (`a_id`, `a_postal_code`, `a_city`, `a_street`, `a_street_number`, `a_intercom_code`, `a_floor`) VALUES
(1, '04860', 'Aaronsburg', '32A Great Cumberland Mews', '61662', '9982', '1'),
(2, '88800', 'Abbeville', '4 Hildreth Street', '74557', 'O', '2'),
(3, '58917', 'Abbotsford', '1 Elm Park Avenue', '41625', 'J', '3'),
(4, '27971', 'Abercrombie', '23-39 Needham Road', '67704', '8', '4'),
(5, '83199', 'Aberdeen', '41-28 Eltham High Street', '62523', 'LL', '5'),
(6, '94005', 'Aberdeen Proving Ground', '59 Sipson Road', '12807', 'SE', '1'),
(7, '30050', 'Abernathy', '3 A-C Peartree Way', '68767', 'US9E', '2'),
(8, '80542', 'Abilene', '4-7 Ellingham Road', '16454', '74661A', '3'),
(9, '85677', 'Abingdon', '682 Coppice Way', '72576', '447PN1', '4'),
(10, '30370', 'Abington', '1-7 Falmouth Way', '54314', '91H5G6', '5'),
(11, '84178', 'Abrams', '32-46 Wootton Grove', '37135', '5X', '1'),
(12, '02116', 'Absarokee', '4 Down Street', '83194', '1B8RPU', '2'),
(13, '94662', 'Absecon', '51-19 Ewell Road', '55048', '9', '3'),
(14, '77670', 'Accokeek', '53-16 Hermon Hill', '95702', 'C', '4'),
(15, '37685', 'Accomac', '6 Rutland Road', '15156', '75', '5'),
(16, '55149', 'Accord', '3-9 Central Hill', '18304', '1MMP', '1'),
(17, '11381', 'Ackley', '4-9 Ashness Road', '98232', '1F', '2'),
(18, '96333', 'Acme', '21-59 Chancel Street', '67364', 'DV8VK', '3'),
(19, '77549', 'Acton', '4 Drury Road', '86656', '02C', '4'),
(20, '79440', 'Acushnet', '33-46 Napier Place', '76776', 'X5JSH0', '5'),
(21, '59645', 'Acworth', '23B Gloucester Crescent', '76826', '9H798', '1'),
(22, '70911', 'Ada', '5-7 Putney High Street', '79412', 'R08W9', '2'),
(23, '26967', 'Adair', '5 Sackville Close', '18630', '7', '3'),
(24, '85001', 'Adairsville', '13-48 Wells Street', '07127', '7C2', '4'),
(25, '36926', 'Adams', '76 Elton Avenue', '84792', '01', '5'),
(26, '65799', 'Adams County', '34-17 Brandlehow Road', '90949', 'P7LPN2', '1'),
(27, '37448', 'Adamsburg', '5-9 Church Lane', '74766', '1M', '2'),
(28, '28894', 'Adamstown', '45-57 Helena Road', '80592', 'N74W9K', '3'),
(29, '23150', 'Adamsville', '660 A-B Jewel Road', '13960', '3', '4'),
(30, '47834', 'Addieville', '54-28 Shoot Up Hill', '77722', '53L', '5'),
(31, '93789', 'Addis', '4-7 Browning Avenue', '49190', '68', '1'),
(32, '86160', 'Addison', '4-6 Edward Square', '36232', 'R4', '2'),
(33, '56757', 'Addy', '7 Pawson\'s Road', '60953', 'SV', '3'),
(34, '28351', 'Adel', '42-37 Masons Avenue', '25819', 'X', '4'),
(35, '28365', 'Adelanto', '2-6 Wakefield Street', '81811', 'STI', '5'),
(36, '57294', 'Adelphia', '9 Hedge Hill', '53190', '736', '1'),
(37, '84874', 'Adger', '1 Hide Place', '96733', 'RYQ3', '2'),
(38, '45723', 'Adirondack', '3 Archway Road', '04179', '65XU5A', '3'),
(39, '85797', 'Adna', '43-49 Meridian Way', '48015', '64', '4'),
(40, '22884', 'Adona', '4-9 Brooksby\'s Walk', '31892', 'X4', '5'),
(41, '92964', 'Adrian', '985 Somers Road', '90884', '222', '1'),
(42, '99404', 'Advance', '35D Trowlock Way', '18999', '80', '2'),
(43, '76661', 'Afton', '1-6 Kensington High Street', '58747', 'MN6', '3'),
(44, '70014', 'Agar', '6D Hampton Court Road', '79715', 'P070TK', '4'),
(45, '22899', 'Agate', '32-56 Argyle Square', '54219', '648', '5'),
(46, '34890', 'Agawam', '2-6 Chesham Place', '24800', 'QX7', '1'),
(47, '63822', 'Agency', '52-47 Welbeck Street', '86228', 'O', '2'),
(48, '34878', 'Ages Brookside', '82 Thurloe Court', '95764', 'VX7', '3'),
(49, '42609', 'Agness', '5 Grays Inn Road', '73058', 'F31TRM', '4'),
(50, '39970', 'Agoura Hills', '12-26 Glenhead Close', '84844', 'GY', '5');

--
-- Déchargement des données de la table `tab_asso_bill_dashbord`
--

INSERT INTO `tab_asso_bill_dashbord` (`tab_asso_bill_dashbord_id`, `b_id`, `dash_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 1),
(7, 7, 2),
(8, 8, 3),
(9, 9, 4),
(10, 10, 5),
(11, 11, 1),
(12, 12, 2),
(13, 13, 3),
(14, 14, 4),
(15, 15, 5),
(16, 16, 1),
(17, 17, 2),
(18, 18, 3),
(19, 19, 4),
(20, 20, 5);

--
-- Déchargement des données de la table `tab_asso_ingredient_inventory`
--

INSERT INTO `tab_asso_ingredient_inventory` (`asso_ingredient_inventory_id`, `date`, `i_id`, `ing_id`) VALUES
(1, '2020-10-14', 1, 1),
(2, '2020-10-21', 2, 2),
(3, '2020-10-28', 3, 3),
(4, '2020-11-04', 4, 4),
(5, '2020-11-11', 5, 5),
(6, '2020-11-18', 6, 6),
(7, '2020-11-25', 7, 7),
(8, '2020-10-14', 8, 8),
(9, '2020-10-21', 9, 9),
(10, '2020-10-28', 10, 10),
(11, '2020-11-04', 11, 11),
(12, '2020-11-11', 12, 12),
(13, '2020-11-18', 13, 13),
(14, '2020-11-25', 14, 14),
(15, '2020-10-14', 15, 15),
(16, '2020-10-21', 16, 16),
(17, '2020-10-28', 17, 17),
(18, '2020-11-04', 18, 18),
(19, '2020-11-11', 19, 19),
(20, '2020-11-18', 20, 20);

--
-- Déchargement des données de la table `tab_asso_ingredient_pizza`
--

INSERT INTO `tab_asso_ingredient_pizza` (`asso_ing_pizza_id`, `ing_id`, `piz_id`, `quantity`) VALUES
(1, 1, 1, '0.10'),
(2, 2, 1, '0.10'),
(3, 3, 1, '0.10'),
(4, 4, 1, '0.20'),
(5, 20, 1, '0.30'),
(6, 6, 2, '0.10'),
(7, 7, 2, '0.10'),
(8, 8, 2, '0.30'),
(9, 9, 2, '0.10'),
(10, 20, 2, '0.10'),
(11, 10, 3, '0.10'),
(12, 11, 3, '0.20'),
(13, 12, 3, '0.10'),
(14, 13, 3, '0.10'),
(15, 20, 3, '0.10'),
(16, 15, 4, '0.10'),
(17, 15, 4, '0.10'),
(18, 15, 4, '0.10'),
(19, 15, 4, '0.20'),
(20, 20, 4, '0.30'),
(21, 1, 5, '0.10'),
(22, 2, 5, '0.10'),
(23, 3, 5, '0.10'),
(24, 4, 5, '0.20'),
(25, 20, 5, '0.30'),
(26, 6, 6, '0.10'),
(27, 7, 6, '0.10'),
(28, 8, 6, '0.10'),
(29, 9, 6, '0.20'),
(30, 20, 6, '0.30'),
(31, 10, 7, '0.10'),
(32, 11, 7, '0.10'),
(33, 12, 7, '0.10'),
(34, 13, 7, '0.20'),
(35, 20, 7, '0.30'),
(36, 15, 8, '0.10'),
(37, 15, 8, '0.10'),
(38, 15, 8, '0.10'),
(39, 15, 8, '0.20'),
(40, 20, 8, '0.30'),
(41, 1, 9, '0.10'),
(42, 2, 9, '0.10'),
(43, 3, 9, '0.10'),
(44, 4, 9, '0.20'),
(45, 20, 9, '0.30'),
(46, 6, 10, '0.10'),
(47, 7, 10, '0.10'),
(48, 8, 10, '0.10'),
(49, 9, 10, '0.20'),
(50, 20, 10, '0.30'),
(51, 10, 11, '0.10'),
(52, 11, 11, '0.10'),
(53, 12, 11, '0.10'),
(54, 13, 11, '0.20'),
(55, 20, 11, '0.30');

--
-- Déchargement des données de la table `tab_asso_restaurant_dashboard`
--

INSERT INTO `tab_asso_restaurant_dashboard` (`asso_restaurant_dashboard_id`, `r_id`, `dash_id`) VALUES
(1, 1, 1),
(6, 1, 1),
(11, 1, 1),
(16, 1, 1),
(2, 2, 2),
(7, 2, 2),
(12, 2, 2),
(17, 2, 2),
(3, 3, 3),
(8, 3, 3),
(13, 3, 3),
(18, 3, 3),
(4, 4, 4),
(9, 4, 4),
(14, 4, 4),
(19, 4, 4),
(5, 5, 5),
(10, 5, 5),
(15, 5, 5),
(20, 5, 5);

--
-- Déchargement des données de la table `tab_asso_restaurant_product`
--

INSERT INTO `tab_asso_restaurant_product` (`asso_restaurant_menu_id`, `start_date`, `p_id`, `price_sale_excluding_vat`, `r_id`) VALUES
(1, '2020-10-10', 1, '12.00', 1),
(2, '2020-10-10', 2, '13.00', 1),
(3, '2020-10-10', 3, '14.00', 1),
(4, '2020-10-10', 4, '15.00', 1),
(5, '2020-10-10', 5, '12.00', 1),
(6, '2020-10-10', 6, '13.00', 1),
(7, '2020-10-10', 7, '14.00', 1),
(8, '2020-10-10', 8, '15.00', 1),
(9, '2020-10-10', 9, '11.00', 1),
(10, '2020-10-10', 10, '15.00', 1),
(11, '2020-10-10', 11, '15.00', 1),
(12, '2020-10-10', 12, '11.00', 1),
(13, '2020-10-10', 13, '11.00', 1),
(14, '2020-10-10', 14, '15.00', 1),
(15, '2020-10-10', 15, '15.00', 1),
(16, '2020-10-10', 16, '15.00', 1),
(17, '2020-10-10', 17, '12.00', 1),
(18, '2020-10-10', 18, '11.00', 1),
(19, '2020-10-10', 19, '15.00', 1),
(20, '2020-10-10', 1, '12.00', 2),
(21, '2020-10-10', 2, '13.00', 2),
(22, '2020-10-10', 3, '14.00', 2),
(23, '2020-10-10', 4, '15.00', 2),
(24, '2020-10-10', 5, '12.00', 2),
(25, '2020-10-10', 6, '13.00', 2),
(26, '2020-10-10', 7, '14.00', 2),
(27, '2020-10-10', 8, '15.00', 2),
(28, '2020-10-10', 9, '11.00', 2),
(29, '2020-10-10', 10, '15.00', 2),
(30, '2020-10-10', 11, '15.00', 2),
(31, '2020-10-10', 12, '11.00', 2),
(32, '2020-10-10', 13, '11.00', 2),
(33, '2020-10-10', 14, '15.00', 2),
(34, '2020-10-10', 15, '15.00', 2),
(35, '2020-10-10', 16, '15.00', 2),
(36, '2020-10-10', 17, '12.00', 2),
(37, '2020-10-10', 18, '11.00', 2),
(38, '2020-10-10', 19, '15.00', 2),
(39, '2020-10-10', 1, '12.00', 3),
(40, '2020-10-10', 2, '13.00', 3),
(41, '2020-10-10', 3, '14.00', 3),
(42, '2020-10-10', 4, '15.00', 3),
(43, '2020-10-10', 5, '12.00', 3),
(44, '2020-10-10', 6, '13.00', 3),
(45, '2020-10-10', 7, '14.00', 3),
(46, '2020-10-10', 8, '15.00', 3),
(47, '2020-10-10', 9, '11.00', 3),
(48, '2020-10-10', 10, '15.00', 3),
(49, '2020-10-10', 11, '15.00', 3),
(50, '2020-10-10', 12, '11.00', 3),
(51, '2020-10-10', 13, '11.00', 3),
(52, '2020-10-10', 14, '15.00', 3),
(53, '2020-10-10', 15, '15.00', 3),
(54, '2020-10-10', 16, '15.00', 3),
(55, '2020-10-10', 17, '12.00', 3),
(56, '2020-10-10', 18, '11.00', 3),
(57, '2020-10-10', 19, '15.00', 3),
(58, '2020-10-10', 1, '12.00', 4),
(59, '2020-10-10', 2, '13.00', 4),
(60, '2020-10-10', 4, '14.00', 4),
(61, '2020-10-10', 4, '15.00', 4),
(62, '2020-10-10', 5, '12.00', 4),
(63, '2020-10-10', 6, '13.00', 4),
(64, '2020-10-10', 7, '14.00', 4),
(65, '2020-10-10', 8, '15.00', 4),
(66, '2020-10-10', 9, '11.00', 4),
(67, '2020-10-10', 10, '15.00', 4),
(68, '2020-10-10', 11, '15.00', 4),
(69, '2020-10-10', 12, '11.00', 4),
(70, '2020-10-10', 14, '11.00', 4),
(71, '2020-10-10', 14, '15.00', 4),
(72, '2020-10-10', 15, '15.00', 4),
(73, '2020-10-10', 16, '15.00', 4),
(74, '2020-10-10', 17, '12.00', 4),
(75, '2020-10-10', 18, '11.00', 4),
(76, '2020-10-10', 19, '15.00', 4),
(77, '2020-10-10', 1, '12.00', 5),
(78, '2020-10-10', 2, '13.00', 5),
(79, '2020-10-10', 4, '14.00', 5),
(80, '2020-10-10', 4, '15.00', 5),
(81, '2020-10-10', 5, '12.00', 5),
(82, '2020-10-10', 6, '13.00', 5),
(83, '2020-10-10', 7, '14.00', 5),
(84, '2020-10-10', 8, '15.00', 5),
(85, '2020-10-10', 9, '11.00', 5),
(86, '2020-10-10', 10, '15.00', 5),
(87, '2020-10-10', 11, '15.00', 5),
(88, '2020-10-10', 12, '11.00', 5),
(89, '2020-10-10', 14, '11.00', 5),
(90, '2020-10-10', 14, '15.00', 5),
(91, '2020-10-10', 15, '15.00', 5),
(92, '2020-10-10', 16, '15.00', 5),
(93, '2020-10-10', 17, '12.00', 5),
(94, '2020-10-10', 18, '11.00', 5),
(95, '2020-10-10', 19, '15.00', 5);

--
-- Déchargement des données de la table `tab_asso_staff_access_right_id`
--

INSERT INTO `tab_asso_staff_access_right_id` (`tab_asso_staff_acces_right_id`, `s_id`, `a_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 10),
(5, 2, 9),
(6, 2, 10),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(10, 3, 4),
(11, 3, 5),
(12, 3, 10),
(13, 4, 1),
(14, 4, 2),
(15, 4, 9),
(16, 4, 10),
(17, 5, 4),
(18, 5, 7),
(19, 6, 8),
(20, 6, 8),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 10),
(25, 8, 9),
(26, 8, 10),
(27, 9, 2),
(28, 9, 3),
(29, 9, 4),
(30, 9, 5),
(31, 9, 10),
(32, 10, 1),
(33, 10, 2),
(34, 10, 9),
(35, 10, 10),
(36, 11, 1),
(37, 11, 2),
(38, 11, 3),
(39, 11, 10),
(40, 12, 1),
(41, 12, 2),
(42, 12, 3),
(43, 12, 10),
(44, 13, 1),
(45, 13, 2),
(46, 13, 3),
(47, 13, 10),
(48, 14, 9),
(49, 14, 10),
(50, 15, 1),
(51, 15, 2),
(52, 15, 3),
(53, 15, 4),
(54, 15, 5),
(55, 15, 10),
(56, 16, 1),
(57, 16, 2),
(58, 16, 9),
(59, 16, 10),
(60, 17, 4),
(61, 17, 7),
(62, 18, 9),
(63, 18, 10),
(64, 19, 1),
(65, 19, 2),
(66, 19, 3),
(67, 19, 10),
(68, 20, 9),
(69, 20, 10);

--
-- Déchargement des données de la table `tab_asso_staff_dashboard`
--

INSERT INTO `tab_asso_staff_dashboard` (`asso_staff_dashboard_id`, `s_id`, `dash_id`) VALUES
(1, 5, 1),
(4, 9, 4),
(6, 11, 5),
(2, 15, 2),
(3, 17, 3);

--
-- Déchargement des données de la table `tab_asso_supplier_ingredient`
--

INSERT INTO `tab_asso_supplier_ingredient` (`asso_ingredient_supplier_id`, `sup_id`, `ing_id`) VALUES
(1, 1, 1),
(6, 1, 6),
(11, 1, 11),
(16, 1, 16),
(2, 2, 2),
(7, 2, 7),
(12, 2, 12),
(17, 2, 17),
(3, 3, 3),
(8, 3, 8),
(13, 3, 13),
(18, 3, 18),
(4, 4, 4),
(9, 4, 9),
(14, 4, 14),
(19, 4, 19),
(5, 5, 5),
(10, 5, 10),
(15, 5, 15),
(20, 5, 20);

--
-- Déchargement des données de la table `tab_asso_supplier_trading_product`
--

INSERT INTO `tab_asso_supplier_trading_product` (`asso_supplier_trading_product_id`, `tp_id`, `sup_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 1),
(7, 7, 2),
(8, 8, 3),
(9, 9, 4),
(10, 10, 5);

--
-- Déchargement des données de la table `tab_asso_trading_product_inventory`
--

INSERT INTO `tab_asso_trading_product_inventory` (`asso_trading_product_inventory`, `date`, `tp_id`, `itp_id`) VALUES
(1, '2020-10-25', 1, 1),
(2, '2020-12-02', 2, 2),
(3, '2020-12-06', 3, 3),
(4, '2020-12-08', 4, 4),
(5, '2020-11-12', 5, 5),
(6, '2020-12-08', 6, 6),
(7, '2020-12-16', 7, 7),
(8, '2020-11-04', 8, 8),
(9, '2020-12-25', 9, 9),
(10, '2020-11-09', 10, 10),
(11, '2020-10-20', 1, 11),
(12, '2020-10-28', 2, 12),
(13, '2020-10-17', 3, 13),
(14, '2020-11-30', 4, 14),
(15, '2020-11-29', 5, 15),
(16, '2020-11-27', 6, 16),
(17, '2020-12-30', 7, 17),
(18, '2020-12-03', 8, 18),
(19, '2020-12-04', 9, 19),
(20, '2020-11-01', 10, 20);

--
-- Déchargement des données de la table `tab_bill`
--

INSERT INTO `tab_bill` (`b_id`, `b_number`, `r_name`, `b_date_time`, `b_num_siren`, `b_price_exc_vat`, `b_vat`, `b_total_price`, `t_id`, `c_id`, `card_id`) VALUES
(1, 1, 'oc pizza 1', '2020-10-14 00:00:01', 100000001, '123.00', '12.30', '135.30', NULL, NULL, 1),
(2, 2, 'oc pizza 2', '2020-10-14 00:00:01', 100000002, '51.00', '5.10', '56.10', NULL, 1, NULL),
(3, 3, 'oc pizza 3', '2020-10-14 00:00:01', 100000003, '103.00', '7.90', '110.90', 1, NULL, NULL),
(4, 4, 'oc pizza 4', '2020-10-14 00:00:01', 100000004, '57.00', '4.50', '61.50', NULL, NULL, 2),
(5, 5, 'oc pizza 5', '2020-10-14 00:00:01', 100000005, '26.00', '2.60', '28.60', NULL, 2, NULL),
(6, 6, 'oc pizza 1', '2020-10-14 00:00:01', 100000001, '25.00', '2.50', '27.50', 2, NULL, NULL),
(7, 7, 'oc pizza 2', '2020-10-14 00:00:01', 100000002, '72.00', '3.60', '75.60', NULL, NULL, 3),
(8, 8, 'oc pizza 3', '2020-10-14 00:00:01', 100000003, '73.00', '6.65', '79.65', NULL, 3, NULL),
(9, 9, 'oc pizza 4', '2020-10-14 00:00:01', 100000004, '94.00', '8.20', '102.20', 3, NULL, NULL),
(10, 10, 'oc pizza 5', '2020-10-14 00:00:01', 100000005, '105.00', '10.50', '115.50', NULL, NULL, 4),
(11, 11, 'oc pizza 1', '2020-10-14 00:00:01', 100000001, '63.00', '3.90', '66.90', NULL, 4, NULL),
(12, 12, 'oc pizza 2', '2020-10-14 00:00:01', 100000002, '90.00', '9.00', '99.00', 4, NULL, NULL),
(13, 13, 'oc pizza 3', '2020-10-14 00:00:01', 100000003, '96.00', '7.80', '103.80', NULL, NULL, 5),
(14, 14, 'oc pizza 4', '2020-10-14 00:00:01', 100000004, '71.00', '7.10', '78.10', NULL, 5, NULL),
(15, 15, 'oc pizza 5', '2020-10-14 00:00:01', 100000005, '135.00', '13.50', '148.50', 5, NULL, NULL),
(16, 16, 'oc pizza 1', '2020-10-14 00:00:01', 100000001, '59.00', '5.90', '64.90', NULL, NULL, 6),
(17, 17, 'oc pizza 2', '2020-10-14 00:00:01', 100000002, '72.00', '6.00', '78.00', NULL, 6, NULL),
(18, 18, 'oc pizza 3', '2020-10-14 00:00:01', 100000003, '104.00', '10.40', '114.40', 6, NULL, NULL),
(19, 19, 'oc pizza 4', '2020-10-14 00:00:01', 100000004, '68.00', '5.60', '73.60', NULL, NULL, 7),
(20, 20, 'oc pizza 5', '2020-10-14 00:00:01', 100000005, '72.00', '7.20', '79.20', NULL, 7, NULL);

--
-- Déchargement des données de la table `tab_customer`
--

INSERT INTO `tab_customer` (`cust_id`, `cust_my_order`, `u_id`) VALUES
(1, '1', 21),
(2, '2', 22),
(3, '3', 23),
(4, '4', 24),
(5, '5', 25),
(6, '6', 26),
(7, '7', 27),
(8, '8', 28),
(9, '9', 29),
(10, '10', 30),
(11, '11', 31),
(12, '12', 32),
(13, '13', 33),
(14, '14', 34),
(15, '15', 35),
(16, '16', 36),
(17, '17', 37),
(18, '18', 38),
(19, '19', 39),
(20, '20', 40);

--
-- Déchargement des données de la table `tab_dashboard`
--

INSERT INTO `tab_dashboard` (`dash_id`, `d_starting_date`, `d_ending_date`, `dash_turnover_global`, `r_id`) VALUES
(1, '2020-10-14', '2020-10-14', '278.00', 1),
(2, '2020-10-14', '2020-10-14', '282.00', 2),
(3, '2020-10-14', '2020-10-14', '396.00', 3),
(4, '2020-10-14', '2020-10-14', '306.00', 4),
(5, '2020-10-14', '2020-10-14', '261.00', 5);

--
-- Déchargement des données de la table `tab_delivery_person`
--

INSERT INTO `tab_delivery_person` (`d_id`, `o_id`, `s_id`, `o_delivery_id`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 8, 3),
(4, 4, 14, 4),
(5, 5, 14, 5),
(6, 6, 20, 6),
(7, 7, 18, 7),
(8, 8, 8, 8),
(9, 9, 18, 9),
(10, 10, 14, 10),
(11, 11, 2, 11),
(12, 12, 20, 12),
(13, 13, 13, 13),
(14, 14, 14, 14),
(15, 15, 15, 15),
(16, 16, 16, 16),
(17, 17, 14, 17),
(18, 18, 18, 18),
(19, 19, 19, 19),
(20, 20, 20, 20);

--
-- Déchargement des données de la table `tab_ingredient`
--

INSERT INTO `tab_ingredient` (`ing_id`, `ing_name`, `ing_description`, `ing_quantity_calculated`, `ing_cost_price_exc_vat`, `ing_vat_rate100`, `ing_quantity_threshold`, `ing_unit`) VALUES
(1, 'Sauce tomate', 'Non qui. Est earum.', '83.00', '14.73', '10.0', '58.00', 'kg'),
(2, 'fromage', 'Quia est voluptas vitae;', '50.00', '13.07', '10.0', '79.00', 'kg'),
(3, 'champignons', 'Quia aliquam.', '150.00', '17.60', '10.0', '62.00', 'kg'),
(4, 'poivrons', 'Similique id voluptatem.', '142.00', '17.84', '10.0', '19.00', 'kg'),
(5, 'pommes de terre', 'Vero sed corporis ea.', '122.00', '5.40', '10.0', '94.00', 'kg'),
(6, 'tomates', 'Est maiores quia. Itaque!', '88.00', '17.23', '10.0', '100.00', 'kg'),
(7, 'origan', 'Molestiae odit atque. Dolor.', '66.00', '18.84', '10.0', '60.00', 'kg'),
(8, 'jambon blanc', 'Saepe in ipsa suscipit.', '169.00', '11.78', '10.0', '42.00', 'kg'),
(9, 'oeuf', 'Debitis qui perspiciatis.', '90.00', '6.69', '10.0', '91.00', 'kg'),
(10, 'fromage', 'Non laudantium. Facere!', '130.00', '8.45', '10.0', '35.00', 'kg'),
(11, 'oignons', 'Tempora nihil. Reprehenderit?', '95.00', '6.45', '10.0', '50.00', 'kg'),
(12, 'chorizo', 'Id assumenda obcaecati.', '137.00', '18.19', '10.0', '24.00', 'kg'),
(13, 'merguez', 'Dolores ex. Tempora quod;', '155.00', '18.74', '10.0', '94.00', 'kg'),
(14, 'viande hachéé', 'Quia velit. Dolor ad.', '195.00', '9.34', '10.0', '89.00', 'kg'),
(15, 'fromage', 'Minima tempora.', '94.00', '17.38', '10.0', '86.00', 'kg'),
(16, 'moutarde', 'Tempora eligendi. Fugit sed.', '65.00', '17.14', '10.0', '12.00', 'kg'),
(17, 'thon', 'Error quia nulla libero dolor.', '200.00', '6.90', '10.0', '92.00', 'kg'),
(18, 'chèvre', 'Accusantium repudiandae.', '192.00', '16.87', '10.0', '97.00', 'kg'),
(19, 'crème', 'Maiores dolor. Sed qui?', '183.00', '5.35', '10.0', '41.00', 'kg'),
(20, 'pate', 'Adipisci ut quibusdam qui.', '52.00', '10.30', '10.0', '42.00', 'kg');

--
-- Déchargement des données de la table `tab_inventory_ingredient`
--

INSERT INTO `tab_inventory_ingredient` (`i_id`, `r_id`, `i_quantity`, `i_reception_date`, `i_expiration_date`) VALUES
(1, 1, 81, '2020-10-01', '2020-11-27'),
(2, 2, 54, '2020-10-04', '2020-11-28'),
(3, 3, 88, '2020-10-07', '2020-11-29'),
(4, 4, 14, '2020-10-10', '2020-11-30'),
(5, 5, 17, '2020-10-13', '2020-12-01'),
(6, 1, 16, '2020-10-16', '2020-12-02'),
(7, 2, 29, '2020-10-19', '2020-12-03'),
(8, 3, 55, '2020-10-22', '2020-12-04'),
(9, 4, 78, '2020-10-25', '2020-12-05'),
(10, 5, 17, '2020-10-28', '2020-12-06'),
(11, 1, 11, '2020-10-31', '2020-12-07'),
(12, 2, 4, '2020-11-03', '2020-12-08'),
(13, 3, 43, '2020-11-06', '2020-12-09'),
(14, 4, 63, '2020-11-09', '2020-12-10'),
(15, 5, 90, '2020-11-12', '2020-12-11'),
(16, 1, 3, '2020-11-15', '2020-12-12'),
(17, 2, 89, '2020-11-18', '2020-12-13'),
(18, 3, 9, '2020-11-21', '2020-12-14'),
(19, 4, 68, '2020-11-24', '2020-12-15'),
(20, 5, 81, '2020-11-27', '2020-12-16');

--
-- Déchargement des données de la table `tab_inventory_trading_product`
--

INSERT INTO `tab_inventory_trading_product` (`itp_id`, `r_id`, `itp_quantity`, `itp_reception_date`, `itp_expiration _date`) VALUES
(1, 1, 13, '2020-10-14', '2020-11-27'),
(2, 2, 19, '2020-10-15', '2020-12-03'),
(3, 3, 6, '2020-10-16', '2020-12-12'),
(4, 4, 4, '2020-10-17', '2020-11-16'),
(5, 5, 75, '2020-10-18', '2020-11-20'),
(6, 1, 3, '2020-10-19', '2020-11-15'),
(7, 2, 90, '2020-10-20', '2020-12-14'),
(8, 3, 66, '2020-10-21', '2020-12-09'),
(9, 4, 32, '2020-10-22', '2020-11-22'),
(10, 5, 24, '2020-10-23', '2020-11-16'),
(11, 1, 31, '2020-10-24', '2020-11-18'),
(12, 2, 22, '2020-10-25', '2020-12-12'),
(13, 3, 77, '2020-10-26', '2020-11-18'),
(14, 4, 43, '2020-10-27', '2020-12-03'),
(15, 5, 26, '2020-10-28', '2020-11-23'),
(16, 1, 54, '2020-10-29', '2020-11-27'),
(17, 2, 74, '2020-10-30', '2020-11-24'),
(18, 3, 28, '2020-10-31', '2020-12-10'),
(19, 4, 47, '2020-11-01', '2020-11-20'),
(20, 5, 33, '2020-11-02', '2020-11-18');

--
-- Déchargement des données de la table `tab_order`
--

INSERT INTO `tab_order` (`o_id`, `o_date_time`, `o_statut`, `o_statut_time`, `o_payment_type`, `o_delivery_id`, `o_delivery_time`, `o_total_amount`, `o_note`, `u_id`, `a_id`, `r_id`) VALUES
(1, '2020-10-14 00:00:01', 'confirmed', '2020-10-13 22:00:01', 'card', 1, '2020-10-14 00:00:01', '135.00', 'Quo ad dolorem. Aliquid et sit!', 21, 11, 1),
(2, '2020-10-14 00:00:01', 'in prepara', '2020-10-13 22:00:01', 'cash', 2, '2020-10-14 00:00:01', '56.00', 'Nulla in est. Repellendus ipsum.', 22, 12, 2),
(3, '2020-10-14 00:00:01', 'prepared', '2020-10-13 22:00:01', 'ticketrestaurant', 3, '2020-10-14 00:00:01', '110.00', 'Doloribus accusamus laudantium.', 23, 13, 3),
(4, '2020-10-14 00:00:01', 'in delever', '2020-10-13 22:00:01', 'card', 4, '2020-10-14 00:00:01', '61.00', 'Quas ratione dolores. Magnam rerum!', 24, 14, 4),
(5, '2020-10-14 00:00:01', 'delivered', '2020-10-13 22:00:01', 'cash', 5, '2020-10-14 00:00:01', '28.00', 'Aut recusandae ut qui dicta eum...', 25, 15, 5),
(6, '2020-10-14 00:00:01', 'paid', '2020-10-13 22:00:01', 'ticketrestaurant', 6, '2020-10-14 00:00:01', '27.00', 'Qui ad iste; et earum quo.', 26, 16, 1),
(7, '2020-10-14 00:00:01', 'cancel', '2020-10-13 22:00:01', 'card', 7, '2020-10-14 00:00:01', '75.00', 'Error maiores aut. Nemo earum.', 27, 17, 2),
(8, '2020-10-14 00:00:01', 'confirmed', '2020-10-13 22:00:01', 'cash', 8, '2020-10-14 00:00:01', '79.00', 'Dolor necessitatibus unde; beatae.', 28, 18, 3),
(9, '2020-10-14 00:00:01', 'in prepara', '2020-10-13 22:00:01', 'ticketrestaurant', 9, '2020-10-14 00:00:01', '102.00', 'Rerum quis veritatis. Cum dolor.', 29, 19, 4),
(10, '2020-10-14 00:00:01', 'prepared', '2020-10-13 22:00:01', 'card', 10, '2020-10-14 00:00:01', '115.00', 'Neque excepturi sint. Suscipit!', 30, 20, 5),
(11, '2020-10-14 00:00:01', 'in delever', '2020-10-13 22:00:01', 'cash', 11, '2020-10-14 00:00:01', '66.00', 'Blanditiis ullam sed. Nostrum.', 31, 21, 1),
(12, '2020-10-14 00:00:01', 'delivered', '2020-10-13 22:00:01', 'ticketrestaurant', 12, '2020-10-14 00:00:01', '99.00', 'Quasi sequi ut. Perspiciatis et.', 32, 22, 2),
(13, '2020-10-14 00:00:01', 'paid', '2020-10-13 22:00:01', 'card', 13, '2020-10-14 00:00:01', '103.00', 'Voluptates eius sed. Sunt non sed.', 33, 23, 3),
(14, '2020-10-14 00:00:01', 'cancel', '2020-10-13 22:00:01', 'cash', 14, '2020-10-14 00:00:01', '78.00', 'Ut illum facilis; est aperiam.', 34, 24, 4),
(15, '2020-10-14 00:00:01', 'confirmed', '2020-10-13 22:00:01', 'ticketrestaurant', 15, '2020-10-14 00:00:01', '148.00', 'Ratione at iusto. Assumenda esse?', 35, 25, 5),
(16, '2020-10-14 00:00:01', 'in prepara', '2020-10-13 22:00:01', 'card', 16, '2020-10-14 00:00:01', '64.00', 'Corrupti velit cupiditate. Vitae sit.', 36, 26, 1),
(17, '2020-10-14 00:00:01', 'prepared', '2020-10-13 22:00:01', 'cash', 17, '2020-10-14 00:00:01', '78.00', 'Aut ab sunt. Nesciunt dolore.', 37, 27, 2),
(18, '2020-10-14 00:00:01', 'in delever', '2020-10-13 22:00:01', 'ticketrestaurant', 18, '2020-10-14 00:00:01', '114.00', 'Tempore itaque minima. Ipsum.', 38, 28, 3),
(19, '2020-10-14 00:00:01', 'delivered', '2020-10-13 22:00:01', 'card', 19, '2020-10-14 00:00:01', '73.00', 'Laboriosam aliquam atque; est?', 39, 29, 4),
(20, '2020-10-14 00:00:01', 'paid', '2020-10-13 22:00:01', 'cash', 20, '2020-10-14 00:00:01', '79.00', 'Quaerat eligendi officia. Earum;', 40, 30, 5);

--
-- Déchargement des données de la table `tab_order_line`
--

INSERT INTO `tab_order_line` (`order_line_id`, `order_line_quantity`, `p_id`, `o_id`) VALUES
(1, 5, 12, 1),
(2, 1, 12, 2),
(3, 4, 1, 3),
(4, 2, 5, 4),
(5, 1, 18, 5),
(6, 1, 7, 6),
(7, 2, 1, 7),
(8, 4, 9, 8),
(9, 2, 5, 9),
(10, 4, 18, 10),
(11, 1, 13, 11),
(12, 5, 9, 12),
(13, 3, 5, 13),
(14, 4, 12, 14),
(15, 5, 9, 15),
(16, 1, 16, 16),
(17, 2, 1, 17),
(18, 4, 16, 18),
(19, 4, 15, 19),
(20, 4, 9, 20),
(21, 4, 19, 1),
(22, 3, 19, 2),
(23, 5, 14, 3),
(24, 3, 14, 4),
(25, 1, 14, 5),
(26, 1, 15, 6),
(27, 4, 1, 7),
(28, 1, 2, 8),
(29, 5, 7, 9),
(30, 3, 18, 10),
(31, 4, 1, 11),
(32, 1, 16, 12),
(33, 4, 10, 13),
(34, 1, 11, 14),
(35, 4, 13, 15),
(36, 4, 14, 16),
(37, 4, 19, 17),
(38, 4, 14, 18),
(39, 2, 1, 19),
(40, 1, 19, 20);

--
-- Déchargement des données de la table `tab_payment`
--

INSERT INTO `tab_payment` (`p_id`, `p_type`, `o_id`) VALUES
(1, 'card', 1),
(2, 'cash', 2),
(3, 'ticketrestaurant', 3),
(4, 'card', 4),
(5, 'cash', 5),
(6, 'ticketrestaurant', 6),
(7, 'card', 7),
(8, 'cash', 8),
(9, 'ticketrestaurant', 9),
(10, 'card', 10),
(11, 'cash', 11),
(12, 'ticketrestaurant', 12),
(13, 'card', 13),
(14, 'cash', 14),
(15, 'ticketrestaurant', 15),
(16, 'card', 16),
(17, 'cash', 17),
(18, 'ticketrestaurant', 18),
(19, 'card', 19),
(20, 'cash', 20);

--
-- Déchargement des données de la table `tab_payment_card`
--

INSERT INTO `tab_payment_card` (`card_id`, `card_name`, `card_type`, `p_id`) VALUES
(1, 'Tierra Lott', 'visa', 1),
(2, 'Nancie Holland', 'mastercard', 4),
(3, 'Rebbecca Quintana', 'cb', 7),
(4, 'Dwain Trudeau', 'visa', 10),
(5, 'Gregorio Gilliland', 'mastercard', 13),
(6, 'Margaret Trimble', 'cb', 16),
(7, 'Burton Ennis', 'visa', 19);

--
-- Déchargement des données de la table `tab_payment_cash`
--

INSERT INTO `tab_payment_cash` (`c_id`, `c_received`, `c_refund`, `c_balance`, `p_id`) VALUES
(1, '60.00', '3.90', '56.10', 2),
(2, '30.00', '1.40', '28.60', 5),
(3, '80.00', '0.35', '79.65', 8),
(4, '70.00', '3.10', '66.90', 11),
(5, '80.00', '1.90', '78.10', 14),
(6, '80.00', '2.00', '78.00', 17),
(7, '100.00', '20.80', '79.20', 20);

--
-- Déchargement des données de la table `tab_pizza`
--

INSERT INTO `tab_pizza` (`piz_id`, `piz_name`, `piz_unit_sale_price_exc_vat`, `piz_prod_capacity`, `piz_size`, `piz_pan`) VALUES
(1, 'napolitaine', '11.00', 70, 'medium', 'classic'),
(2, 'altaglio', '15.00', 76, 'xlarge', 'pan'),
(3, 'Sfincione', '15.00', 76, 'medium', 'crust'),
(4, 'sardenara', '11.00', 36, 'xlarge', 'classic'),
(5, 'calzone', '11.00', 2, 'medium', 'pan'),
(6, 'alpadellino', '15.00', 2, 'xlarge', 'crust'),
(7, 'pizzolo', '15.00', 67, 'medium', 'classic'),
(8, 'Scaccia', '15.00', 98, 'xlarge', 'pan'),
(9, 'napoletane', '12.00', 41, 'medium', 'crust'),
(10, 'panzerotto', '11.00', 88, 'xlarge', 'classic'),
(11, 'diRecco', '15.00', 14, 'medium', 'pan');

--
-- Déchargement des données de la table `tab_product`
--

INSERT INTO `tab_product` (`p_id`, `p_category`, `p_name`, `p_vat_rate100`, `piz_id`, `tp_id`) VALUES
(1, 'drink', 'Coca-Cola Original 33cl', '5.5', NULL, 1),
(2, 'drink ', 'Oasis Tropical 33cl ', '5.5', NULL, 2),
(3, 'drink', 'San Pellegrino 1L', '5.5', NULL, 3),
(4, 'drink', 'Schweppes Agrum\' 33cl', '5.5', NULL, 4),
(5, 'drink ', 'Perrier 33cl ', '5.5', NULL, 5),
(6, 'dessert', '4 Mini Beignets fourrés', '10.0', NULL, 6),
(7, 'dessert', 'Coeur Fondant au chocolat', '10.0', NULL, 7),
(8, 'dessert', 'Crème glacée au carame', '10.0', NULL, 8),
(9, 'pizza', 'napolitaine', '10.0', 1, NULL),
(10, 'pizza', 'altaglio', '10.0', 2, NULL),
(11, 'pizza', 'Sfincione', '10.0', 3, NULL),
(12, 'pizza', 'sardenara', '10.0', 4, NULL),
(13, 'pizza', 'calzone', '10.0', 5, NULL),
(14, 'pizza', 'alpadellino', '10.0', 6, NULL),
(15, 'pizza', 'pizzolo', '10.0', 7, NULL),
(16, 'pizza', 'Scaccia', '10.0', 8, NULL),
(17, 'pizza', 'napoletane', '10.0', 9, NULL),
(18, 'pizza', 'panzerotto', '10.0', 10, NULL),
(19, 'pizza', 'diRecco', '10.0', 11, NULL);

--
-- Déchargement des données de la table `tab_restaurant`
--

INSERT INTO `tab_restaurant` (`r_id`, `r_name`, `r_num_siren`, `r_phone`, `t_email`, `a_id`) VALUES
(1, 'oc pizza 1', 100000001, '9733871966', 'DonnyStarnes@example.com', 1),
(2, 'oc pizza 2', 100000002, '5483945107', 'Marguerita.Stratton@example.com', 2),
(3, 'oc pizza 3', 100000003, '5345043408', 'Yoder@nowhere.com', 3),
(4, 'oc pizza 4', 100000004, '1222339756', 'Dwain.Sisco@nowhere.com', 4),
(5, 'oc pizza 5', 100000005, '4778305183', 'ReginiaReilly829@example.com', 5);

--
-- Déchargement des données de la table `tab_staff`
--

INSERT INTO `tab_staff` (`s_id`, `s_title`, `u_id`) VALUES
(1, 'pizzaolio', 1),
(2, 'livreur', 2),
(3, 'manager', 3),
(4, 'caissier polyvalent', 4),
(5, 'responsable OC', 5),
(6, 'responsable site WEB', 6),
(7, 'pizzaolio', 7),
(8, 'livreur', 8),
(9, 'manager', 9),
(10, 'caissier polyvalent', 10),
(11, 'responsable OC', 11),
(12, 'pizzaolio', 12),
(13, 'pizzaolio', 13),
(14, 'livreur', 14),
(15, 'manager', 15),
(16, 'caissier polyvalent', 16),
(17, 'responsable OC', 17),
(18, 'livreur', 18),
(19, 'pizzaolio', 19),
(20, 'livreur', 20);

--
-- Déchargement des données de la table `tab_supplier`
--

INSERT INTO `tab_supplier` (`sup_id`, `sup_name`, `sup_phone`, `sup_email`, `a_id`) VALUES
(1, 'carrefour', '7100633121', 'Brito65@nowhere.com', 6),
(2, 'metro', '8798549715', 'Foust496@example.com', 7),
(3, 'leclerc', '5341121677', 'Cockrell871@nowhere.com', 8),
(4, 'le pizzaoilo', '5822761725', 'Bryan@nowhere.com', 9),
(5, 'picard', '8086414081', 'Christensen@nowhere.com', 10);

--
-- Déchargement des données de la table `tab_supplier_line`
--

INSERT INTO `tab_supplier_line` (`sl_id`, `sl_quantity_trading_product`, `sl_quantity_ingredient`, `supplier_order_id`, `ing_id`, `tp_id`) VALUES
(1, 63, 50, 1, 1, 7),
(2, NULL, 93, 2, 2, NULL),
(3, 93, 50, 3, 3, 10),
(4, 47, NULL, 4, NULL, 10),
(5, 18, 5, 10, 5, 10),
(6, 59, NULL, 6, NULL, 6),
(7, 87, 50, 7, 7, 7),
(8, 78, 49, 8, 8, 10),
(9, NULL, 75, 9, 9, NULL),
(10, 4, 13, 10, 10, 1);

--
-- Déchargement des données de la table `tab_supplier_order`
--

INSERT INTO `tab_supplier_order` (`supplier_order_id`, `sup_id`, `order_number`, `shipping_date`) VALUES
(1, 1, '36520', '2020-10-14'),
(2, 2, '30853', '2020-10-23'),
(3, 3, '22537', '2020-11-01'),
(4, 4, '46562', '2020-11-10'),
(5, 5, '63352', '2020-11-19'),
(6, 1, '36856', '2020-11-28'),
(7, 2, '77347', '2020-12-07'),
(8, 3, '84365', '2020-12-16'),
(9, 4, '72446', '2020-10-14'),
(10, 5, '14837', '2020-10-23');

--
-- Déchargement des données de la table `tab_ticket_restaurant`
--

INSERT INTO `tab_ticket_restaurant` (`t_id`, `t_number`, `t_validation_date`, `p_id`) VALUES
(1, 1510567, '2022-12-23', 3),
(2, 1029084, '2022-07-28', 6),
(3, 1670018, '2022-06-15', 9),
(4, 1018683, '2021-11-17', 12),
(5, 1438927, '2022-04-01', 15),
(6, 1841133, '2022-11-19', 18);

--
-- Déchargement des données de la table `tab_trading_product`
--

INSERT INTO `tab_trading_product` (`tp_id`, `tp_name`, `tp_description`, `tp_cost_price_exc_vat`, `tp_vat_rate_100`, `tp_price_sale_excluding_vat`) VALUES
(1, 'Coca-Cola Original 33cl', 'Cumque laudantium. Incidunt!', '10.00', '5.5', '12.00'),
(2, 'Oasis Tropical 33cl', 'Non molestiae asperiores eos.', '11.00', '5.5', '13.00'),
(3, 'San Pellegrino 1L', 'Ducimus quod. Culpa ut!', '13.00', '5.5', '14.00'),
(4, 'Schweppes Agrum\' 33cl', 'Voluptatem rerum.', '14.00', '5.5', '15.00'),
(5, 'Perrier 33cl', 'Dolor qui. Molestias et.', '10.00', '5.5', '12.00'),
(6, '4 Mini Beignets fourrés', 'Harum ea aut laboriosam.', '11.00', '5.5', '13.00'),
(7, 'Coeur Fondant au chocolat', 'Quia magnam ullam.', '13.00', '5.5', '14.00'),
(8, 'Crème glacée au caramel', 'Velit reiciendis. Et ad.', '14.00', '5.5', '15.00');

--
-- Déchargement des données de la table `tab_user`
--

INSERT INTO `tab_user` (`u_id`, `u_first_name`, `u_last_name`, `u_login`, `u_password`, `u_email`, `u_phone_number`, `a_id`, `r_id`) VALUES
(1, 'Mariano', 'Abbott', 'Clinton1967', 'ewn', 'Rivers@example.com', '6808254159', 11, 2),
(2, 'Elijah', 'Abel', 'Dodge465', 'ivp', 'gzvtkvrs_lsok@nowhere.com', '9288762439', 12, 1),
(3, 'Berniece', 'Abernathy', 'Latia816', 'lwshc', 'HilariaSchwarz899@nowhere.com', '4544716079', 13, 2),
(4, 'Terry', 'Abney', 'Britt17', 'e', 'Pantoja392@nowhere.com', '9111976287', 14, 3),
(5, 'Elna', 'Abraham', 'Arlyne2017', 'ro', 'Sierra.Outlaw@nowhere.com', '4086472690', 15, 1),
(6, 'Rigoberto', 'Abrams', 'Kilgore177', 'tmvya', 'Mckinley43@nowhere.com', '3629999995', 16, 4),
(7, 'Ada', 'Abreu', 'Eugena1952', 'ry', 'MikeJose@example.com', '9962602957', 17, 5),
(8, 'Elmer', 'Acevedo', 'Ashley2029', 'uuapw', 'tcuaoz156@example.com', '7423677474', 18, 1),
(9, 'Lesha', 'Acker', 'Burge2004', 'up', 'Thigpen@example.com', '0676256737', 19, 4),
(10, 'Michel', 'Ackerman', 'Francisco374', 'k', 'Stahl@nowhere.com', '5824147341', 20, 5),
(11, 'Arnette', 'Acosta', 'Jed1969', 'vpgq', 'resogk6090@example.com', '0926043042', 21, 5),
(12, 'Jerold', 'Acuna', 'Lanny66', 'hea', 'Buffington49@nowhere.com', '3815861245', 22, 3),
(13, 'Susana', 'Adair', 'Isaac1976', 'm', 'wcmaqmty_wziha@example.com', '9319834226', 23, 5),
(14, 'Donnie', 'Adam', 'Elwanda1953', 'ghua', 'Jacinda_Joe113@nowhere.com', '1377520387', 24, 2),
(15, 'Tynisha', 'Adame', 'Acosta2015', 'j', 'Harry453@example.com', '0524671153', 25, 2),
(16, 'Aura', 'Adams', 'Munson622', 'mirwu', 'hqggjrdj.yzht@example.com', '4852760353', 26, 3),
(17, 'Mike', 'Adamson', 'Marcelo566', 'r', 'Fulmer@nowhere.com', '3262781436', 27, 3),
(18, 'Isaura', 'Adcock', 'Bivens396', 'cksgp', 'Fenner885@example.com', '5824067428', 28, 1),
(19, 'Sirena', 'Addison', 'Arlen482', 'g', 'Hinds3@example.com', '5757301494', 29, 4),
(20, 'Michael', 'Adkins', 'Clayton441', 'zefe', 'GuillermoHowell@example.com', '5064943641', 30, 4),
(21, 'Horacio', 'Adler', 'Kendra4', 'tar', 'Benjamin574@nowhere.com', '2110551805', 31, 1),
(22, 'Melani', 'Agee', 'Tad2024', 'jansv', 'Jerrell_Hales@example.com', '7767502667', 32, 2),
(23, 'Heath', 'Agnew', 'Edith1978', 'jlqqb', 'Zackary_Cook@nowhere.com', '3344001739', 33, 3),
(24, 'Gordon', 'Aguiar', 'Mckinley15', 'y', 'CindyGStock629@nowhere.com', '9562218508', 34, 4),
(25, 'Stormy', 'Aguilar', 'Willard1958', 'gzpeu', 'viywjfst.wjck@example.com', '2809681692', 35, 5),
(26, 'Ervin', 'Aguilera', 'Cade8', 'xw', 'Wolford@example.com', '9916434623', 36, 1),
(27, 'Cedrick', 'Aguirre', 'Barela1965', 'anuw', 'DennyBurger@example.com', '6324223327', 37, 2),
(28, 'Adam', 'Ahern', 'Mcneely872', 'flthz', 'RichHagen94@example.com', '0866876135', 38, 3),
(29, 'Oneida', 'Ahmed', 'Brady1955', 'l', 'Floyd_QBumgarner88@example.com', '9405570892', 39, 4),
(30, 'Royal', 'Ahrens', 'Willy222', 'ddhnj', 'JohnsieH.Duncan@example.com', '7454113839', 40, 5),
(31, 'Malik', 'Aiello', 'Austin2022', 'yoeqa', 'GiselaU.Lafleur@example.com', '8018406481', 41, 1),
(32, 'Saran', 'Aiken', 'Walton2001', 'ze', 'Allard@example.com', '7174186121', 42, 2),
(33, 'Alfonso', 'Ainsworth', 'Mabelle17', 'pgjxm', 'Hummel@example.com', '9116655676', 43, 3),
(34, 'Margarite', 'Akers', 'Laverne9', 'nfa', 'Rau@nowhere.com', '9422237269', 44, 4),
(35, 'Emelda', 'Akin', 'Drucilla538', 'n', 'Hayden@example.com', '1421649295', 45, 5),
(36, 'Wanetta', 'Akins', 'Oretha818', 'fw', 'Skelton@example.com', '9310944809', 46, 1),
(37, 'Micheal', 'Alaniz', 'Stump81', 'dxjg', 'JosefaEnos8@example.com', '5748655174', 47, 2),
(38, 'Clay', 'Alarcon', 'Melanie55', 'mwgyb', 'Breaux@nowhere.com', '8249790526', 48, 3),
(39, 'Napoleon', 'Alba', 'Lavonna2026', 'bvwun', 'BrennaKendall99@example.com', '2457920058', 49, 4),
(40, 'Lesli', 'Albers', 'Willian7', 'aodbq', 'Fausto_Garza2@example.com', '4458097077', 50, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
