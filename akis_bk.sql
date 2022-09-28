-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 28, 2022 at 04:27 AM
-- Server version: 10.4.26-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akis_bk`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountname`
--

CREATE TABLE `accountname` (
  `id` int(11) NOT NULL,
  `account` varchar(50) NOT NULL,
  `accountname` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_code`
--

CREATE TABLE `auth_code` (
  `id` int(11) NOT NULL,
  `code_1` varchar(100) NOT NULL DEFAULT 'IMF',
  `code_2` varchar(100) NOT NULL DEFAULT 'PID',
  `code_3` varchar(100) NOT NULL DEFAULT 'PSO',
  `code_4` varchar(100) NOT NULL DEFAULT 'TAC',
  `code_5` varchar(100) NOT NULL DEFAULT 'WPID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_code`
--

INSERT INTO `auth_code` (`id`, `code_1`, `code_2`, `code_3`, `code_4`, `code_5`) VALUES
(1, 'IMF', 'UTA', 'VAT', 'COT', 'ACT');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `cardnum` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `ccv` varchar(50) NOT NULL,
  `dated` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `check_deposit`
--

CREATE TABLE `check_deposit` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(50) NOT NULL,
  `front` varchar(150) DEFAULT NULL,
  `back` varchar(150) DEFAULT NULL,
  `date_created` varchar(50) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT '0',
  `check_number` varchar(50) DEFAULT NULL,
  `ref` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cryptos`
--

CREATE TABLE `cryptos` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `symbol` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `datecreated` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `crypto_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cryptos`
--

INSERT INTO `cryptos` (`id`, `status`, `symbol`, `code`, `datecreated`, `address`, `crypto_name`) VALUES
(1, 1, '<em class=\"icon ni ni-sign-steller\"></em>', 'XLM', '', '5dXkCgbm9KDJviBv8mppNHauMaRDobjXA1', 'Stellar'),
(2, 1, '<em class=\"icon ni ni-sign-usdt\"></em>', 'USDT', '', '5dXkCgbm9KDJviBv8mppNHauMaRDobjXA1', 'tether'),
(3, 1, '<em class=\"icon ni ni-sign-btc\"></em>', 'BTC', '', '5dXkCgbm9KDJviBv8mppNHauMaRDobjXA1', 'Bitcoin'),
(4, 1, '<em class=\"icon ni ni-sign-bch\"></em>', 'BCH', '', '5dXkCgbm9KDJviBv8mppNHauMaRDobjXA1', 'Bitcoin Cash'),
(5, 0, '<em class=\"icon ni ni-sign-bnb\"></em>', 'BNB', '', '5K4AGuGwJjzvTNXNTLMrXkfQqepWSc3yNAiEHhRAZTcpKcKesDt', 'Binance'),
(6, 0, '<em class=\"icon ni ni-sign-eth\"></em>', 'ETH', '', 'wallet6', 'Ethereum'),
(7, 1, '<em class=\"icon ni ni-sign-ltc-alt\"></em>', 'LTC', '', '5dXkCgbm9KDJviBv8mppNHauMaRDobjXA1', 'Litecoin'),
(8, 1, '<em class=\"icon ni ni-sign-xrp-new-alt\"></em>', 'XRP', '', 'Wallet7', 'Ripple'),
(9, 1, '<em class=\"icon ni ni-sign-trx-alt\"></em>', 'TRX', '', 'Wallet8', 'Tron');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_deposits`
--

CREATE TABLE `crypto_deposits` (
  `id` int(11) NOT NULL,
  `coin` varchar(20) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `datecreated` varchar(50) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_withdrawals`
--

CREATE TABLE `crypto_withdrawals` (
  `id` int(11) NOT NULL,
  `userid` int(20) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `coin` varchar(11) DEFAULT NULL,
  `wallet` varchar(200) DEFAULT NULL,
  `datecreated` varchar(40) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `getbank`
--

CREATE TABLE `getbank` (
  `id` int(11) NOT NULL,
  `accountnumber` varchar(50) DEFAULT NULL,
  `bankname` varchar(100) DEFAULT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `bankbranch` varchar(100) DEFAULT NULL,
  `accounttype` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kyc`
--

CREATE TABLE `kyc` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone` varchar(80) DEFAULT NULL,
  `dob` varchar(80) DEFAULT NULL,
  `accountnumber` varchar(80) DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `state` varchar(80) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `zipcode` varchar(80) DEFAULT NULL,
  `id_type` varchar(80) DEFAULT NULL,
  `front` varchar(80) DEFAULT NULL,
  `back` varchar(80) DEFAULT NULL,
  `status` varchar(80) DEFAULT NULL,
  `userid` int(80) DEFAULT NULL,
  `datecreated` varchar(80) DEFAULT NULL,
  `ref` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kyc`
--

INSERT INTO `kyc` (`id`, `firstname`, `lastname`, `email`, `phone`, `dob`, `accountnumber`, `address1`, `address2`, `nationality`, `state`, `city`, `zipcode`, `id_type`, `front`, `back`, `status`, `userid`, `datecreated`, `ref`) VALUES
(29, 'Taro', 'Katsumi', 'taro.katsumi@gmail.com', '+81 8013882952', '00/00/00', '7789397699', 'â†’ã€’106-0031 1003 4-4-3 Ngshiazabu Minato-ku Tokyo', '', 'Japan', 'Tokyo', 'Minato-ku', '106-0031', 'driver-licence', 'GUVIMG-KYCA202208030108-LIPPY.jpeg', 'GUVIMG-KYCA202208030108-LIPPY.jpeg', 'pending', 60, ' 03 Aug 2022 01:08 am', 'KYC-B0IRAN6RE'),
(30, 'Anthony', 'Merritt', 'tony@mcconnected.com', '+14083903358', '12/04/1957', '8132133193', '3206 Loma Verde Drive #C9 San Jose, CA 95117', '', 'USA', 'California', 'San Jose', '95117', 'national-id', 'GÃ¼IMG-KYCA202208032216-R4ZOL.jpg', 'GÃ¼IMG-KYCA202208032216-R4ZOL.jpg', 'pending', 62, ' 03 Aug 2022 22:16 pm', 'KYC-ZIXTIBLG5'),
(31, 'Kayla', ' Holmes', 'KaylaHolmesCosmetics@outlook.com', '(423)273-3747', '10/19/1994', '3907118146', '106 W Charlemont Ave, Apt 301 ', '', 'USA', 'Tennessee', 'Kingsport', '37660', 'driver-licence', 'GÃ¼IMG-KYCA202208121142-EX3P2.jpg', 'GÃ¼IMG-KYCA202208121142-EX3P2.jpg', 'pending', 69, ' 12 Aug 2022 11:42 am', 'KYC-IM5HGLP95');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_maxi` varchar(90) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `loan_mini` varchar(80) DEFAULT NULL,
  `interest_rate` varchar(80) DEFAULT NULL,
  `mana_fee` varchar(80) DEFAULT NULL,
  `insurance` varchar(80) DEFAULT NULL,
  `penal_charge` varchar(80) DEFAULT NULL,
  `status` varchar(11) DEFAULT '1',
  `loan_period` varchar(11) DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_maxi`, `id`, `loan_mini`, `interest_rate`, `mana_fee`, `insurance`, `penal_charge`, `status`, `loan_period`) VALUES
('150000', 1, '150', '4.3', '3', '0.8', '3.5', '1', '3');

-- --------------------------------------------------------

--
-- Table structure for table `loan_application`
--

CREATE TABLE `loan_application` (
  `id` int(11) NOT NULL,
  `loan_amount` int(50) DEFAULT NULL,
  `interest_amount` varchar(50) DEFAULT NULL,
  `tenure` varchar(50) DEFAULT NULL,
  `insurance_fee` varchar(50) DEFAULT NULL,
  `manage_fee` varchar(50) DEFAULT NULL,
  `penal_charge` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `datecreated` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `facility` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ip` varchar(150) NOT NULL,
  `browser` varchar(150) NOT NULL,
  `dated` varchar(150) NOT NULL,
  `token` varchar(150) NOT NULL,
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ip`, `browser`, `dated`, `token`, `id`, `userid`) VALUES
('162.158.107.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '22 Jul 22, 21:07 pm', 'mZ07TsCHt2DUUMEY8ddci7ciVXmfDWDgY1zOaApiNPRWyQLYPVVe6PFQqcPeSJgJ', 640, '1'),
('108.162.246.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '22 Jul 22, 21:08 pm', 'jHLAHa1qEekJEc8bcSghKEa9z0gTn9w7A6vxyvyNV8w0vRH9HJStusQixT6vkMUV', 641, '1'),
('108.162.246.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '22 Jul 22, 21:48 pm', 'DDb6Vx9y3mHfQ1AR1vf58dM9TPl6HnhvNPp4OfjVCetO3o79u1jTrRblGU2FO93u', 642, '1'),
('108.162.246.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '22 Jul 22, 21:50 pm', 'VaMtgY0GKn6D5CViUYskdr2raz9T7hRPBmJLGmfkexKyvKuyfrPjImgjqChUmg6J', 643, '1'),
('108.162.246.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '22 Jul 22, 21:52 pm', 'STP9lfCQnJDvtXvn3zCeyiJOGmRCpPz8aZzXRm1qejENJ51hGR6fhaMJVXOtJ9fH', 644, '1'),
('162.158.107.210', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '23 Jul 22, 05:07 am', 'Pf74ucIHd9toWLf55MLuSelkRCrQJLGNQx8jHNpDC5cYTGTwth8Y9fSlU83VWz6a', 645, '1'),
('108.162.246.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '23 Jul 22, 05:08 am', 'GTjlCMeyYI27pjlWz0GcHiowtuQcYdTT7KJBi6OcRVcVDTJORdxuMY4Z5olRpWW2', 646, '1'),
('108.162.246.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.62', '23 Jul 22, 05:09 am', 'LJGGHe2BAaimkIqvu3Lbgk3WxlEtV9TsznHNsIOixSeN597XkKlQyi6sOAvolc2O', 647, '1'),
('162.158.106.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.62', '23 Jul 22, 05:36 am', 'aL7LN6zor70pVKg2Da1PhuaZiHzLtdKNOOyz41Kv9hrdat3XuPZZQsTGDreXensv', 648, '1'),
('162.158.166.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.62', '23 Jul 22, 07:56 am', 'dfNuy0V0Newebx3TdaqeX3Fu8ZuatLPDnAvOy6sGQJ6cLznkvo9da6Gj4MssyRuQ', 650, '1'),
('162.158.166.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', '23 Jul 22, 07:59 am', 'jTnGA8JqCzOx2FBuzUk5hwl98Y2Q2RPIiI6qms1zWUptJjf9ykfew9fvy9PxcRcx', 651, '1'),
('172.70.110.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '24 Jul 22, 02:36 am', 'XICtb35ukZLnmdojJujf06RPnUM13qBYVkncKVHeDHac8kvm9JfucS2MObrIABf9', 652, '1'),
('172.70.230.139', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '24 Jul 22, 22:52 pm', '9420ud9RBvXT2j1piVFLKdlwNdOqpVkb9OHZortwLhGkoag8aCkzvEKNxnMFOHUY', 653, '1'),
('172.70.110.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '24 Jul 22, 23:24 pm', 'ZYrtZ9AOvf114JeONczoFJY3n8BiN5F4Ah71uREEREZ9kPaKJfZADf8acvXnuwpYjWtr', 654, '56'),
('172.70.114.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '25 Jul 22, 00:31 am', 'mxAM8VLCGyT2W82uB3sMWQzIYnCWsGMvCpowe3u9WSy9IXWG0VZe1PJuvAtgRDKNMZ2s', 655, '56'),
('172.70.114.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '25 Jul 22, 00:35 am', '589ycEpBiUnJc6ugdqa8YRQ5nZUwj7Nm9OvRy8cIEz7T7iwjIf0CjA9yAqOv0XXF', 656, '1'),
('172.70.114.169', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '25 Jul 22, 16:19 pm', 'ArVdve1k17ytUiPlpR7qhrtXT79EV8yvsbNjmYYAT9pSG1SCfN1RC2NYdqNPVtUz', 657, '1'),
('172.70.114.169', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '25 Jul 22, 16:30 pm', 'PvII8SqCxIhVtXGj74Z8Vc5TMlB9QyqjcjSpBdQWtJJvpNLf2IsUeF0z19u39k8MWGEc', 658, '56'),
('172.70.250.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '25 Jul 22, 17:18 pm', 'EpcvHCGhG5NzwQBsp23fNnjiF4ZsKimaIwdDI3pzmuhKyT9X9Qe0RJwahnQdxh77', 659, '1'),
('172.70.230.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '26 Jul 22, 22:23 pm', 'OsBRwPZby6PaOiQ0EX3u9SPWnKvXyoDSjH0nRgkTDYU81hO5BYIl3Fjw9fLJlUjV', 661, '1'),
('172.70.230.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '26 Jul 22, 22:25 pm', 'b7csLwyHvDRbBPbGFPSesl6lxnx7pH4rmrdQJ0DStsliIH6N6kveQomb99Fm6RJUSmt8', 662, '56'),
('162.158.62.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '27 Jul 22, 12:06 pm', 'qUg7m6BjTsKkbvnMeSnw1re4z5HQM2lQbMWuOvtcpnqvKwiKl25LyjVgYpq9iHw2', 663, '1'),
('172.70.230.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '27 Jul 22, 19:12 pm', 'p1VX0PlNEVUkDlJnItB5BjqBdxd1C7q2HwWxXOGxlKoIXOBVRUWz9QIjvND7fW4YgLkc', 664, '56'),
('172.70.114.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '27 Jul 22, 21:30 pm', 'PRS7rRnfFuihX17lde6pmfEffPe995snL1yKCNoN6t5ISULWUccmgzZSIvS8xIRd', 665, '1'),
('172.70.42.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '28 Jul 22, 17:44 pm', '6d3xkJ2KBd2z04aglQUz88uHwuaBRABWwq2C16m8BoAG3AEaTU9IEHbjJlvURAyg', 666, '1'),
('162.158.62.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '29 Jul 22, 13:08 pm', 'vEGwQuanP4E6TltLnWkvW254OYkCxdLteaYw7sBNT8vkMbC929I0NfDbW77gJ73s', 667, '1'),
('172.70.114.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '29 Jul 22, 16:03 pm', 'sTPYqh48RGqLkQVmiRDi5OePdyxshrIiOnAMDbbZ0LG5OSKc5jTpTcs5vRAIJp19G6jG', 668, '56'),
('172.70.114.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '29 Jul 22, 16:18 pm', 'lXvjdALbWbKFNvJDH01Nda2W7C3JLGRRdFTQb8dh3uCK7i8O5UUOyKi3RnXepuy7', 669, '1'),
('172.70.114.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '29 Jul 22, 16:31 pm', 'bwTeH16H6KEALIqLtmQcvuuyOj77qeCcF1V9D097xsOjFSNezO35edJ3gOvtTojH', 670, '1'),
('172.70.174.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '29 Jul 22, 16:56 pm', 'oQKWFLwZBR4rN8OIQXBXEvCeUau5BgyVmivg6c3QJyBRL6HyeJjSKMBBBBfHknJS', 671, '1'),
('172.70.114.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '29 Jul 22, 17:42 pm', 'SFsNsnTahQc6MTQmjQnbh8AyXPj5f13FKLtGbZhmviEcUQm9Vvh4kshmD3khmIca', 672, '1'),
('172.70.174.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '29 Jul 22, 17:53 pm', 'bbQ2cva6xFXhGz7V7HUz5idojuxgMBDCx69RyUvBqFJXnVc2F9XG5Mymez1isIcg', 673, '1'),
('172.70.175.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '30 Jul 22, 00:25 am', 'hm3HW44ie071boNUHe9hKoRdQIoQB63Up8SyxQBThwGvX2Tk64QeCVhjl0hEtBrd', 674, '1'),
('172.70.174.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '30 Jul 22, 03:57 am', '9u26mZqMf6vYl1X080sWpNtgzlkUTiL79Y8NjySJkiRGc0MCuucyDjYpfootnBQX', 675, '1'),
('172.70.174.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '30 Jul 22, 13:09 pm', 'FfpdUvSky8HMpmRMPV04JHD8UjR1ztt4PZIdAMYUVHIC5IiSupkCRNWziKbeEjh1', 676, '1'),
('172.70.174.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '30 Jul 22, 21:37 pm', 'nVQh4Byyf6wNWTAIrLYE72oVlD8Sv6TW8LeMm4WjBNNzaPn2zu6wowrcuznQmlpA', 677, '1'),
('172.70.174.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '31 Jul 22, 13:54 pm', 'ey39epeTshUBGjL2D2B87KlWq5megkJGrEfEH4cFHDrPGTe5GtXi24eVV5HYCKRi', 678, '1'),
('172.70.174.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '01 Aug 22, 02:17 am', 'wkTgccMQcOgIPwhOCaETrCQWGfUX43dduVPKIb8bMe8Iql55rVVtkZegiVHAZq2Z', 679, '1'),
('172.70.134.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '01 Aug 22, 16:34 pm', 'TdMeH4zutzOa72fhkFj8VbQ9ISEmiLzInDWbnx1eTY3zAIXubLnKnnjlAMjWM0l4', 680, '1'),
('172.70.174.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '01 Aug 22, 20:29 pm', '3W8uazF0OfZE8Nd8tnARwpmQiYM4pc6Df3FIHUaKjH14u3gYHFn0T5xiqfd412a9', 681, '1'),
('162.158.146.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '01 Aug 22, 23:29 pm', 'zP6eZmffxzyr7GFkFEvYC9sls0a96opqLHwyaiakMmH3sDBlaHvwlY5eCND53kUkiqfo', 682, '59'),
('162.158.118.123', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1', '02 Aug 22, 00:12 am', 'lDNyjUNd9yqqEJAjFZhNUKbJMjxLAtTK2qJYW5V4jdMsr6HZMnIiqsHyPrDXCHygnDHh', 683, '60'),
('172.71.146.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '02 Aug 22, 00:13 am', 'b6QFEougkpkexOgBidML3BkFXqwz0mjPwHtMR8cmHXL8E5DtNRIt4D9mey7MECxJ', 684, '1'),
('162.158.118.175', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1', '02 Aug 22, 00:32 am', 'X73bKdrM81zZKQoqm0b1S7o324m2RpxuuKDFRYZn8XxSpbhb08NrqLFZCKD4eMnUpRNF', 685, '60'),
('172.70.175.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '02 Aug 22, 00:41 am', 'csUT7ASNf0UpzyC7plJOG3nkf3Tv3WQH7TlVWbK0w6GPLZRtok2p8dPTrM7WVDicMDuc', 686, '56'),
('162.158.166.15', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/103.0.5060.63 Mobile/15E148 Safari/604.1', '02 Aug 22, 01:31 am', '60VYI73vInXUX3JLoB7UWF3dVK9g1ben2ZXwgZPistRE0YwJGZ4Fg76Da0QgsC5K8uNP', 687, '62'),
('172.69.70.31', 'Mozilla/5.0 (Linux; Android 11; LM-K500) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '02 Aug 22, 04:34 am', 'EeUYrOTLmtk8fT8wch2WMmRIYrtNNql9ZVlWiE5GZUp3EPjP1iwXahmuLRK8FF9O2BJl', 688, '61'),
('172.70.210.239', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/103.0.5060.63 Mobile/15E148 Safari/604.1', '02 Aug 22, 05:03 am', 'uGJEBgz0PY6P8Witmf6utVOZ66A1xxi4uaKqxgTpnVNZC50aVGjDSnTt0KijjSqsXGz6', 689, '62'),
('172.70.122.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1', '02 Aug 22, 05:21 am', 'miAGVEtWrH43vgjOqaUXaLvrb5bE7KlhMHBbkAHsdW8IskihdH6TSV8jtTleFp7dSCl3', 690, '60'),
('172.70.122.91', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1', '02 Aug 22, 05:23 am', 'Hvgvvh91U5DqLmcNKvvCL0yyV43DeiJAvJHSFzTpo6tGwzzItfiHDbBPuhMZ8Ua1hVYA', 691, '60'),
('172.69.70.71', 'Mozilla/5.0 (Linux; Android 11; LM-K500) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '02 Aug 22, 14:21 pm', '6ZZPlegpDEqC3H5SkJDr4mAc9WODjPzowpomNDkWCzt6WlHMkYrVv6Wlv5jkisiTCKkL', 692, '61'),
('108.162.221.191', 'Mozilla/5.0 (Linux; Android 11; LM-K500) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '02 Aug 22, 15:39 pm', 'IR2KS7xk7d43WYjKeXtwjifiwt0kGr0maI4wTO2gG34ou7GHOI7FJKDsNQLkvUlnJq0k', 693, '61'),
('162.158.118.113', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1', '02 Aug 22, 15:42 pm', 'iXwyEKQB9akZmb4XGJNe5rbelo1Qfp9f7OVXjLPEpV2T5lZyZWmvuGJR3k6u4ULBjKhl', 694, '60'),
('172.69.70.31', 'Mozilla/5.0 (Linux; Android 11; LM-K500) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '02 Aug 22, 16:05 pm', 'IuddjuRNqsONBIOxBJrQMAncECJ6tAHVICph30l5blW6uNTEIUFvqK4HXtKqrlBW8RhC', 695, '61'),
('172.69.71.63', 'Mozilla/5.0 (Linux; Android 11; LM-K500) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '02 Aug 22, 16:59 pm', '9qj1hb4hz0SBspriRghAtoDrVrksXOKCBhebwZ8D0EOqlzg0n71I0My0fL0YxTvJ2j1S', 696, '61'),
('172.70.175.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '02 Aug 22, 19:28 pm', 'bLLdltPKWr0s5Bs3JkbEYvUo7R4KEw4VEhHLbmvOhSph9bmb0HTQKyKSnTRPoemA', 697, '1'),
('172.69.70.117', 'Mozilla/5.0 (Linux; Android 11; LM-K500) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '02 Aug 22, 20:04 pm', 'VilDOn1oDDZHoLGo4yXlepIWLR0K1AsxGEdK0DHvdQ4MCZN6RcAGnMrETYcwdIWHCBpr', 698, '61'),
('172.69.69.12', 'Mozilla/5.0 (Linux; Android 11; LM-K500) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '02 Aug 22, 21:30 pm', 'ig8cLUjdPidPLseUmlnKgwab4vntEYEgiUGcgA69eMocMK6bLMJWeht9RnuMIelfGj4y', 699, '61'),
('162.158.118.127', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Mobile/15E148 Safari/604.1', '02 Aug 22, 22:15 pm', 'x7XeEFvLXRK1xBhB9IXyk6PJs9exvdhcIFx0SNvJ34O2nFmg3jAD7x7gotiu2b6dtMju', 700, '60'),
('172.70.122.253', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', '03 Aug 22, 00:41 am', 'supPg3eYaLFdE0GIRQJj2F9jdNrPlEv28p6EduGZ2yKjrnA1bxLWOFp5HmOIbbTj7HFs', 701, '60'),
('162.158.62.27', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', '03 Aug 22, 01:03 am', 'b7dQq9bflENbP6Q4st5mfiKSccp2AKvZR3bHUlvnJ8fswBYo0RsOXM4DJnJNOrwVBmJz', 702, '63'),
('162.158.146.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '03 Aug 22, 02:41 am', 'tiL0QCmcqE24uJGgDaNq8nyr3Nn0e1SHwzI3vJL0uvUAJlTeXAUXoJrCUqeU3DmsFkNU', 703, '59'),
('172.70.222.237', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Mobile/15E148 Safari/604.1', '03 Aug 22, 03:53 am', 'k6wLMNvz5R209oM3170kGIiE1VT6TEmQ5n1kCD83edwzRE4HhmVGuWiEFXow4r8pCUEU', 704, '60'),
('172.70.223.12', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Mobile/15E148 Safari/604.1', '03 Aug 22, 03:57 am', 'kPSHghIqTI9oy75U1YIxQgMJuMDhrB0WM9FellozbdAUkCkj9uahTQcybRcUPGD8e4A3', 705, '60'),
('172.70.222.247', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Mobile/15E148 Safari/604.1', '03 Aug 22, 07:54 am', 'K4iaBMDQcZc3q6VCR8nhFCApos7zMOjHZnRIM1H3ybCesiahrZf1lMQKLMQ0qEOlKJV3', 706, '60'),
('172.70.134.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '03 Aug 22, 08:47 am', 'xF7tEGs5Vw7ujh4gn5qyYOEsU0NtzaOAbNYJzkQxudrk2JAQcIawKS453NdcsGDz', 707, '1'),
('172.69.70.71', 'Mozilla/5.0 (Linux; Android 11; LM-K500) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '03 Aug 22, 10:17 am', '65hxucxag91pv1K9LHEQd6cVe6EHTiix4MfFpxwEOX8Sflg058LnBmJTXdxgHxq5rrbR', 708, '61'),
('162.158.146.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '03 Aug 22, 10:57 am', 'gEmxNkNcr3BIoqFXQHDkJoAx2qxhbCXUp3MHwgcCwKd8oxmleSlzQj8ghYm9Ga2B260v', 709, '59'),
('172.70.114.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', '03 Aug 22, 11:52 am', 'gYLwsdzLBvu4x8CiMLkTvMBJopQWDx2dEADXaRdM11ICGW965VzajGp7cvciDabUAHTT', 710, '63'),
('162.158.146.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '03 Aug 22, 12:27 pm', 'Qb2fuz9hKUb7QyaRxlNjBEWXNOfhSJnIrR9j7uq4ZJB7KAwYRIkXodxmGMCxXH0g7w6K', 711, '59'),
('172.69.70.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '03 Aug 22, 13:15 pm', 'yvttARd1M2MJZplC2SFTkAuiMo5dL4aVtpkPEqgEEHVr5Fi0yDJxSIJAbWE1d7WVgmui', 712, '61'),
('162.158.118.175', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Mobile/15E148 Safari/604.1', '03 Aug 22, 13:31 pm', 'tSo9QY2rZAfdlAxAYYbKJ5NBIL4VNDe0hZkK7Uw1uzf49Y3a9Wpo6kZ1iZrq0ifJ5rYy', 713, '60'),
('172.70.114.169', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', '03 Aug 22, 13:31 pm', 'MKnu3Gk9VSngXfJy7eNtKLaOfH2LkXmmjDkYlhUE9pGtY10pQumhT9klszl3zEKt60AG', 714, '63'),
('172.70.175.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '03 Aug 22, 15:26 pm', 'thiKeLNNBP8lFRnmhrD4lt2ZH1XxrZu3pdX1PYT7pI1T0kfxMlk2kuY9GZnSWP4A', 715, '1'),
('172.70.178.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '03 Aug 22, 17:04 pm', 'IhlMcWTsvGuFzxhXJUhsbwDwQEcftckJXnDRdKHYO7vaNIvaQ59RAR8nhRbMv35D9QzG', 716, '61'),
('172.70.178.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '03 Aug 22, 17:09 pm', 'eFyDeCiH3XPu9DFAE4ADb7CTymxERjja0AhRWpckHAeD9aEOKbAcUgoZ4TMXLH8L883K', 717, '61'),
('172.70.174.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '03 Aug 22, 17:38 pm', 'Q8000jHgNTfb9h7tK4OjdNWzsmWQ01kNX4r8aUhermegpXJUESG0ELGT6yyzP2YeeK7Q', 718, '56'),
('172.69.22.95', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '03 Aug 22, 17:58 pm', '3eQ9QTVzvtnFoXkAJ4TVcMgOC88xLg5DHwukKgzraPNPSYaJMzFb4a1suy9f9ZODU7zw', 719, '62'),
('172.70.162.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '03 Aug 22, 18:36 pm', 'YAw4mHcU2smDSdRWqwzJqnKQmqCVqR4MsiQZj5MNkwK4dhynVCKDFfrAz2R9GhrN4M51', 720, '56'),
('172.70.126.3', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '03 Aug 22, 18:37 pm', 'ehFQhJgPxAnOhUA81AofgTjZdIOUUfKVJF6bYiB4389QzEpIibybXHL1GjWb3ukZcoT8', 721, '64'),
('141.101.76.247', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '03 Aug 22, 18:50 pm', 'ZRnoJRDtrdlQmp9lw9VMxDYbn4IMmpofop4Ns2GckvbKrcNFN6poMWIA3Na7NfWzdYCP', 722, '64'),
('172.70.39.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '03 Aug 22, 18:52 pm', 'y57VAXyBwvITW7IQU3Gnc7hn1QaFpLXMFfLx8X2yUO5jHp0sHeUPPG3jUxP6rzQ9', 723, '1'),
('162.158.166.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '03 Aug 22, 19:49 pm', 'WFQdqJnfBLZ5HRN5fEsSB2h7yunimyWm7eD0UycwTbQZjGKoOk5YUlupo3g5Hq0DPyrH', 724, '62'),
('172.70.251.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '03 Aug 22, 20:09 pm', '90HkyHnCt2envsEXvhBQpA7PoKC6nS03cf0YDbTgPymCMNfFaZp5TJmAHP3SbTEq', 725, '1'),
('172.70.134.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '03 Aug 22, 20:52 pm', 'lmCplSMQxDMOh5AhOJvpE8YNHIdFEHRHBWuIhyWQgRjm4nwDuntbVZXMybbLjbYf', 726, '1'),
('162.158.79.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '03 Aug 22, 21:00 pm', 'UhU9zinMQEBxUzGZVxyPfvYaxpZi4U7uiByQnuD3i84aqx26jSVWsDuijF7HUutqOtR2', 727, '56'),
('172.70.126.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '03 Aug 22, 21:08 pm', '9C9TbnFSV52vPtifKSYWDr4Km9swBGCxjYQcgJMGQ9Q7WkUY9yVMGtECoafzGPtesfJG', 728, '61'),
('172.70.114.47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', '03 Aug 22, 21:19 pm', 'ZTJAnlgDOGXfLZ3gaJ1rdQC9ot9B9RrZOvSjWgPvGomkyHFngYdAILbArBHRnj6prpfW', 729, '63'),
('172.70.131.126', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '03 Aug 22, 21:32 pm', 'WdPQeMbudJV7tDAPO5LwVN6c2Mw6Or1bkRST5blbObFHYMbHCMBttzL5wdCpwd3IrHrk', 730, '64'),
('172.69.134.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '03 Aug 22, 21:41 pm', 'lAYsPZl5jLWMQN9kjySnlH4t4OVQ8WjQmxericfxQp89Cneqwq1qxi2IB9DVo3MZbz9m', 731, '62'),
('172.69.22.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '03 Aug 22, 22:08 pm', 'Sx88cO4MZPgm5QaxX603vLkjRobmB6p7bQopj5o86KED6zxgo303hzRSEFZXlkW1YPeV', 732, '62'),
('162.158.146.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '03 Aug 22, 22:45 pm', '2qNHxPsZqy6y4i97ATIKcvY20NuU58pPNI4kazbNwJ9JYq8ciX0gbmSdAFM7iTbR0UII', 733, '59'),
('172.70.214.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '04 Aug 22, 00:56 am', 'jLNAb7OeD0bNEDeEENxz3sm8miYgm99RwED29o2HEpvElqHu4yesneIdg6LpG0JIZqnw', 734, '62'),
('172.70.222.247', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Mobile/15E148 Safari/604.1', '04 Aug 22, 01:27 am', 'N5LffGmb27KBniwUP5jKMg2u49jIZD40HCpzzy6PIGYKngb0Ukog0EcjjACem1ZFuqsy', 735, '60'),
('162.158.146.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 01:39 am', '7hN4Go7u9HZj1UKPAFVgexsHSVqxfoKBksv2jqutoPdO9wZSJtsaehtH3CSqddaONjiA', 736, '59'),
('162.158.118.141', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Mobile/15E148 Safari/604.1', '04 Aug 22, 01:55 am', 's8DA2P4XrM33dFi1M4shT4RHsWn28wps35gFELeUv8Xwtm9AY46OXtVMm06GoojBGLWw', 737, '60'),
('172.69.134.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '04 Aug 22, 07:38 am', 'HvMvb0Fq9MGQBPfHPC3iOrjFvJUYFC6Eyr9bnDziAFMj222qe2z8O08gGSxgJRiqdz2b', 738, '62'),
('172.70.214.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '04 Aug 22, 09:21 am', 'qJgTcTOg303R81gmYJks8L5Zx0ByBPeVyQqUI6PanqB0rVQqQCrhGw1pTFxv1vv1laG6', 739, '62'),
('172.70.122.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Mobile/15E148 Safari/604.1', '04 Aug 22, 09:53 am', '1lgsTHchc4s1WgmFObidaAlYL3Ua1cTXloFIjsV1j2si2bRRsFtSzCMoPXUi9nJpUzNx', 740, '60'),
('162.158.146.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 10:41 am', 'M83fSFNoOeWYW1pEAPGMO5M5H1P7LFAWF0v32Dc6PD3N44crVw62TjTT23NvO1PUUFt1', 741, '59'),
('108.162.221.191', 'Mozilla/5.0 (Linux; Android 11; LM-K500) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '04 Aug 22, 10:45 am', 'JZY1oXVdzbenivE49HkmXKgvHWb7HQjSs2LPo8lJN9AxFQBbOlMPFvAU8qzFtXe8dSOZ', 742, '61'),
('172.69.70.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '04 Aug 22, 11:12 am', 'dEz7tDNuB4msxTn9QFR0FTcKGcOAZKLG45sa3Y9wDuoBuFmqxSzCl1UcW6bqG7AGI91f', 743, '62'),
('172.70.114.137', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', '04 Aug 22, 11:16 am', 'mX73K0JPhis8fMzP8CUGeaGgMwYjprDhGymy1GHvxIlSdN665lEOusOzIVT7zQQqIRLY', 744, '63'),
('162.158.134.179', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Safari/605.1.15', '04 Aug 22, 11:25 am', 'S7Tg58JoSL96EtDUdKwIu2b2oACmmXy1NPhIEEcVgeuBmYPrux9fdhMghezgZagkOXkH', 745, '66'),
('162.158.146.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 11:44 am', 'GMaSlMVrpXd9JTBkekwxtK7kfwCAZwrYSHnBIsOXRvxMmEUt2AWlM3RjBwhOJFfn1VQR', 746, '59'),
('172.70.174.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '04 Aug 22, 12:07 pm', '52GaP1mgxuYq1Y6yD4auVrzV7IcUaCeceKaY19jpbqi0DjRNW4wIx5NqLXwapAMJ', 747, '1'),
('108.162.241.241', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 12:22 pm', '0GRib5Ag3dW9Qtp115wrMBRs0D5Ysqr1cYL4xcODaNWisKd6LN7FbFpUe5VKWEL8', 748, '1'),
('172.70.222.251', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Mobile/15E148 Safari/604.1', '04 Aug 22, 12:49 pm', 'yvRsIMNOjg6xu4SlgCyPHBDbxnAzDU8xlwrhjwRsTxbUe7pXcGiK2vhS2DcmjJDcaqTe', 749, '60'),
('172.69.69.24', 'Mozilla/5.0 (Linux; Android 11; LM-K500) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '04 Aug 22, 13:14 pm', 'zUw92v2sX307kRvoBYtHei3NwTgrylGGlecIBmrNWIKRADCFv5DmOLQbxwDHkQqj0e0u', 750, '61'),
('162.158.146.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 13:24 pm', 'BH6WCPYlnjMDW0vRgleLwB8lU5HyvpAmzwrN7JfYq2TrHzCvVSbIcFASBViqMWgYZIfM', 751, '59'),
('172.69.134.155', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '04 Aug 22, 14:01 pm', 'gUQoa45a80hjufSxLTSNUr3Lf0evLdyIX1Afsja1Xgj1gaQKfZVsLufBY5oOZ0lCotNb', 752, '62'),
('172.68.118.133', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Mobile/15E148 Safari/604.1', '04 Aug 22, 14:55 pm', '30hWlIrwb5vIcyPadvu6ASQ2vDIySgQ0lVrSIKv6ahda2fzDXaSuOfeArjB2DtHlgR1s', 754, '60'),
('172.70.175.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 15:12 pm', 'KbV0fLjqVnTvWLF0o0pqF1F4SppVUtNRbhwqwe9rnn0EuXt2s23hFmzwDLCHehFP', 755, '1'),
('172.70.175.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 15:25 pm', '9bq6b0KNvx9YZ7T5dP0xvrE2Z7acrD0HGZvkmN8C6WUMUrZ3lQ4IZncQmnP1qcijSzUT', 756, '56'),
('172.70.131.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 15:59 pm', 'aQg87vo3VOTh5EmDQiogpKoZ3Z2PJB2S9fiwAj0feqkN6eX9fz61DyMp4lJ05tjeBOrp', 757, '61'),
('162.158.146.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 15:59 pm', '18DMENU5H7WOxhf7ldIRfQbJ1McNo5UE2DCrtG7LyCo8M1dUoGabUxIvp1zCUU8D7fUy', 758, '59'),
('162.158.134.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 16:21 pm', 'V6TgDnnacUmbkAraErVBFcOiEtOGXVBeYhQv0x1otKXEsxSb8EX0EXjA6evRBSH5uQXX', 759, '58'),
('162.158.146.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 16:40 pm', 'n9EKwgf126jRhQl6FySDKOGMvgG5HnDl1cqsLwsR07fisf5XOa9MD8b1jxVEZE2b4cP5', 760, '59'),
('162.158.134.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 16:55 pm', 'OSHVDMwBRgJc1Tl7VS2IRyyuiZbjTUMIo4DKcAK49Fu6jbJtGySxEHEgr3rUzcVgWmf2', 761, '58'),
('172.70.174.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '04 Aug 22, 16:56 pm', 'bxaXH6sjKqp1hGeUMjFSw7KEnHLHt9WbquBkkWJVqZWAEynvdSk70osGo1efE58hgkp5', 762, '56'),
('162.158.134.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 16:56 pm', 'OHNUfAaEotDq8RfgaOO1tTHyXRiH0XlXLyQHQk6ITbJf6eGXBtu2t8ZHWOfUPDqvACW6', 763, '58'),
('172.69.71.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '04 Aug 22, 17:04 pm', 'xeh0kecKXxM9tMXsFaUyhdHfZ9B1cEEsPAsmRoKSty656Gu03QOjPWhl1OAibkDsF7dA', 764, '62'),
('162.158.146.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 17:06 pm', '6b7684JhQVfztG4E2Ga7EkgX5qcLSrEIbLgfIW8dyrEZl5rBdYFJpRSsQtkhYk0hZT23', 765, '59'),
('162.158.146.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 17:25 pm', 'oNy7MmD6hUW7BB6zOdEkUzgsyWAgzH8UmQ3Iy5Ba5Mc9QfgMNwe54JgRukVHxA7gyhqU', 766, '59'),
('172.69.71.63', 'Mozilla/5.0 (Linux; Android 11; LM-K500) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '04 Aug 22, 20:17 pm', 'SbY2mz3CupePARkyV5syIZqVT26hoIfXcg09KxyagpaSkCpoxHLeoPiILTGwXBeyvkTc', 767, '61'),
('172.69.70.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 22:50 pm', 'CuZxHDeBfN9FMEvvzRZBROI3Uk2lY2kJppVV14bqRcA2KEUnw52EDm3lY1NhlS119grs', 768, '61'),
('172.69.70.31', 'Mozilla/5.0 (Linux; Android 11; LM-K500) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '04 Aug 22, 23:16 pm', 'viJZcLiaED55vubamojYn3axb5laHTMriSRroRt9G3H8jW2TBDtQGGXZr3q8raEVpc2K', 769, '61'),
('162.158.166.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '04 Aug 22, 23:25 pm', 'ctDjECqjO24MhARkUYpg7jl78RMRR66ug7hbnKG3Mm5bxaPIH4ZhvFWvSc1JBZ6kCE7k', 770, '62'),
('172.70.214.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '04 Aug 22, 23:27 pm', 'p4hUVW3otvrVBaestaZotjPqlunK4UNaP1K4MFjgzk39qounu40xap7k5xf2GfcIMowL', 771, '62'),
('172.70.214.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '04 Aug 22, 23:30 pm', 'JK8YkmFRtmjWmuxFBZmaHrNWbcJHqJ34lKP5Etsq5AivuGRE905opd3p9tgbq1I9EYiV', 772, '62'),
('172.69.22.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '04 Aug 22, 23:39 pm', '2Lrnl3DwBOmQWq6hMrdmPZIXb6LM9iXGN4kG6QcQZ9gwbmkAzAYDx0EFWCsHxunev80s', 773, '62'),
('162.158.146.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '04 Aug 22, 23:45 pm', 'sy6hPPRQOA2NKWCiJYkzkdWOqwbbVfeKYBhEArGdpO80zmLX5YdsVu1zHmsYFJkyd7Gk', 774, '59'),
('172.68.118.135', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Mobile/15E148 Safari/604.1', '05 Aug 22, 00:11 am', '31by9e03vrImOJqMOO8e9vcofbqVF3j7C8c76BI0CwAc8cG4ZtEm6qSP2W8xPEaEHpcH', 775, '60'),
('172.70.214.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '05 Aug 22, 00:38 am', 'MWXRGsx6Gqim32cYyarqf7r7oY0ug19QtC9mzSqdicsJR9h7QKYZq1VfU34jsvbaVL7l', 776, '62'),
('141.101.77.30', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '05 Aug 22, 03:17 am', 'ug6HJXakfAApg0V9dcHddNTkRhNrjM6M5sTE3rJmCz99fJyiUOCgL4KxLmGltN5TZgDR', 777, '64'),
('172.69.134.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '05 Aug 22, 06:02 am', 'Rkubvux3IBBrMajg1XekzPmHeELGXjlqgXbgUkTOsNGV81YYpzXpPZhglitx6lkX4ZsS', 778, '62'),
('172.70.134.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '05 Aug 22, 10:07 am', 'RoydoHm64czafbd253sh5uyy9exanKjpGME1VcHVHDtYGnBgWuoX7aljOZfXnSgo', 780, '1'),
('162.158.146.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '05 Aug 22, 12:10 pm', 'NzDQpGexNO0z2sKv764bo8H0ZHgEoooYmgntt6dQmB6mwoQmX0uziWQEBLyMr6vwtwAE', 781, '59'),
('172.71.22.73', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '05 Aug 22, 20:15 pm', 'ACbugH5lSzN8njlEJ3tKSJwEAbEBtD9JwQZmjfeBpHTNe7pqkkxBKEj3wMo4Fa60ZxlI', 783, '64'),
('172.71.22.73', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '05 Aug 22, 20:16 pm', 'OClLHX0qsAYx3QPR8wK7ace4G31ECZ9xTFsfQvcpjKlvfSKxoSd8Gbqoe7uQslUoxxxD', 784, '64'),
('172.70.131.112', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '05 Aug 22, 20:18 pm', 'g2mcyR6GWBtLADELJxzgfnMx3X3WVNAVcVlOSXIxlMWITINZohHDlOTR553Ih26MtvHo', 785, '64'),
('162.158.62.53', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '06 Aug 22, 02:39 am', 'GufJo8olDqHNhUoIgxNthw8IBPAAn49AmtPz83N7YVln7vU1bHuaEgOJO6C35Xq4IDOH', 786, '64'),
('172.68.118.129', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Mobile/15E148 Safari/604.1', '06 Aug 22, 06:17 am', 'NkHyvhSfo0zXCbZJLcLU5Szeec1NhFdBQh7ksT5kYHXmo74MnQZ0s6t7mASuGebH4Q4I', 787, '60'),
('162.158.146.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '06 Aug 22, 19:15 pm', 'k9xvSjYffZM3OpH5DsvpRuV8PQQsWTT9yCNcfRsRvpEsVTch5GKkHkrFbBLqU0FaMnyM', 788, '59'),
('162.158.62.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', '07 Aug 22, 19:54 pm', 'u1PWQvgs5LmG2cw03s09ZN48BWFIwAEsp1XsO6mn3eFGeJlIFPIQTq13mJX0Pdi9K9lM', 789, '63'),
('172.69.22.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '08 Aug 22, 10:39 am', 'xkoYlmncKt3DphJpYcTH8lQyIRSrNbAUHAmJVVKHLjAapbl2MQ7gtwlq9nZGoadQnJHK', 790, '62'),
('172.71.22.73', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '08 Aug 22, 16:08 pm', 'vSo1h6aRKZdytZK61gdYvQWJxH6Np4NIM6TmA7nMeh6Z4ulzUf1nG8xnCbBVYUsLiacE', 791, '64'),
('172.71.22.139', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '08 Aug 22, 19:36 pm', 'kHuj1SVcrb2TwoVsbz4sXRWs0PJWmTntikBsGGJFiGBGjGIiKqMflh7xVOlCnpYRfm1A', 792, '64'),
('172.71.22.73', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '08 Aug 22, 20:07 pm', 'S2hVQTBkOWlDagYm74macczMFOonmjlJi0wtUzbafsj7Koi1Eq4puOkC3K7LgUqCPhIc', 793, '64'),
('141.101.98.193', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '08 Aug 22, 20:39 pm', 'IO0cm50kCnAR12nCHqRXhcUkdeNQMiWYuNtUhU2Wa374cZ80X8jrOmrQQPYfVv58', 794, '1'),
('172.70.131.96', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '10 Aug 22, 12:43 pm', 'k3Xr7tEIfM19wejWnLnEUZD79CpH6OzdjcPgOyTRvWoslmHXzF8Eft5VhFQIoY8xfp8R', 795, '64'),
('172.70.34.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '10 Aug 22, 15:18 pm', '46nKrdZTfqyRSBweYaotevjQfrAKcmcxFwlh3J0EbdxzhxrEk5H33kTWMexpQN7i', 796, '1'),
('172.70.247.36', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Safari/605.1.15', '10 Aug 22, 15:39 pm', 'wfVIgmbHrwzlDRDOjGwKf91k51wFnyzDMPyiNfRVb7VMetbkiGmHH7nNen7AbVJ1eqzE', 797, '66'),
('172.70.178.189', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '11 Aug 22, 12:34 pm', 'KgjGRpYkkca8HwXQPBtwn8Mt0Gx5qbktQQuIsLQa53Wjk2EFXDTkJ5IWGvLWqVSlDroE', 798, '64'),
('198.41.242.75', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Safari/605.1.15', '11 Aug 22, 13:17 pm', 'gukl4uN7t8ZTnHdzNymNOotqqAMch5VM6ePnc0bz0H3IaRb1nWdWfnQmRToKlTsTKdZQ', 799, '66'),
('162.158.62.55', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '11 Aug 22, 14:05 pm', 'z8Qj4UwtO8hfj7Cz68is6SwI0QiopYmqQiS3PmO0WCVyqHyBMwQ79tjzJgrqxbbNKYzn', 800, '64'),
('172.70.90.205', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '11 Aug 22, 15:10 pm', 'tRqhenc9LQkjg6M6lK392jTiFMy4OcI0vdxrcY5jPsKsTdusoexzc7uQxgfBvA3E', 801, '1'),
('172.71.30.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '11 Aug 22, 15:43 pm', 'xfDiuppdWCRH9KrajQf58MQrtMCaUIzhDZONu4kSKJYtEpmqIQby2jdzy2OzbtrWoBGJ', 802, '70'),
('172.71.30.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '11 Aug 22, 15:44 pm', '1UJRhF1kUyuHMk66O13XLLSRoFeyY2Zmv3q654MqJaVTCfGqsxm7Ud8KxW2iLM0ZYrJK', 803, '70'),
('172.71.26.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '11 Aug 22, 15:54 pm', 'lK6rkUE1PAMjk4CM8h8uQ2IU5SGbzQ7LUcFiEHxcx8ODFvOpFVouQWpZfc9MxqQKSomJ', 804, '70'),
('172.70.34.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '11 Aug 22, 16:14 pm', 'LZwUHrPkRY3ac7n7KbHr9h2ZXhn9SbVUbW0HmZMssnjVKlVUULpGsgEf93yUEft4ETjf', 805, '69'),
('172.70.35.76', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '11 Aug 22, 16:17 pm', 'I2dgx7nvQ1VZllMS8Nrxuam9XbZbqzt4zgg9hfwaLOdJwgpRCkCzt6kLxPN1J1KzzcLO', 806, '69'),
('172.70.175.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '11 Aug 22, 16:18 pm', 'qT2gaiErhkBRBv2KVXW7v9illDDCrG90mFhN3az2igWrM3nCJFuOB2QA533k6Gkj18z7', 807, '69'),
('172.70.247.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '11 Aug 22, 16:46 pm', 'EelRJkhhlsUatp3mkK8YaxDfvOVYEOkBV4vHcM5x3enO9gKx6JqpzMISDiPNAjPmDcW6', 808, '56'),
('172.71.22.73', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '11 Aug 22, 17:40 pm', 'TYaevU3SJkwMhXfRcnhyzy3IjbFaxMbxblvO3pwpGBf0Ds1aIe2oYlWIxKo4D230kDrF', 809, '64'),
('108.162.237.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '11 Aug 22, 19:02 pm', 'lbZKAUPzCB7FhvOsAZ5Cyf7EKrica2CSD8bRN4RgPzRicu1XZFFlOU4cL1Amyulac6xN', 810, '71'),
('172.71.82.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '11 Aug 22, 19:10 pm', 'XzKreXGy3GpbP6rue9O5YK7WnUeeyP5aOZf1bz48qpJkMfIV0AEtVaBYHMxc5TpMaLGS', 811, '71'),
('172.70.135.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '11 Aug 22, 19:45 pm', '79WLMYcTWb0t3S2sXhtntYevenrU1tTp2GGlMGFXbuhkSZKrBNRqRlrWHLhCn4rZvnCA', 812, '69'),
('162.158.62.199', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '11 Aug 22, 20:08 pm', 'ZXYeO3xy2FSfsrzHd1yF5YZxzN1eR4bmN2z4F3hFAHvVIjHaBlpgD58sLzqKJn7Rw1lv', 813, '64'),
('172.71.26.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '11 Aug 22, 20:23 pm', 'zfUSM1MHhhGw3oYvqEmvwndj994fdM0GpffmKpk9C4D0e5taqluHjQt7EQsoHxZVfYy9', 814, '71'),
('172.71.30.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '11 Aug 22, 23:44 pm', 'wvzLqfR7J54V1n82ToffDYPwEj08097P3HVINmgor1sKfxy2g3PVShY93CNSjq2IzjhZ', 815, '71'),
('108.162.237.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '12 Aug 22, 00:38 am', 'Y76aRUlGocz5anhCcsjkJlBYiyKNcrY0mmbWPfDpKpUl5W84hmALq5yVcZHmnl2yurB2', 816, '70'),
('172.71.26.59', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '12 Aug 22, 00:56 am', 'rcB3LtK8LTPRypUw8oRrYeDX66hqvM2nWUKotHylYdnLiaWPPAMtmhny4XVO5QfAhhTE', 817, '64'),
('172.71.26.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '12 Aug 22, 02:16 am', 'fHob4QER80dEtQWzTT3UuOHOzeqSI9uGO3pVs7Fk9lAx1kQRj9hrrLeV9hG8pIOk1tfY', 818, '70'),
('172.71.30.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '12 Aug 22, 04:23 am', 'AjSYIR0uZX43268XQOYbMUGzRaqCobSNwrbJW4s2KckXQ3tV0CLLfh9FqaVyYLE1PtP0', 819, '71'),
('198.41.242.153', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Safari/605.1.15', '12 Aug 22, 08:33 am', 'mc6VZkpcMBN82CykIVvdRSP0FirfEKrxIBBL32fGvR7HI5nyDwVquzuWSIbULxchajxA', 820, '66'),
('162.158.89.188', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '12 Aug 22, 10:53 am', 'l8R7DzqPk9fHHlqKidvJppAf8CBcoCVz55l3EhJUiTil4ah0pagapxmeoCMZQzat', 821, '1'),
('172.70.34.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '12 Aug 22, 11:10 am', 'ejsIb5Qp4zgdjL7iBAaNZu1k9545PZBzItnYvVBOpN7IQ8XlzlZmJwc6IZO66tJj4w9B', 822, '69'),
('108.162.237.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '12 Aug 22, 11:25 am', 'lEOpTs5RWdOznWx825lmVhSYljO21n6vNaKIGIMhgIyCO3f2eVv7JuzuiIAhJrllRRYc', 823, '70'),
('172.71.82.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '12 Aug 22, 11:32 am', '8Iro1ZWcP0aYDpoB8uORO1zkM7YAsbSNKanzHUcRwxCE0U82DRmToQjX7IALxukqu8EX', 824, '71'),
('172.70.174.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '12 Aug 22, 11:37 am', 'a7SMR585ft0MBT8otuMb1FN5xXMnXAcknk2G2q8rKDDRYZqYP8zpHh7Kz55w798AVeUo', 825, '69'),
('172.70.174.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '12 Aug 22, 11:39 am', 'wmIfkq7BORG5QxJA3tvHjsVcCEkYUO632FVd5qHhBVOJmoO6lJpbc9Lk86NVbBqrqoZP', 826, '69'),
('172.69.69.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '12 Aug 22, 12:18 pm', 'N4igElr5Lp7TNDHZhmUjO7ET2Q5qZb8UnXOPwLg1KjOXhjBarso7ckiXlJeA66ZRMv9B', 827, '72'),
('172.69.70.71', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.47', '12 Aug 22, 12:29 pm', 'MouKLnttRQVFXrIMg37OdcKVTD81xjdW7cxfphsQG9rrrWKZ7lIWaaxrBUDrNO6nj4AL', 828, '72'),
('172.70.35.76', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '12 Aug 22, 12:40 pm', 'qYzuNGkcmFzwk1rdi67CwvuK9cLIWP4uhcwi8CzLyGmg0XNVQNQy94GkjmkubEGBpSbA', 829, '69'),
('162.158.63.4', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '12 Aug 22, 16:57 pm', '4Hb0AYkg77V5rBrcUCo0oZwHuMpiQ9prg0WdlIvqPfa7y1Y2YtN4l9fjg7CzQnK1eeUH', 830, '64'),
('172.71.22.71', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '12 Aug 22, 18:22 pm', '6ePaVGDiXetDa9REd0tD0rV5SNzmR0ba8MOW64lDo97dXGHjBtjv25M54wHOYKfGamtY', 831, '64'),
('172.71.22.73', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '12 Aug 22, 18:24 pm', 'feoe7gcGdw3e54XkkwB5sQRBZsXsugbn8tV6cs1FuXUWlBbDKhPlahLxgNQJKMpo7fMO', 832, '64'),
('172.70.230.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '12 Aug 22, 20:20 pm', 'pH3vajT3kirsHrxXYdINmLlnZy4DDGF0Qm1pShcXA7Jvzct9unzKDecchOu6kVQY', 833, '1'),
('172.70.174.135', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '12 Aug 22, 21:23 pm', 'R1KczlG3799aRU1oSKd4VukcsCxh4vHRP7i6S2ktOMAXneS2sgICDjrtXbkFfTGqcpIi', 834, '64'),
('172.71.82.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '13 Aug 22, 00:04 am', 'ePp8MptZKiZxsBAQZVSg91nuqyBi35fUnDhN9rt37t19kBRWcZgBkURVyPCzeZ6EphcM', 835, '71'),
('172.70.174.131', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '13 Aug 22, 00:40 am', 'AdxLvhw7Fea6uDNco1QYrfKTZdwtpiOGQQhMB9Shg9gZMf2B0WHC97Wx8NpTq4RYgDVP', 836, '64'),
('172.71.26.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '13 Aug 22, 01:45 am', 'NJprVKR2H55F8USagn9DOruN8q7e2CBeA914FDN7ORBMPoZbtLeH0RoxS6kMBjA9gMSV', 837, '70'),
('172.70.174.135', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '13 Aug 22, 06:23 am', '1nycbrkcLuO8gPP3xaHZtyhoUOXCSsI5NJHP4wpuuCk8Xy2aBnX797boIWOn3B3uU0PZ', 838, '64'),
('172.70.42.123', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '13 Aug 22, 06:31 am', '5i6TQF2AdKYU7h0xiFecdML68e5qRjNaYNQuf3pA6hlScNroQQ7pDx3Y83s35ELfoVSj', 839, '64'),
('172.70.174.135', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '13 Aug 22, 07:04 am', '3R06YWiVqzpVsauuhCmEHuPaXYf4tAagR9r9TSDNrXjs2t0PJ7uzmrZJCwg742E0xrds', 840, '64'),
('172.70.250.103', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Safari/605.1.15', '13 Aug 22, 07:20 am', 'r2WI7oGjWlkReHjejDM6CufWDMxjt3gqwfsiAUSMoSHLgE7ElxwfqSmQboXd860z7Nx3', 841, '66'),
('108.162.237.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '13 Aug 22, 10:25 am', 'NtKmFFnG2xjyoj6g2vBWGj17EyxgTwwJhepwxR2Ezfg0R90ZbpxxGkb60lMC0SvBO5fw', 842, '70'),
('162.158.90.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '13 Aug 22, 10:47 am', 'Sz38NkK9WPVwJg1Z5CfNg6G31fH0mRJ81y4pjPZ3CL39d2BchmMvtyqilcd67jT7', 843, '1'),
('197.234.242.241', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-A520F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '13 Aug 22, 12:48 pm', 'W4l9DNbXjoC9sbtCqCtA3romI6pq2YoEnSTyx4zyBFqqOLUOK3Pbm4KbB5Gm3C0Ps3AM', 844, '73'),
('197.234.242.241', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54', '13 Aug 22, 14:22 pm', '4h1JuTye6HdOjM3CCbxade3G38r7wB2sx3YhAbTwmn7Np4LRcf4XytISjxSUgn7Xz4N9', 845, '73'),
('172.71.26.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '13 Aug 22, 16:29 pm', 'almXDm2vdsWfaQ6qkZNbwr0UyfXYcyUvu0ABXFgDl71AUbyxohku46slUL21iIW5WXu4', 846, '71'),
('172.71.102.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '13 Aug 22, 18:02 pm', 'SOGECSQFj1bOpcJPuIP5ImnFkZMNa6MQ1EfvMvVnII0uZnvewQsvH7VyGBKuoHNT', 847, '1'),
('172.71.102.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '13 Aug 22, 18:54 pm', 'SfLIJsQ230WorzHoDFWysnld7b9nKkNAmnq4itpKkusN2YQzRZnEqCP40qKnTK0a', 848, '1'),
('172.71.98.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '13 Aug 22, 19:17 pm', 'K9V0CnpVGsJ4u0YFUJQ4BNJlxSdgA1xQru5MpJmC813TYHXYHrLPJGNUl37YWcg6dvWL', 849, '75'),
('172.71.98.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '13 Aug 22, 19:18 pm', '5WitgSU5VZlffXYIavkJLQZTXLNfcE2plG0SgqwO8moFBmaTkNYQhGTxPi9RDn8z1SpT', 850, '75'),
('141.101.76.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '13 Aug 22, 19:20 pm', 'x2CKsxhk38qhYMWrxWwBZ0XDEAHMoeUk50J0kaJSrDLtI0cvIsxQzwgUKQwh1vFqlf0P', 851, '75');
INSERT INTO `login` (`ip`, `browser`, `dated`, `token`, `id`, `userid`) VALUES
('141.101.76.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '13 Aug 22, 19:21 pm', 'Lsdowxi42QE61pz9FlxolhWMmMFZ5DkfX69xpk6vVsaN6jqagj59qljgTxCHPmed', 852, '1'),
('162.158.179.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '13 Aug 22, 19:57 pm', 'QGCAn5UIV70dqPnZtDoygi9ZJn7DN977K6TJVXxQBSUxzYQTKJTdxnmffkdGQlx0', 853, '1'),
('172.70.142.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '13 Aug 22, 20:03 pm', 'VsYEtSK9LyTuUUffYjaNb0LOS7AURqMxJgrMPI6fOX9G073M9eJx9iYHl15Hd5mB2cvE', 854, '76'),
('172.70.143.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '13 Aug 22, 20:05 pm', 'RwCfaUbsKrT4mSR1NG0g16s1oq9SDCxM0cVnOtf5incBq6i42mRwjM8WxArQXVMa12V5', 855, '76'),
('162.158.163.220', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '13 Aug 22, 20:06 pm', '863VlOluGlo3fgZ7GxKi42Onmfdlkc3Mo1dqr8U0ICRHcoJKQ9mRxVjVTBwZZmCj', 856, '1'),
('172.68.253.23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '13 Aug 22, 20:53 pm', 'KPDn0E5n7YENJyjlW6botCaH7wSOJ0XTh0YXf6uNYBLZZvbGuJdn5rzADYHAtd55bdGn', 857, '76'),
('172.70.174.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '13 Aug 22, 22:16 pm', 'uQRHq9yIYQPjpjXu024KpllW3rb2xTYNn6ErHJM2J4evlkCVegpIXsS8TQVaWLFrLDnw', 858, '69'),
('172.70.178.219', 'Mozilla/5.0 (Linux; Android 12; SM-N981U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', '13 Aug 22, 22:54 pm', 'KqGpzkcohqfB2ldAbq3np3qMt2EAfPtvxrFuOKVHToINQkucxuE81Hp9Hpw8MDkBBgN2', 859, '64'),
('172.70.230.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '13 Aug 22, 23:00 pm', 'o6r5SKoYK7sQkYT3pV7rJhpB4J2ZjSGD73eJpcOwaIRGMUQlEYg5exmBKeSnlWY5lOsN', 860, '56'),
('197.210.77.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 14:17 pm', 'tEVrJ9P8aBJAzUaU8JkR5O22q1K5z7as65ZgXFvWxv8JnwDAIe7eVpTNICvnHzsN', 861, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 14:26 pm', '24lpIcEE52VjX6PnYoRRopQZoXM0wXwEI11WNkIvJ1l14s9urRxaKEaujLmlqenl', 862, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 14:57 pm', 'vsaDCaNAcofebAR5htPMsW7yDjVMxXEb50x53ba8cyCTdRCIQatMCRSAYl9m706T', 863, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 14:59 pm', 'NnwRA7xd3nKxiYxYK2h5f86zTJzqCzt2ODujBopzIOEckvqkweZnr3pUQUGWNEZ7', 864, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:01 pm', 'v0tZVRMgjaEOCrGms4gY47dC9GJltjW9GTrIc92XPvHueBHsbJR8q1lvnhaWZQ2r', 865, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:10 pm', 'KmsU13eJe10Aitd81rCVtTAYrwNi1prWoCn4mWWTkdkbbf92HQXIBzz3y6jrMSur', 866, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:12 pm', 'ELgGepp0CeI4Dhm3yXRte14TXhQtZhI4uY9kDQnkvCp6AT4hQ8FjkstIA34nqd1P', 867, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:13 pm', '0rcK42R9Li7XGK3E1bajwp0KsMdS5zIolFua3RS2Ggs5UvFVae1nP59Oyr5HVuZO', 868, '1'),
('197.210.76.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:17 pm', '9XZwUCLq9ArYJMP66vbdnLUT1Tfca6MuvoA2Wa2Yeu22Osex4rVR67HT9hVT5ecI', 869, '1'),
('197.210.76.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:17 pm', 'xnJKKiPysPYnO4nTkr5EyEhVDPYIpZyEFG1FRDjsr0cNymXPQ33vd7iv2JQ4HseP', 870, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:19 pm', 'WkkM3cMJZTIw4B9sLjE6cGspDJFuydRFiBeXevR0NnriGLl0KRZypbAsEQSW81rn', 871, '1'),
('197.210.77.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:20 pm', '23WslRtAQ9SlqimS5FdlObXSORiyszLnXCvtqQqMAHzNTcNaMWcsARaRxFq7go6S', 872, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:22 pm', 'QqZzIWiEcNO80zbt8dHsfCvqZTzjzPh1BFwh61jtH8raEuVyaj3IZ9fPbcbOEMNi', 873, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:30 pm', 'Mh9Kk9UHTCfEc8kbEevYYadke862tw6y9WcGEHjuXKQeTRhk6iNzM7OpoeUOwh4m', 874, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:32 pm', '7v5zQS8emUN3CCM9IGHqcBDMd8L0afjnrS38I0LVMISnC1Q3sSPwIxQgcx3WCOYe', 875, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:38 pm', 'rjsxuVvymNlAeQaGGWnRe9AiwUGeFP5a5nGIcHmhLYXPAHfHSYdUgR3Sm3PuwGr8', 876, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:38 pm', '44R8dQK1FiJAOLgXJf6AQ8cnkpTr2WpxiyYegdXN4PcDDsjNZe9sgS6P6c4ZpviX', 877, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:42 pm', '12VJcB9FfOJVzMdf1vsZnUqIStH67q6ibMAfz7mQrDEn8MQoUfDHhWWMEh23pacm', 878, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:45 pm', 'Z3Z26eaDgwq3vxOVobCyhF2KhwPcHOjvhLasnhB32sTotS4TrGS0yxqJgGmPX0ak', 879, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:50 pm', 'azXVInAldgu9fDpAwta4R23eGts8grwzLoBSQ03DuztuQJhymJhdCI2VSyytgS7h', 880, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:51 pm', 'AFqQxxNJf75RXPBe6NUQFgGEaMthAojwq5CdrQbRHxAUHiFANXR76lo77xmUV9IR', 881, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 15:53 pm', 'cc9fk5bsnZL5Ca2MUCkM581felY6GZbSRGwy3nbc4gZEib7JRjTbivqCHRS5Vkah', 882, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 16:03 pm', 'X1bKn0UshAO1PutxaLWyMBkuL8V2KwKxrKjdaKi8HIDpJahSjeV6pIH5B1QIwsXI', 883, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 16:04 pm', 'yG50uFXOqYZmSOVr2bQ5KRIEkf32oecewyCyW67d7wF2tbcM4gF3Zwjymc2pygLA', 884, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 16:04 pm', 'd1HeLUYVAjbfg2Qiqd3syA4QIrqjGmnbPUNMQpXLjkLqujUy9rF8SuGrnBPR6TuM', 885, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 16:10 pm', 'WYbpW0p62vAcaOrEHyHVCWZo2I7UCEr4YCMJNAON2bZgoJU7hXEy0gOEolQ7inGB', 886, '1'),
('197.210.77.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 16:12 pm', 'eYW6KJFExrYHT8L2dzjMTwpCY57aHVPueUm2TJJ7vRUItVWRUbQsMFuDe9ijFJWd', 887, '1'),
('103.255.7.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 16:13 pm', 'MvlaBn3qJYawlGAxwZCSDWM2BxJ6tr7wiiv7e4aqRkgLuf6Vu9Zy5yssNTCDuEXy', 888, '1'),
('197.210.77.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 16:14 pm', 'PkbjnLvnepVwgaouhF8Bxq4mKjXXFprLcUWzhr3n8S5ULlwchHP4J3c6MOTjubcz', 889, '1'),
('141.101.76.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 20:42 pm', 'F8awDgx0Nzd5tM2ajwicUYGk8JDV2X6mII59FM1b5LkNX7loer0n4AgE7FdoOXjR', 891, '1'),
('172.71.102.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 21:23 pm', 'Kxh07cWSprL4rWRWAsLnTu8EtGIg8z18Ud1DAgmBwceNTtr9YdS8qYorKXiwFLNc', 893, '1'),
('172.71.102.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 21:24 pm', 'UWmObVlIofzs54ahCeeKZOtGUEmJAHFLXNp1cfjUFDTGO1oVEJvpPorLkuLXszSx', 894, '1'),
('172.68.186.115', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '15 Aug 22, 21:55 pm', 'yjtbAYHufPY0kt8hv756icb0vXDuYtQy0hfPxrrBW4rQjxrxfRecHnIO9CJm3m0w', 895, '1'),
('172.71.102.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '15 Aug 22, 22:08 pm', 'pF833bfCPZYrfBpD6m1gzJaZF41VgZsI9IvthcEPLCU5xriiHsgN4CLkyft900xP', 896, '1'),
('172.70.55.20', 'Mozilla/5.0 (Windows NT 10.0; rv:103.0) Gecko/20100101 Firefox/103.0', '15 Aug 22, 22:39 pm', 'JqmE4R8A6Yp7fbPgeUHhUYZfooS6xnh1iESpi4GA8HUFwcFruy6AcTz52V4T1gBl0XlJ', 897, '78'),
('172.70.55.20', 'Mozilla/5.0 (Windows NT 10.0; rv:103.0) Gecko/20100101 Firefox/103.0', '15 Aug 22, 22:43 pm', 'NgxHdgwZRibTcsy3h5JRYA4Bvp9OlVRcvGOYu8gwJFORF3yjkznspmFnc8IcRRJRTl7S', 898, '78'),
('172.70.55.20', 'Mozilla/5.0 (Windows NT 10.0; rv:103.0) Gecko/20100101 Firefox/103.0', '15 Aug 22, 23:53 pm', 'S2xVZT3IsB0RAnhSwsNRDgHKONwJ6iaFgCLSoew6MVNEzsJFkYzkQje2bH7LkrTziqVp', 899, '79'),
('172.70.92.211', 'Mozilla/5.0 (Linux; Android 11; Infinix X688B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '16 Aug 22, 07:40 am', 'ixd9UbJIxYwbVRkgSl1B5jhqJgacYd2Lt8lSFRcsrchhLCpaL3wSzAiG4sxoFAdtIqhf', 900, '79'),
('172.70.143.104', 'Mozilla/5.0 (Linux; Android 11; Infinix X688B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '16 Aug 22, 07:42 am', 'INcf12Q3HXGAWYN0GMt5YifEHR9t5yxDC6nAidMcEAgdhpGQT4APZU82FJ5jb8TA9vux', 901, '79'),
('172.70.93.49', 'Mozilla/5.0 (Linux; Android 11; Infinix X688B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '16 Aug 22, 07:54 am', 'QL4IONI7n25q7f2L6njRGrPp4eKGxi2M9tpCT3GqmDs7QHUU2D2tUKkx6b1XvWR5YpXQ', 902, '79'),
('172.69.111.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 11:23 am', 'Z50mOxMVZhxMe1U4CuTV9v0fb7q3pKdEAdsSSJ4Wfn31Jqy8MZeO0vbXEZ272JPXgAri', 903, '78'),
('172.69.111.171', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 11:24 am', 'hjFM3PLrOfqHQX0M9oUQc4lhVXOuZzEu0aE0Ciq7dkyaPAlA8U7mbCgxbpYXXzjRQJ0B', 904, '78'),
('172.69.111.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 11:25 am', 'MsyocJBkHgIH6skkcc5OoV7aLLHe0HfMSLgRg8EAueTS6owq91QWrNiq8DIDn240Knc2', 905, '78'),
('172.69.111.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 11:45 am', 'JdEObLYCeLsXXkXGZ3x5kIBdLyl5fU9BkucDjV30ihUBhdfjE5BRNVSsq3mIrrLcz4DF', 906, '78'),
('172.69.111.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 11:49 am', 'xhTioiD1faV5pLJjVzdyUaAKG1mDOeCOBN1wX0rzklgVXefSzrNrBEwvzc7PcjhU6HAB', 907, '78'),
('172.69.111.171', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 11:51 am', 'KuiOM87qY55n3hsZcdp9Y1VdITKKXyMqlrAI3hkgVJC9wSxYCoOcBn2pcjSld0NjXiFo', 908, '78'),
('172.69.111.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 12:14 pm', 'rJ4ctBWz3adJDpiClP7vnzW4UA8WwjXUPCsuhscgcAT0ujhvRg6obMr48vUKG1rLgz41', 909, '78'),
('172.69.111.171', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 12:16 pm', '0Duw0pSK319RVjpYVpDFl9qxBaSzutG3QrJ7gXjm6scVSeagn6vnjVavUfHIhDn0Ub1q', 910, '78'),
('172.69.111.171', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 12:16 pm', 'jbaTtxFeGpKiRz4PwdrB6MbVhsflcbcMwM6C38tNZ1yexo9C0mLboIlhhP0VDMCSsUxD', 911, '78'),
('172.69.111.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 13:00 pm', 'eoxUF0Uh8bdDnEtDUcMSxeRAv7VDLxNv0BXiXOTzKnHBr90M5ygk8evLonzMGNSoqRFi', 912, '78'),
('172.69.111.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 13:08 pm', 'YsKoQS3q5hCt2vv0wiRMpVOURAbwNAVAoXpOtYILVydOcAz17MPq38ouJ4aptrf6zInV', 913, '78'),
('172.69.111.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 13:23 pm', 'q4WKA2VEl3XJpEeDUKgUTZhp7h6ItBD0U5CcJSlm1gKP914htaNcE5wFFT030a6pI0v8', 914, '78'),
('172.69.111.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 13:25 pm', '19187CLNP79zDCNdNZCdrPaxMCObOKzKCWgaDOsv7Mqb5uf1lYlkn1Wd3anH4giaYlMA', 915, '78'),
('172.69.111.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 13:25 pm', 'kKjxdac2yY2LQ4j0fAutpKL0x4Wzz8dDgXCDt3vWumlysNkjlaXgzQuv2suedDvQsvSB', 916, '78'),
('172.69.111.171', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 13:27 pm', '71DK0uQ8KOc4mp09VSntJWIa22j0nBlyg8O6MouysRoolEMi473UoSc6IVQD1jtUIkrE', 917, '78'),
('172.69.111.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '16 Aug 22, 13:29 pm', '3em8MjUFI6Da7DQ5Rn7ui7PrFhjYfQRmgwwRLE3jMVkru6WKPZa1wPs8qPpOBqWhly5p', 918, '78'),
('172.68.186.123', 'Mozilla/5.0 (Windows NT 10.0; rv:103.0) Gecko/20100101 Firefox/103.0', '17 Aug 22, 00:03 am', 'PnCdOESq4aOLc3Z7gZeLYNBsLF7oxpTSXoYUzzQoC9A46Fxmu4Hzxk2svGZi95fo', 919, '1'),
('172.69.111.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '17 Aug 22, 03:10 am', '1NkVhYQ61lV89H416rzLokhGAbFCdYnQe8pBLZoXkWmE8XhzVwlXEavk7rx8ZrsSIoU4', 920, '78'),
('172.69.111.171', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '17 Aug 22, 03:18 am', 'X4SH3NONGAE0otZZ6ZDqk8XQf6FuEcowxnyv8AbrVpNbfv3RBDmzQOSXVqV2Fs0PmN6J', 921, '78'),
('172.69.111.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '17 Aug 22, 03:23 am', 'tKfYqZJiUKNJcj8Q1oSiHJL6dSwkrVziaMMYzMS1sHhVicgWdWW9nFG6a0UlxtqUQ5RR', 922, '78'),
('172.71.94.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '17 Aug 22, 14:42 pm', 'KvWZ4XiAiqfbmQLcwIK2QMgh8GraXXXPpLv43GgsdRF9vT9NnexTg4EVSi8ZjczF', 924, '1'),
('172.71.98.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '27 Sep 22, 09:52 am', 'cSJ6AyTifemM3k4P4cdmw3jalCADmZPppPnxvH4vMzW7ZozhSxQaD4p1jxyFGCPi', 925, '1'),
('172.71.130.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.50', '27 Sep 22, 17:36 pm', 'UylLhbqqBqUNY2Oa3PcOsVANnjub4huk1oJa6iMOrXQU7Od6rP3V0GGGTAidddgqcuOi', 927, '79'),
('172.69.111.153', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '28 Sep 22, 04:10 am', 'Nx2jlrRjJTygxi2cW47VM3S8PkVQ4Xgwy1q6EZq9TEtAWN9ppcn97t1oaZZJOcLo', 928, '1');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `dated` varchar(150) DEFAULT NULL,
  `expiry_date` varchar(150) DEFAULT NULL,
  `token` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `user_id`, `dated`, `expiry_date`, `token`) VALUES
(17, '61', '2022-08-02 04:27:22', '2022-08-02 04:52:22', 'Mh9vHhm6S8Biv8hc3ZiMaTuTPe1Rtou8uMExWPgMnw1Q1g5Ft4jB6pEQokO5pO'),
(18, '62', '2022-08-02 07:26:40', '2022-08-02 07:51:40', '1FgJFhWOBuR3w0kxOP8q4Cv17H7dwYc1gUlXtZ5vQUZe6YTPy3sb7CLFMekC9p'),
(19, '62', '2022-08-02 07:34:04', '2022-08-02 07:59:04', 'hl2T0CQJyt5od5btZYoOZjwdC6Elyme3dK97WIHNmoPhlKx2JnOhyVUR7vAhev'),
(20, '62', '2022-08-02 07:49:12', '2022-08-02 08:14:12', '9p1JnOqazmgRPBLzxcuZQ2DUKo2KdQMJ8puUBqnbxQLEen84zmTxYXkNoamvCa'),
(21, '62', '2022-08-02 08:05:36', '2022-08-02 08:30:36', 'xjN6uuj8j6jWlnWKBm8yCx2pLQ3zetANObEBKGwWkY8CGsQpeL8ukPsJc7u5bC'),
(22, '62', '2022-08-02 08:59:56', '2022-08-02 09:24:56', 'tv66QXBPsCY8a3mv8yujPjUp2u3fNSSVWzgnODiUBU72Gak0PbpD1KZTfIsqXa'),
(23, '66', '2022-08-06 06:18:42', '2022-08-06 06:43:42', 'iGtDoxzmOh0chV9iiPznNOQyPSI02KaD7618og7zL5ak1mf0Mq3dpyN5yw3HAC'),
(24, '66', '2022-08-06 06:19:20', '2022-08-06 06:44:20', 'nk8BH4VHqQVV0LnkFAnniHFmC1IPKA3PtbHpGAWylLLTxPANbIHQPOLxb4r735'),
(25, '66', '2022-08-06 06:21:33', '2022-08-06 06:46:33', 'aqbftzL9x3K8JwyefRz8hCAuMGvj96UfWB574qxI5rDf8IaBY6LzTyzkDvnTht'),
(26, '66', '2022-08-08 08:47:33', '2022-08-08 09:12:33', 'aYpWSSn9dGxyhLJSbhKLY1DFaZGM6AwOSoiLeiodIKZW7Xqh3PAteIPxCAoxBQ'),
(27, '67', '2022-08-10 05:06:10', '2022-08-10 05:31:10', 'S1T0O1o5we0xpaUZG7jXWKtUJjmrwbFwqvQQVbPE5wv4wQuaYZ4mpehxn4pLgl'),
(28, '69', '2022-08-11 07:05:56', '2022-08-11 07:30:56', 'XCKAA30s08d5i2hGSbqiMeugJc9e6A1yqovw5VYBNU5lpRsXbsmRjLC90Dk95a'),
(29, '76', '2022-08-13 08:08:37', '2022-08-13 08:33:37', 'xm02sWpJjDKbvWDokIY6XQtj4fQehZcX3AyTUcrEwPiM9chZOSoe2hLMsGnOx4'),
(30, '76', '2022-08-13 08:18:10', '2022-08-13 08:43:10', 'rdtudHOJoLggXzp5A2mGBkoq4rglKCQR8RwY6ZGG66iKYIxZyaZ0dmVyEDB9GA'),
(31, '64', '2022-08-13 08:24:11', '2022-08-13 08:49:11', 'H1sW9E9K8ZsvBZNnUnzoV078zhCWIguQy55i0xsyAwmVHH1DnUUpVa5Bcmwowo'),
(32, '76', '2022-08-13 08:29:41', '2022-08-13 08:54:41', 'R7ONts6YWAZ7TRTssNGjGKaYhKY83Hl4hMJyOissVd7GvAOVvFdqoJPxuJtnoe'),
(33, '62', '2022-08-13 08:42:15', '2022-08-13 09:07:15', 'GPH3B2XtfuaqRRu1WinFTrp8IAAJ61ajC9ampK62gUteClDqb37ON9MI4lZKIe'),
(37, '56', '2022-08-13 10:57:20', '2022-08-13 11:22:20', 'x1kBBJHqlMzVcbJBsiVAS55QN8uOgbp27HVSZX2rXlqErlqAFcCXIZbGaAIBeU');

-- --------------------------------------------------------

--
-- Table structure for table `paybill`
--

CREATE TABLE `paybill` (
  `id` int(11) NOT NULL,
  `payee` varchar(100) DEFAULT NULL,
  `dated` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `payeeid` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `ref` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payee`
--

CREATE TABLE `payee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `next_payment` varchar(100) DEFAULT NULL,
  `ref` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pending_transcation`
--

CREATE TABLE `pending_transcation` (
  `id` int(11) NOT NULL,
  `userid` varchar(150) DEFAULT NULL,
  `data` varchar(5000) DEFAULT NULL,
  `date_created` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT '0',
  `ref` varchar(120) DEFAULT NULL,
  `stage` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pending_transcation`
--

INSERT INTO `pending_transcation` (`id`, `userid`, `data`, `date_created`, `status`, `ref`, `stage`) VALUES
(27, '64', 'a:1:{i:0;a:7:{s:8:\"bankname\";s:11:\"CHASE BANK \";s:13:\"accountholder\";s:27:\"Edmound Lamont Courtney Jr \";s:13:\"routineNumber\";s:10:\"2812123221\";s:14:\"accountnumberB\";s:9:\"830690316\";s:11:\"description\";s:20:\"Investment  capital \";s:6:\"amount\";s:6:\"300000\";s:19:\"transaction_session\";s:64:\"Sj5yg0UAUjKs8nY2y4JraJnIU77KHT9DZVP0gv5S4HbOWzLWKq1ehZVWIYOgP1DF\";}}', '13 Aug 2022, 06:37 am', '0', 'YQXR6AQ06', 'tac'),
(28, '66', 'a:1:{i:0;a:7:{s:8:\"bankname\";s:10:\"Bunq  Bank\";s:13:\"accountholder\";s:11:\"Pavillounge\";s:13:\"routineNumber\";s:10:\"6456191055\";s:14:\"accountnumberB\";s:10:\"1010233312\";s:11:\"description\";s:26:\"ONLINE TRANSFER/IHHRO/0426\";s:6:\"amount\";s:5:\"20000\";s:19:\"transaction_session\";s:64:\"nXPiyObhqkZ36swCsIB3HX3yZb3mv6tmyzG36lY4Acn3rhvnyTj1berDX9JeKvjA\";}}', '13 Aug 2022, 07:23 am', '0', 'PNNOWDIQF', 'tac'),
(32, '79', 'a:1:{i:0;a:7:{s:8:\"bankname\";s:28:\"BANK BRI REPUBLIK INDONESIA \";s:13:\"accountholder\";s:14:\"IMAM SOERODJO \";s:13:\"routineNumber\";s:10:\"6053816161\";s:14:\"accountnumberB\";s:15:\"312601003045509\";s:11:\"description\";s:26:\"ONLINE TRANSFER/YCJCV/0481\";s:6:\"amount\";s:7:\"10.0000\";s:19:\"transaction_session\";s:64:\"wirOH3rseJc4t4pBd1x8puAMrTth4QykiR0ZdKqhaO8j2ZfW1aWLx6n2kZANzAai\";}}', '16 Aug 2022, 08:02 am', '0', '7YFJNSWAE', 'tac');

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `ticketid` varchar(50) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `datecreated` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `logo` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `favicon` varchar(150) NOT NULL,
  `tagline` varchar(150) NOT NULL,
  `register` varchar(150) NOT NULL,
  `darklogo` varchar(150) NOT NULL,
  `description` varchar(700) NOT NULL DEFAULT 'This Credit Union is federally-insured by the National Credit Union Administration. We do business in accordance with the Fair Housing Law and Equal opportunity Credit Act.',
  `seo` varchar(150) NOT NULL,
  `footerlogo` varchar(150) NOT NULL DEFAULT 'footlogo.png',
  `securityalert` varchar(150) NOT NULL,
  `stockrate` varchar(5505) NOT NULL DEFAULT '<script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-ticker-tape.js" async="">                                                                         {                                                                             "symbols"                                                                         :                                                                             [                                                                                 {                                                                                     "title": "S&P 500",                                                                                     "proName": "OANDA:SPX500USD"                                                                                 },                                                                                 {                                                                                     "title": "Nasdaq 100",                                                                                     "proName": "OANDA:NAS100USD"                                                                                 },                                                                                 {                                                                                     "title": "EUR/USD",                                                                                     "proName": "FX_IDC:EURUSD"                                                                                 },                                                                                 {                                                                                     "title": "BTC/USD",                                                                                     "proName": "BITSTAMP:BTCUSD"                                                                                 },                                                                                 {                                                                                     "title": "ETH/USD",                                                                                     "proName": "BITSTAMP:ETHUSD"                                                                                 },                                                                                 {                                                                                     "description": "AAPL",                                                                                     "proName": "NASDAQ:AAPL"                                                                                 },                                                                                 {                                                                                     "description": "MICROSOFT",                                                                                     "proName": "NASDAQ:MSFT"                                                                                 }                                                                             ],                                                                                 "colorTheme"                                                                         :                                                                             "dark",                                                                                 "isTransparent"                                                                         :                                                                             false,                                                                                 "displayMode"                                                                         :                                                                             "compact",                                                                                 "locale"                                                                         :                                                                             "en"                                                                         }                                                                     </script>',
  `stockrate2` varchar(1000) NOT NULL DEFAULT '    <iframe             src="//www.exchangerates.org.uk/widget/ER-LRTICKER.php?w=1400&amp;s=1&amp;mc=GBP&amp;mbg=F0F0F0&amp;bs=yes&amp;bc=000044&amp;f=verdana&amp;fs=10px&amp;fc=000044&amp;lc=000044&amp;lhc=FE9A00&amp;vc=FE9A00&amp;vcu=008000&amp;vcd=FF0000&amp;"             width="1400" height="30" frameborder="0" scrolling="no" marginwidth="0" marginheight="0"></iframe>',
  `stock` int(11) NOT NULL DEFAULT 1,
  `money` varchar(50) NOT NULL DEFAULT 'USD',
  `country` varchar(50) NOT NULL DEFAULT 'United States',
  `visa_picture` varchar(150) NOT NULL,
  `tawk` varchar(500) NOT NULL,
  `shortname` varchar(150) NOT NULL DEFAULT 'Rednerbank',
  `blocked_msg` varchar(500) NOT NULL DEFAULT 'Dear Customer, we have discovered suspicious activities on your account. An unauthorized IP address attempted to carry out a transaction on your account. Consequently, your account has been flagged by our risk assessment department. kindly visit our nearest branch with your identification card and utility bill to confirm your identity before it can be reactivated. For more information, kindly contact our online customer care representatives.',
  `crypto` int(11) NOT NULL DEFAULT 1,
  `blocked_title` varchar(150) NOT NULL DEFAULT 'Account Suspended',
  `imfmsg` varchar(1000) NOT NULL DEFAULT 'You need to provide your IMF code before you can continue with this transaction.<br>                                                 You visit any of our nearest branch or contact our online customer care representative, they will help you with the appropriate IMF code for this transaction.',
  `cotmsg` varchar(1000) NOT NULL DEFAULT 'You need to provide your COT code before you can continue with this transaction. You can visit any of our nearest branch or contact our online customer care representative, they will help you with the appropriate COT code for this transaction.',
  `icmsg` text DEFAULT NULL,
  `tinmsg` text DEFAULT NULL,
  `tacmsg` text DEFAULT NULL,
  `charges` varchar(11) NOT NULL DEFAULT '0.3',
  `wiremsg` varchar(500) NOT NULL,
  `localmsg` varchar(500) NOT NULL,
  `cot_imf_counter` int(11) NOT NULL DEFAULT 5,
  `cot_error` varchar(500) NOT NULL DEFAULT 'Your account have been temporarily suspended for providing the wrong COT code, We are always committed to safe guarding your funds and therefore this is the right decision we can take for now. For more information, kindly contact our live customer care representatives.',
  `imf_error` varchar(500) NOT NULL DEFAULT 'Your account have been temporarily suspended for providing the wrong IMF code, We are always committed to safe guarding your funds and therefore this is the right decision we can take for now. For more information, kindly contact our live customer care representatives.',
  `enable_cot_imf` varchar(20) NOT NULL DEFAULT 'Yes',
  `rest_msg` varchar(1000) NOT NULL DEFAULT 'Your  account was temporary restricted from carrying out transaction via our online banking channel, Kindly visit any of our nearest branch to resolve this issue. For more information, kindly contact our online customer care representative.',
  `userstac` varchar(50) NOT NULL DEFAULT '1999',
  `usersic` varchar(50) NOT NULL DEFAULT '1999',
  `userstin` varchar(50) NOT NULL DEFAULT '1999',
  `enable_tin_ic_tac` varchar(20) NOT NULL DEFAULT 'Yes',
  `enable_tac` varchar(20) NOT NULL DEFAULT 'Yes',
  `enable_ic` varchar(20) NOT NULL DEFAULT 'Yes',
  `enable_tin` varchar(20) NOT NULL DEFAULT 'Yes',
  `former` varchar(150) NOT NULL DEFAULT 'Yes',
  `bots` int(10) NOT NULL DEFAULT 1,
  `site_url` varchar(50) NOT NULL,
  `kyc` int(11) NOT NULL DEFAULT 1,
  `loan` int(11) NOT NULL DEFAULT 1,
  `visual_card` int(11) NOT NULL DEFAULT 1,
  `theme` varchar(80) NOT NULL DEFAULT 'light'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `logo`, `address`, `email`, `phone`, `favicon`, `tagline`, `register`, `darklogo`, `description`, `seo`, `footerlogo`, `securityalert`, `stockrate`, `stockrate2`, `stock`, `money`, `country`, `visa_picture`, `tawk`, `shortname`, `blocked_msg`, `crypto`, `blocked_title`, `imfmsg`, `cotmsg`, `icmsg`, `tinmsg`, `tacmsg`, `charges`, `wiremsg`, `localmsg`, `cot_imf_counter`, `cot_error`, `imf_error`, `enable_cot_imf`, `rest_msg`, `userstac`, `usersic`, `userstin`, `enable_tin_ic_tac`, `enable_tac`, `enable_ic`, `enable_tin`, `former`, `bots`, `site_url`, `kyc`, `loan`, `visual_card`, `theme`) VALUES
(1, 'AkiÅŸ BirleÅŸik A.S Bankasi', 'logo.png', 'GÃ–ZTEPE, BAÄžDAT CD. NO:227/A, 34710 KADIKÃ–Y/Ä°STANBUL, TURKEY', 'info@akisbirlesikbanksi.com', '+90 (toll-free)', 'favicon.png', '', '', '', 'This Credit Union is federally insured by the National Credit Union Administration. We do business in accordance with the Fair Housing Law and Equal opportunity Credit Act.', '', 'footerlogo.png', '', '<script type=\"text/javascript\" src=\"https://s3.tradingview.com/external-embedding/embed-widget-ticker-tape.js\" async=\"\">                                                                         {                                                                             \"symbols\"                                                                         :                                                                             [                                                                                 {                                                                                     \"title\": \"S&P 500\",                                                                                     \"proName\": \"OANDA:SPX500USD\"                                                                                 },                                                                                 {                                                                                     \"title\": \"Nasdaq 100\",                                                                                     \"proName\": \"OANDA:NAS100USD\"                                                                                 },                                                                                 {                                                                                     \"title\": \"EUR/USD\",                                                                                     \"proName\": \"FX_IDC:EURUSD\"                                                                                 },                                                                                 {                                                                                     \"title\": \"BTC/USD\",                                                                                     \"proName\": \"BITSTAMP:BTCUSD\"                                                                                 },                                                                                 {                                                                                     \"title\": \"ETH/USD\",                                                                                     \"proName\": \"BITSTAMP:ETHUSD\"                                                                                 },                                                                                 {                                                                                     \"description\": \"AAPL\",                                                                                     \"proName\": \"NASDAQ:AAPL\"                                                                                 },                                                                                 {                                                                                     \"description\": \"MICROSOFT\",                                                                                     \"proName\": \"NASDAQ:MSFT\"                                                                                 }                                                                             ],                                                                                 \"colorTheme\"                                                                         :                                                                             \"dark\",                                                                                 \"isTransparent\"                                                                         :                                                                             false,                                                                                 \"displayMode\"                                                                         :                                                                             \"compact\",                                                                                 \"locale\"                                                                         :                                                                             \"en\"                                                                         }                                                                     </script>', '    <iframe             src=\"//www.exchangerates.org.uk/widget/ER-LRTICKER.php?w=1400&amp;s=1&amp;mc=GBP&amp;mbg=F0F0F0&amp;bs=yes&amp;bc=000044&amp;f=verdana&amp;fs=10px&amp;fc=000044&amp;lc=000044&amp;lhc=FE9A00&amp;vc=FE9A00&amp;vcu=008000&amp;vcd=FF0000&amp;\"             height=\"30\" width=\"100%\" frameborder=\"0\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\"></iframe>', 2, 'USD', 'Turkey', 'images\\visa.png', '', 'ABB AS', 'Dear Customer, we have discovered suspicious activities on your account. An unauthorized IP address attempted to carry out a transaction on your account and credit card. Consequently, your account has been flagged by our risk assessment department. kindly visit our nearest branch with your identification card and utility bill to confirm your identity before it can be reactivated. For more information, kindly contact our online customer care representative at info@akisbirlesikbanksi.com', 0, 'Account Suspended', 'The IMF code is required to enable you to continue with this transaction. Please contact any of our nearest branches or our online customer care representative with: they will help you with the appropriate IMF code for this transaction.', 'The Federal COT code is required for this transaction can be completed successfully. You can visit any of our nearest branches or contact our online customer care representative with: for more details of the for this transaction.', 'The Federal Insurance code is required before this transaction can be completed. You can visit any of our nearest branches or contact our online customer care representative at info@akisbirlesikbanksi.com for more details', 'The Federal TIN code is required before this transaction can be completed. You can visit any of our nearest branches or contact our online customer care representative at info@akisbirlesikbanksi.com for more details', 'The Federal VAT code is required before this transaction can be completed successfully. You can visit any of our nearest branches or contact our online customer care representative at info@akisbirlesikbanksi.com for more details\r\n', '0.3', '', '', 10, 'Your account has been temporarily suspended for providing the wrong COT code, We are always committed to safeguarding your funds and therefore this is the right decision we can take for now. For more information, kindly contact our live customer care representative.', 'Your account has been temporarily suspended for providing the wrong IMF code, We are always committed to safeguarding your funds and therefore this is the right decision we can take for now. For more information, kindly contact our live customer care representative. ', 'NO', 'Your account was temporarily restricted from carrying out transactions via our online banking channel, Kindly visit any of our nearest branches to resolve this issue. For more information, kindly contact our online customer care representatives. ', '36907NH', '71590TR', '2580046RT', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 1, 'https://akisbirlesikbanksi.com/myaccount', 1, 1, 1, 'light');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `picture` varchar(300) NOT NULL,
  `heading` varchar(600) NOT NULL,
  `content` varchar(600) NOT NULL,
  `link` varchar(600) NOT NULL,
  `text` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `status`, `picture`, `heading`, `content`, `link`, `text`) VALUES
(1, 1, 'images/visa1 (2).png', 'Discover our new 82% mortgages', 'This Credit Union is federally insured by the National Credit Union Administration.', '#', 'Find out more'),
(2, 1, 'images/visa.png', 'Investment Banking ', 'Investment Banking provides comprehensive financial advisory, capital raising, financing and risk management services to corporations.', '#', 'Find out more'),
(3, 1, 'images\\visa2.png', 'Global Finance', 'Our M&A team works in partnership with coverage bankers in providing solutions, using a highly analytical approach, providing unique insights.', '##', 'Find out more');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(11) NOT NULL,
  `api` varchar(200) DEFAULT NULL,
  `sender_id` varchar(50) DEFAULT NULL,
  `status` int(13) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `api`, `sender_id`, `status`) VALUES
(1, 'OCAYcQQDgTlNSr7fVW76tPRX', 'GuB', 0);

-- --------------------------------------------------------

--
-- Table structure for table `smtp_setting`
--

CREATE TABLE `smtp_setting` (
  `id` int(11) NOT NULL,
  `host` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `port` varchar(50) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `smtp_auth` varchar(50) NOT NULL,
  `emaillogo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smtp_setting`
--

INSERT INTO `smtp_setting` (`id`, `host`, `username`, `password`, `port`, `display_name`, `smtp_auth`, `emaillogo`) VALUES
(1, 'smtppro.zoho.com', 'info@akisbirlesikbanksi.com', 'Maq221o01##1', '587', 'Akis Birlesik Bankasi', 'tls', 'https://akisbirlesikbanksi.com/myaccount/images/emaillogo.png');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(11) NOT NULL,
  `userid` int(150) DEFAULT NULL,
  `ticketid` varchar(150) DEFAULT NULL,
  `department` varchar(150) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `datecreated` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id`, `userid`, `ticketid`, `department`, `message`, `status`, `datecreated`) VALUES
(14, 58, 'UOETFJS/7791/08-2022', 'Loan Department', 'How does i seek a loan ', 'active', '01 Aug 2022 23:37 pm'),
(15, 58, 'JHAP83A/0361/08-2022', 'Transfer Department', 'I have made a transhacion to my back account as a importent wire transfer and it aint at my account- my other bank say its out of there bank ', 'active', '04 Aug 2022 10:00 am');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `scope` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `bankname` varchar(50) DEFAULT NULL,
  `routineNumber` varchar(50) DEFAULT NULL,
  `swiftcode` varchar(50) DEFAULT NULL,
  `accountnumber` varchar(50) DEFAULT NULL,
  `accountholder` varchar(50) DEFAULT NULL,
  `otp` varchar(50) DEFAULT NULL,
  `refNumber` varchar(50) DEFAULT NULL,
  `dated` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `accountbalance` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `token` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `iban` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `scope`, `type`, `bankname`, `routineNumber`, `swiftcode`, `accountnumber`, `accountholder`, `otp`, `refNumber`, `dated`, `amount`, `accountbalance`, `userid`, `description`, `token`, `country`, `state`, `city`, `iban`, `status`) VALUES
(299, 'Local Transfer', 'Credit', NULL, NULL, NULL, NULL, NULL, '122183', 'CON/VNO4PECP7-0822', '15 Aug 2022, 10:40 pm', '70000', '70000', '78', 'Business', 'Rddh6b4IF0PWve4JNBTMZZwTFyHw3IvvPO8O6g9oVpLtvJAoPjPY906G6U9zYHZ5', NULL, NULL, NULL, NULL, 1),
(300, 'Local Transfer', 'Debit', 'Banc of California', '4852851690', NULL, '784820076', 'Barry Smith', '399200', 'CON/UTXCE80SH-0822', '15 Aug 2022, 11:25 pm', '6000', '64000', '78', 'Business', 'zKWl0ItN6h5VUsSGwZjDASDbwuJmT4k9DCkzRWeYEOh2B7ktelJi49GCzC6g9x2Y', NULL, NULL, NULL, NULL, 1),
(301, 'Local Transfer', 'Debit', 'Abacus Federal Savings Bank', '4664537941', NULL, '548900332', 'Barry Mike', '727328', 'CON/O4XLQAHJJ-0822', '15 Aug 2022, 11:30 pm', '5000', '59000', '78', 'Business', 'Ev6b804OoDIyMx1cwiclIYXHLIPIlgYbBjOrQyJ4TOJnSr2D55bGwLRve5YLSLAl', NULL, NULL, NULL, NULL, 1),
(302, 'Local Transfer', 'Credit', NULL, NULL, NULL, NULL, NULL, '989025', 'CON/EGOLFDFIO-0822', '15 Aug 2022, 11:55 pm', '700000', '700000', '79', 'Next Kin', 'dnK8huB8DX8WRn8QsoqktSyQm3bpnCPmeyeYaixpPZeinsVkdBq6v2JMTtl9jxVC', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `twilio`
--

CREATE TABLE `twilio` (
  `id` int(11) NOT NULL,
  `sid` varchar(150) DEFAULT NULL,
  `token` varchar(150) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `twilio`
--

INSERT INTO `twilio` (`id`, `sid`, `token`, `phone`) VALUES
(1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ukbanks`
--

CREATE TABLE `ukbanks` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ukbanks`
--

INSERT INTO `ukbanks` (`id`, `name`) VALUES
(1, 'ABC International Bank Plc'),
(2, 'Access Bank UK Limited'),
(3, 'The ADIB (UK) Ltd '),
(4, 'Ahli United Bank (UK) PLC'),
(5, 'AIB Group (UK) Plc'),
(6, 'Al Rayan Bank PLC'),
(7, 'Aldermore Bank Plc'),
(8, 'Alliance Trust Savings Limited'),
(9, 'Allica Bank Ltd'),
(10, 'Alpha Bank London Limited'),
(11, 'Arbuthnot Latham & Co Limited'),
(12, 'Atom Bank PLC'),
(13, 'Axis Bank UK Limited'),
(14, 'Bank and Clients PLC'),
(15, 'Bank Leumi (UK) plc'),
(16, 'Bank Mandiri (Europe) Limited'),
(17, 'Bank Of Baroda (UK) Limited'),
(18, 'Bank of Beirut (UK) Ltd'),
(19, 'Bank of Ceylon (UK) Ltd'),
(20, 'Bank of China (UK) Ltd'),
(21, 'Bank of Ireland (UK) Plc'),
(22, 'Bank of London and The Middle East plc'),
(23, 'Bank of New York Mellon (International) Limited'),
(24, 'The HSBC Private Bank (UK) Limited Bank of Scotlan'),
(25, 'Bank of the Philippine Islands (Europe) PLC'),
(26, 'Bank Saderat Plc'),
(27, 'Bank Sepah International Plc'),
(28, 'Barclays Bank Plc'),
(29, 'Barclays Bank UK PLC'),
(30, 'Barclays Bank UK PLC'),
(31, 'BFC Bank Limited'),
(32, 'Bira Bank LimitedBMCE Bank International plc'),
(33, 'BMCE Bank International plc'),
(34, 'British Arab Commercial Bank Plc'),
(35, 'Brown Shipley & Co Limited'),
(36, 'C Hoare & Co'),
(37, 'CAF Bank Ltd'),
(38, 'Cambridge & Counties Bank Limited'),
(39, 'Castle Trust Capital PLC'),
(40, 'Cater Allen Limited'),
(41, 'Charity Bank Limited'),
(42, 'The Charter Court Financial Services Limited'),
(43, 'Chetwood Financial Limited'),
(44, 'China Construction Bank (London) Limited'),
(45, 'CIBC World Markets Plc'),
(46, 'Citibank UK Limited'),
(47, 'ClearBank Limited'),
(48, 'Close Brothers Limited'),
(49, 'Clydesdale Bank Plc'),
(50, 'Commonwealth Trade Bank Plc'),
(51, 'Co-operative Bank Plc'),
(52, 'The Coutts & Company'),
(53, 'Credit Suisse (UK) Limited'),
(54, 'Credit Suisse International'),
(55, 'Crown Agents Bank Limited'),
(56, 'Cynergy Bank Limited'),
(57, 'DB UK Bank Limited'),
(58, 'EFG Private Bank Limited'),
(59, 'Europe Arab Bank plc'),
(60, 'FBN Bank (UK) Ltd'),
(61, 'FCE Bank Plc'),
(62, 'FCMB Bank (UK) Limited'),
(63, 'Gatehouse Bank Plc'),
(64, 'Ghana International Bank Plc'),
(65, 'GKBK Limited'),
(66, 'Goldman Sachs International Bank'),
(67, 'Guaranty Trust Bank (UK) Limited'),
(68, 'Gulf International Bank (UK) Limited'),
(69, 'Habib Bank Zurich Plc'),
(70, 'Hampden & Co Plc'),
(71, 'Hampshire Trust Bank Plc'),
(72, 'Handelsbanken PLC'),
(73, 'Havin Bank Ltd'),
(74, 'HBL Bank UK Limited'),
(75, 'HSBC Bank Plc'),
(76, 'HSBC Private Bank (UK) Limited'),
(77, 'HSBC Trust Company (UK) Ltd'),
(78, 'HSBC UK Bank Plc'),
(79, 'ICBC (London) plc'),
(80, 'ICBC Standard Bank Plc'),
(81, 'ICICI Bank UK Plc'),
(82, 'Investec Bank PLC'),
(83, 'Itau BBA International PLC'),
(84, 'JN Bank UK Ltd'),
(85, 'J.P. Morgan Europe Limited'),
(86, 'J.P. Morgan Securities plc'),
(87, 'Jordan International Bank Plc'),
(88, 'Julian Hodge Bank Limited'),
(89, 'Kexim Bank (UK) Ltd'),
(90, 'Kingdom Bank Ltd'),
(91, 'Lloyds Bank Plc'),
(92, 'Lloyds Bank Corporate Markets Plc'),
(93, 'Macquarie Bank International Ltd'),
(94, 'Marks & Spencer Financial Services Plc'),
(95, 'Masthaven Bank Limited'),
(96, 'Melli Bank plc'),
(97, 'Methodist Chapel Aid Limited'),
(98, 'Metro Bank PLC'),
(99, 'Mizuho International Plc'),
(100, 'Monzo Bank Ltd'),
(101, 'Morgan Stanley Bank International Limited'),
(102, 'National Bank of Egypt (UK) Limited'),
(103, 'National Bank of Kuwait (International) Plc'),
(104, 'National Westminster Bank Plc'),
(105, 'NatWest Markets Plc'),
(106, 'Nomura Bank International Plc'),
(107, 'Northern Bank Limited'),
(108, 'OakNorth Bank plc'),
(109, 'OneSavings Bank Plc'),
(110, 'Oxbury FS Plc'),
(111, 'Paragon Bank Plc'),
(112, 'PCF Bank Limited'),
(113, 'Persia International Bank Plc'),
(114, 'Philippine National Bank (Europe) Plc'),
(115, 'Punjab National Bank (International) Limited '),
(116, 'QIB (UK) Plc'),
(117, 'R. Raphael & Sons Plc'),
(118, 'Rathbone Investment Management Limited'),
(119, 'RBC Europe Limited'),
(120, 'RCI Bank UK Limited'),
(121, 'Redwood Bank Ltd'),
(122, 'Reliance Bank Ltd'),
(123, 'Revver Limited'),
(124, 'Royal Bank of Scotland Plc'),
(125, ' The Sainsbury’s Bank Plc'),
(126, 'Santander Financial Services plc'),
(127, 'Santander UK Plc'),
(128, 'State Bank Of India (UK) Limited'),
(129, 'Schroder & Co Ltd'),
(130, 'Scotiabank Europe Plc'),
(131, 'Secure Trust Bank Plc'),
(132, 'SG Kleinwort Hambros Bank Limited'),
(133, 'Shawbrook Bank Limited'),
(134, 'Sonali Bank (UK) Limited'),
(135, 'Standard Chartered Bank'),
(136, 'Starling Bank Limited'),
(137, 'Sumitomo Mitsui Banking Corporation Europe Limited'),
(138, 'Tandem Bank Limited'),
(139, 'TD Bank Europe Limited'),
(140, 'Tesco Personal Finance Plc'),
(141, 'Triodos UK Ltd'),
(142, ''),
(143, 'ABC International Bank Plc'),
(144, 'Access Bank UK Limited'),
(145, 'The ADIB (UK) Ltd '),
(146, 'Ahli United Bank (UK) PLC'),
(147, 'AIB Group (UK) Plc'),
(148, 'Al Rayan Bank PLC'),
(149, 'Aldermore Bank Plc'),
(150, 'Alliance Trust Savings Limited'),
(151, 'Allica Bank Ltd'),
(152, 'Alpha Bank London Limited'),
(153, 'Arbuthnot Latham & Co Limited'),
(154, 'Atom Bank PLC'),
(155, 'Axis Bank UK Limited'),
(156, 'Bank and Clients PLC'),
(157, 'Bank Leumi (UK) plc'),
(158, 'Bank Mandiri (Europe) Limited'),
(159, 'Bank Of Baroda (UK) Limited'),
(160, 'Bank of Beirut (UK) Ltd'),
(161, 'Bank of Ceylon (UK) Ltd'),
(162, 'Bank of China (UK) Ltd'),
(163, 'Bank of Ireland (UK) Plc'),
(164, 'Bank of London and The Middle East plc'),
(165, 'Bank of New York Mellon (International) Limited'),
(166, 'The HSBC Private Bank (UK) Limited Bank of Scotlan'),
(167, 'Bank of the Philippine Islands (Europe) PLC'),
(168, 'Bank Saderat Plc'),
(169, 'Bank Sepah International Plc'),
(170, 'Barclays Bank Plc'),
(171, 'Barclays Bank UK PLC'),
(172, 'Barclays Bank UK PLC'),
(173, 'BFC Bank Limited'),
(174, 'Bira Bank LimitedBMCE Bank International plc'),
(175, 'BMCE Bank International plc'),
(176, 'British Arab Commercial Bank Plc'),
(177, 'Brown Shipley & Co Limited'),
(178, 'C Hoare & Co'),
(179, 'CAF Bank Ltd'),
(180, 'Cambridge & Counties Bank Limited'),
(181, 'Castle Trust Capital PLC'),
(182, 'Cater Allen Limited'),
(183, 'Charity Bank Limited'),
(184, 'The Charter Court Financial Services Limited'),
(185, 'Chetwood Financial Limited'),
(186, 'China Construction Bank (London) Limited'),
(187, 'CIBC World Markets Plc'),
(188, 'Citibank UK Limited'),
(189, 'ClearBank Limited'),
(190, 'Close Brothers Limited'),
(191, 'Clydesdale Bank Plc'),
(192, 'Commonwealth Trade Bank Plc'),
(193, 'Co-operative Bank Plc'),
(194, 'The Coutts & Company'),
(195, 'Credit Suisse (UK) Limited'),
(196, 'Credit Suisse International'),
(197, 'Crown Agents Bank Limited'),
(198, 'Cynergy Bank Limited'),
(199, 'DB UK Bank Limited'),
(200, 'EFG Private Bank Limited'),
(201, 'Europe Arab Bank plc'),
(202, 'FBN Bank (UK) Ltd'),
(203, 'FCE Bank Plc'),
(204, 'FCMB Bank (UK) Limited'),
(205, 'Gatehouse Bank Plc'),
(206, 'Ghana International Bank Plc'),
(207, 'GKBK Limited'),
(208, 'Goldman Sachs International Bank'),
(209, 'Guaranty Trust Bank (UK) Limited'),
(210, 'Gulf International Bank (UK) Limited'),
(211, 'Habib Bank Zurich Plc'),
(212, 'Hampden & Co Plc'),
(213, 'Hampshire Trust Bank Plc'),
(214, 'Handelsbanken PLC'),
(215, 'Havin Bank Ltd'),
(216, 'HBL Bank UK Limited'),
(217, 'HSBC Bank Plc'),
(218, 'HSBC Private Bank (UK) Limited'),
(219, 'HSBC Trust Company (UK) Ltd'),
(220, 'HSBC UK Bank Plc'),
(221, 'ICBC (London) plc'),
(222, 'ICBC Standard Bank Plc'),
(223, 'ICICI Bank UK Plc'),
(224, 'Investec Bank PLC'),
(225, 'Itau BBA International PLC'),
(226, 'JN Bank UK Ltd'),
(227, 'J.P. Morgan Europe Limited'),
(228, 'J.P. Morgan Securities plc'),
(229, 'Jordan International Bank Plc'),
(230, 'Julian Hodge Bank Limited'),
(231, 'Kexim Bank (UK) Ltd'),
(232, 'Kingdom Bank Ltd'),
(233, 'Lloyds Bank Plc'),
(234, 'Lloyds Bank Corporate Markets Plc'),
(235, 'Macquarie Bank International Ltd'),
(236, 'Marks & Spencer Financial Services Plc'),
(237, 'Masthaven Bank Limited'),
(238, 'Melli Bank plc'),
(239, 'Methodist Chapel Aid Limited'),
(240, 'Metro Bank PLC'),
(241, 'Mizuho International Plc'),
(242, 'Monzo Bank Ltd'),
(243, 'Morgan Stanley Bank International Limited'),
(244, 'National Bank of Egypt (UK) Limited'),
(245, 'National Bank of Kuwait (International) Plc'),
(246, 'National Westminster Bank Plc'),
(247, 'NatWest Markets Plc'),
(248, 'Nomura Bank International Plc'),
(249, 'Northern Bank Limited'),
(250, 'OakNorth Bank plc'),
(251, 'OneSavings Bank Plc'),
(252, 'Oxbury FS Plc'),
(253, 'Paragon Bank Plc'),
(254, 'PCF Bank Limited'),
(255, 'Persia International Bank Plc'),
(256, 'Philippine National Bank (Europe) Plc'),
(257, 'Punjab National Bank (International) Limited '),
(258, 'QIB (UK) Plc'),
(259, 'R. Raphael & Sons Plc'),
(260, 'Rathbone Investment Management Limited'),
(261, 'RBC Europe Limited'),
(262, 'RCI Bank UK Limited'),
(263, 'Redwood Bank Ltd'),
(264, 'Reliance Bank Ltd'),
(265, 'Revver Limited'),
(266, 'Royal Bank of Scotland Plc'),
(267, ' The Sainsbury’s Bank Plc'),
(268, 'Santander Financial Services plc'),
(269, 'Santander UK Plc'),
(270, 'State Bank Of India (UK) Limited'),
(271, 'Schroder & Co Ltd'),
(272, 'Scotiabank Europe Plc'),
(273, 'Secure Trust Bank Plc'),
(274, 'SG Kleinwort Hambros Bank Limited'),
(275, 'Shawbrook Bank Limited'),
(276, 'Sonali Bank (UK) Limited'),
(277, 'Standard Chartered Bank'),
(278, 'Starling Bank Limited'),
(279, 'Sumitomo Mitsui Banking Corporation Europe Limited'),
(280, 'Tandem Bank Limited'),
(281, 'TD Bank Europe Limited'),
(282, 'Tesco Personal Finance Plc'),
(283, 'Triodos UK Ltd'),
(284, 'TSB Bank plc'),
(285, 'Turkish Bank (UK) Ltd'),
(286, 'Ulster Bank Ltd'),
(287, 'Union Bank of India (UK) Limited'),
(288, 'Union Bank UK Plc'),
(289, 'United Bank for Africa (UK) Limited'),
(290, 'United National Bank Limited'),
(291, 'United Trust Bank Limited'),
(292, 'Unity Trust Bank Plc'),
(293, 'Vanquis Bank Limited'),
(294, 'Virgin Money plc'),
(295, 'VTB Capital plc'),
(296, 'Weatherbys Bank Limited'),
(297, 'Wesleyan Bank Limited'),
(298, 'Westpac Europe Ltd'),
(299, 'Wyelands Bank Plc'),
(300, 'Zenith Bank (UK) Limited'),
(301, 'Zopa Bank Limited'),
(302, 'Turkish Bank (UK) Ltd'),
(303, 'Ulster Bank Ltd'),
(304, 'Union Bank of India (UK) Limited'),
(305, 'Union Bank UK Plc'),
(306, 'United Bank for Africa (UK) Limited'),
(307, 'United National Bank Limited'),
(308, 'United Trust Bank Limited'),
(309, 'Unity Trust Bank Plc'),
(310, 'Vanquis Bank Limited'),
(311, 'Virgin Money plc'),
(312, 'VTB Capital plc'),
(313, 'Weatherbys Bank Limited'),
(314, 'Wesleyan Bank Limited'),
(315, 'Westpac Europe Ltd'),
(316, 'Wyelands Bank Plc'),
(317, 'Zenith Bank (UK) Limited'),
(318, 'Zopa Bank Limited');

-- --------------------------------------------------------

--
-- Table structure for table `usbank`
--

CREATE TABLE `usbank` (
  `id` int(11) NOT NULL,
  `name` varchar(69) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usbank`
--

INSERT INTO `usbank` (`id`, `name`) VALUES
(1, 'Abacus Federal Savings Bank'),
(2, 'Abbeville Building & Loan'),
(3, 'Abbeville First Bank, SSB'),
(4, 'AbbyBank'),
(5, 'ABINGTON BANK'),
(6, 'Academy Bank'),
(7, 'ACB Bank'),
(8, 'Access Bank'),
(9, 'AccessBank Texas'),
(10, 'ACNB Bank'),
(11, 'Adams Bank & Trust'),
(12, 'Adams Community Bank'),
(13, 'Adams County Bank'),
(14, 'Adams State Bank'),
(15, '1st National Bank'),
(16, 'Academy Bank'),
(17, 'ADP Trust Company'),
(18, 'Albany Bank and Trust Company'),
(19, 'Alerus Financial'),
(20, 'Amarillo National Bank'),
(21, 'Amerant Bank'),
(22, 'Amerant Trust'),
(23, 'American Bank and Trust Company'),
(24, 'American Bank'),
(25, 'American Commerce Bank'),
(26, 'American Express National Bank'),
(27, 'American First National Bank'),
(28, 'American Heritage National Bank'),
(29, 'American National Bank'),
(30, 'Adirondack Bank Utica'),
(31, 'Adrian Bank Adrian'),
(32, 'Adrian State Bank Adrian'),
(33, 'Affinity Bank Covington'),
(34, 'AIG Federal Savings Bank'),
(35, 'Alamerica Bank Birmingham'),
(36, 'Alamosa State Bank'),
(37, 'Albany Bank and Trust Company'),
(38, 'Alden State Bank'),
(39, 'Alerus Financial'),
(40, 'Algonquin State Bank'),
(41, 'All America Bank'),
(42, 'Allegiance Bank Houston'),
(43, 'Alliance Bank'),
(44, 'American Plus Bank'),
(45, 'AMG National Trust Bank'),
(46, 'Anahuac National Bank'),
(47, 'Anchorage Digital Bank'),
(48, 'Anna-Jonesboro National Bank'),
(49, 'Armed Forces Bank'),
(50, 'Asian Pacific National Bank'),
(51, 'Associated Bank'),
(52, 'Associated Trust Company'),
(53, 'Atlantic Capital Bank'),
(54, 'Austin Bank'),
(55, 'Axiom Bank'),
(56, 'Alliance Bank Topeka'),
(57, 'Alliance Bank & Trust Company'),
(58, 'Alliance Bank Central Texas'),
(59, 'Alliance Community Bank Petersburg'),
(60, 'Alliant Bank Madison'),
(61, 'Allied First Bank'),
(62, 'AllNations Bank Calumet'),
(63, 'Ally Bank'),
(64, 'Alma Bank'),
(65, 'Alpine Bank'),
(66, 'Alpine Capital Bank'),
(67, 'Altabank American Fork'),
(68, 'Altamaha Bank & Trust Company Vidalia'),
(69, 'Alton Bank Alton'),
(70, 'Altoona First Savings Bank Altoona'),
(71, 'Alva State Bank & Trust Company Alva'),
(72, 'Amalgamated Bank New York'),
(73, 'Amalgamated Bank of Chicago Chicago'),
(74, 'Amarillo National Bank Amarillo'),
(75, 'Ambler Savings Bank'),
(76, 'Amboy Bank Old Bridge'),
(77, 'Amerant Bank'),
(78, 'Amerasia Bank Flushing'),
(79, 'America\'s Community Bank'),
(80, 'American Bank'),
(81, 'American Bank & Trust Wessington Springs'),
(82, 'American Bank & Trust Company Opelousas'),
(83, 'American Bank & Trust Company Covington'),
(84, 'American Bank & Trust Company'),
(85, 'American Bank & Trust of the Cumberlands Livingston'),
(86, 'American Bank and Trust Company Tulsa'),
(87, 'American Bank and Trust Company'),
(88, 'American Bank Center Dickinson'),
(89, 'American Bank of Baxter Springs Baxter Springs'),
(90, 'American Bank of Beaver Dam Beaver Dam'),
(91, 'American Bank of Commerce Wolfforth'),
(92, 'American Bank of Missouri Wellsville'),
(93, 'American Bank of Oklahoma Collinsville'),
(94, 'American Bank of the Carolinas Monroe'),
(95, 'American Bank of the North'),
(96, 'American Business Bank Los Angeles'),
(97, 'American Commerce Bank'),
(98, 'American Community Bank Glen Cove'),
(99, 'American Community Bank & Trust Woodstock'),
(100, 'American Community Bank of Indiana'),
(101, 'American Continental Bank'),
(102, 'American Eagle Bank South Elgin'),
(103, 'American Equity Bank Minnetonka'),
(104, 'American Exchange Bank'),
(105, 'American Express National Bank Sandy'),
(106, 'American Federal Bank Fargo'),
(107, 'American First National Bank Houston'),
(108, 'American Heritage Bank Sapulpa'),
(109, 'American Heritage Bank Clovis'),
(110, 'American Heritage National Bank Long Prairie'),
(111, 'American Interstate Bank Elkhorn'),
(112, 'American Investors Bank and Mortgage Eden Prairie'),
(113, 'American Metro Bank Chicago'),
(114, 'American Momentum Bank'),
(115, 'Axos Bank'),
(116, 'Baker Boyer National Bank'),
(117, 'Ballston Spa National Bank'),
(118, 'Banc of California'),
(119, '12152 BancCentral'),
(120, '4975 Bank First'),
(121, '24077 Bank of America California'),
(122, 'Bank of Brenham'),
(123, 'Bank of Bridger'),
(124, 'Bank of Brookfield-Purdin'),
(125, 'Bank of Desoto'),
(126, 'Bank of Hillsboro'),
(127, 'Bank of Houston'),
(128, 'Bank of Southern California'),
(129, 'Bank of Whittier'),
(130, 'BankChampaign'),
(131, 'BankFinancial'),
(132, 'BankUnited'),
(133, 'Barrington Bank & Trust Company'),
(134, 'Beacon Business Bank'),
(135, 'Bessemer Trust Company of California'),
(136, 'Bessemer Trust Company of Delaware'),
(137, 'Bessemer Trust Company'),
(138, 'Beverly Bank & Trust Company'),
(139, 'Big Bend Banks'),
(140, 'Black Hills Community Bank'),
(141, 'Blackrock Institutional Trust Company'),
(142, 'Blue Ridge Bank'),
(143, 'BMO Harris Bank'),
(144, 'BMO Harris Central National Association'),
(145, 'b1BANK Baton Rouge'),
(146, 'BAC Community Bank Stockton'),
(147, 'Badger Bank Fort Atkinson'),
(148, 'Baker-Boyer National Bank'),
(149, 'Balboa Thrift and Loan Association Chula Vista'),
(150, 'Ballston Spa National Bank Ballston Spa'),
(151, 'Banc of California'),
(152, 'BancCentral'),
(153, 'BancFirst Oklahoma City'),
(154, 'Banco do Brasil Americas Miami'),
(155, 'Banco Popular de Puerto Rico San Juan'),
(156, 'BancorpSouth Bank Tupelo'),
(157, 'Bandera Bank Bandera'),
(158, 'Banesco USA Coral Gables'),
(159, 'Bangor Savings Bank'),
(160, 'Bank Northwest Hamilton'),
(161, 'Bank of Abbeville & Trust Company Abbeville'),
(162, 'Bank of Alapaha Alapaha'),
(163, 'Bank of Alma Alma'),
(164, 'Bank of America California'),
(165, 'Bank of America Charlotte'),
(166, 'Bank of Anguilla Anguilla'),
(167, 'Bank of Ann Arbor Ann Arbor'),
(168, 'Bank of Baroda New York'),
(169, 'Bank of Bartlett Bartlett'),
(170, 'Bank of Bearden Bearden'),
(171, 'Bank of Belle Glade Belle Glade'),
(172, 'Bank of Belleville Belleville'),
(173, 'Bank of Bennington Bennington'),
(174, 'Bank of Billings'),
(175, 'Bank of Bird-in-Hand'),
(176, 'Bank of Blue Valley'),
(177, 'Bank of Bluffs'),
(178, 'Bank of Botetourt'),
(179, 'Bank of Bozeman'),
(180, 'Bank of Brenham'),
(181, 'Bank of Brewton'),
(182, 'Bank of Bridger'),
(183, 'Bank of Brookfield'),
(184, 'Bank of Brookhaven'),
(185, 'Bank of Buffalo'),
(186, 'Bank of Cadiz and Trust Company Cadiz'),
(187, 'Bank of Calhoun County Hardin'),
(188, 'Bank of Camilla Camilla'),
(189, 'Bank of Cashton'),
(190, 'Bank of Cattaraugus'),
(191, 'Bank of Cave City'),
(192, 'Bank of Central Florida Lakeland'),
(193, 'Bank of Charles Town'),
(194, 'Bank of Cherokee County Hulbert'),
(195, 'Bank of Chestnut'),
(196, 'Bank of China'),
(197, 'Bank of Clarke County'),
(198, 'Bank of Clarks'),
(199, 'Bank of Clarkson'),
(200, 'Bank of Clevelan'),
(201, 'Bank of Colorado'),
(202, 'Bank of Columbia'),
(203, 'Bank of Commerce'),
(204, 'Bank of Cordell Cordell'),
(205, 'Bank of Coushatta Coushatta'),
(206, 'Bank of Crocker Waynesville'),
(207, 'Bank of Crockett Bells'),
(208, 'Bank of Dade Trenton'),
(209, 'Bank of Dawson'),
(210, 'Bank of Deerfield'),
(211, 'Bank of Delight'),
(212, 'BNC National Bank'),
(213, 'BNY Mellon'),
(214, 'BOKF'),
(215, 'Brazos National Bank'),
(216, 'Bremer Bank'),
(217, 'Broadway National Bank 1177 N.E. Loop 410 San Antonio TX 15797 474254'),
(218, 'Brown Brothers Harriman Trust Company'),
(219, 'BTH Bank'),
(220, 'Buena Vista National Bank'),
(221, 'Business Bank of Texas'),
(222, 'Bank of Denton Denton'),
(223, 'Bank of DeSoto'),
(224, 'Bank of Dickson Dickson'),
(225, 'Bank of Dixon County Ponca'),
(226, 'Bank of Doniphan Doniphan'),
(227, 'Bank of Dudley Dudley'),
(228, 'Bank of Eastern Oregon Heppner'),
(229, 'Bank of Easton North Easton'),
(230, 'Bank of Edmonson County Brownsville'),
(231, 'Bank of Elgin'),
(232, 'Bank of England'),
(233, 'Bank of Erath'),
(234, 'Bank of Estes Park'),
(235, 'Bank of Eufaula Eufaula'),
(236, 'Bank of Evergreen'),
(237, 'Bank of Farmington'),
(238, 'Bank of Feather River Yuba City'),
(239, 'Bank of Frankewing'),
(240, 'Bank of Franklin Meadville'),
(241, 'Bank of Franklin County Washington'),
(242, 'Bank of George Las Vegas'),
(243, 'Bank of Gibson City'),
(244, 'Bank of Gleason'),
(245, 'Bank of Grand Lake'),
(246, 'Bank of Grandin'),
(247, 'Bank of Gravette'),
(248, 'Bank of Greeley'),
(249, 'Bank of Greeleyville'),
(250, 'Bank of Guam'),
(251, 'Bank of Gueydan'),
(252, 'Bank of Halls'),
(253, 'Bank of Hancock County Sparta'),
(254, 'Bank of Hartington'),
(255, 'Bank of Hawaii Honolulu'),
(256, 'Bank of Hays'),
(257, 'Bank of Hazelton'),
(258, 'Bank of Hazlehurst'),
(259, 'Bank of Hillsboro'),
(260, 'Bank of Hindman'),
(261, 'Bank of Holland'),
(262, 'Bank of Holly Springs'),
(263, 'Bank of Holyrood'),
(264, 'Bank of Hope'),
(265, 'Bank of Houston'),
(266, 'Bank of Hydro'),
(267, 'Bank of Iberia'),
(268, 'Bank of Idaho Idaho Falls'),
(269, 'Bank of India New York'),
(270, 'Bank of Jackson Hole'),
(271, 'Bank of Jamestown'),
(272, 'Bank of Kampsville'),
(273, 'Bank of Kilmichael'),
(274, 'Bank of Kirksville'),
(275, 'Bank of Labor Kansas City'),
(276, 'Bank of Lake Mills'),
(277, 'Bank of Lake Village'),
(278, 'Bank of Lewellen'),
(279, 'Bank of Lexington'),
(280, 'Bank of Lincoln County Fayetteville'),
(281, 'Bank of Lindsay'),
(282, 'Bank of Montana Missoula'),
(283, 'Bank of Montgomery'),
(284, 'Bank of Monticello'),
(285, 'Bank of Morton'),
(286, 'Bank of Moundville'),
(287, 'Bank of New Cambria'),
(288, 'Bank of New Hampshire'),
(289, 'Bank of New Madrid'),
(290, 'Bank of Newington'),
(291, 'Bank of Newman Grove'),
(292, 'Bank of O\'Fallon'),
(293, 'Bank of Oak Ridge'),
(294, 'Bank of Little Rock'),
(295, 'Bank of Locust Grove'),
(296, 'Bank of Louisiana'),
(297, 'Bank of Lumber City'),
(298, 'Bank of Luxemburg'),
(299, 'Bank of Madison'),
(300, 'Bank of Maple'),
(301, 'Bank of Marin'),
(302, 'Bank of Mauston'),
(303, 'Bank of Maysville'),
(304, 'Bank of Mead'),
(305, 'Bank of Millbrook'),
(306, 'Bank of Milton'),
(307, 'Bank of Mingo'),
(308, 'C3bank'),
(309, 'Cadence Bank'),
(310, 'California First National Bank'),
(311, 'California International Bank, A National Banking Association'),
(312, 'Canandaigua National Trust Company of Florida'),
(313, 'Canyon Community Bank'),
(314, 'Capital Bank'),
(315, 'Capital One Bank (USA)'),
(316, 'Capital One'),
(317, 'Capitol National Bank'),
(318, 'Cayuga Lake National Bank'),
(319, 'Cedar Hill National Bank'),
(320, 'Cendera Bank'),
(321, 'Center National Bank'),
(322, 'Central National Bank'),
(323, 'Central National Bank'),
(324, 'CenTrust Bank'),
(325, 'CFBank'),
(326, 'Chain Bridge Bank'),
(327, 'Champlain National Bank'),
(328, 'Chester National Bank'),
(329, 'Chilton Trust Company'),
(330, 'Chino Commercial Bank'),
(331, 'CIBC National Trust Company'),
(332, 'CIT Bank'),
(333, 'Citibank, N.A.'),
(334, 'Citicorp Trust Delaware'),
(335, 'Citizens Bank'),
(336, 'Citizens Bank'),
(337, 'Citizens Community Federal National Association'),
(338, 'Citizens National Bank'),
(339, 'Citizens National Bank'),
(340, 'Citizens National Bank'),
(341, 'Citizens National Bank at Brownwood'),
(342, 'Citizens National Bank of Albion'),
(343, 'Citizens National Bank of Cheboygan'),
(344, 'Citizens National Bank of Crosbyton'),
(345, 'Citizens National Bank of Texas'),
(346, 'Citizens National Bank'),
(347, 'City First Bank of D.C.'),
(348, 'City National Bank'),
(349, 'City National Bank'),
(350, 'City National Bank of Florida'),
(351, 'City National Bank of West Virginia'),
(352, 'Clare Bank'),
(353, 'Classic Bank'),
(354, 'CNB Bank & Trust'),
(355, 'Coastal Carolina National Bank'),
(356, 'Comerica Bank & Trust'),
(357, 'Commerce National Bank & Trust'),
(358, 'Commercial Bank of Texas'),
(359, 'Commercial National Bank of Texarkana'),
(360, 'Commonwealth National Bank'),
(361, 'Community Bank'),
(362, 'Community First Bank'),
(363, 'Community First National Bank'),
(364, 'Community National Bank'),
(365, 'Community National Bank'),
(366, 'Community National Bank'),
(367, 'Community National Bank'),
(368, 'Community National Bank & Trust'),
(369, 'Community National Bank & Trust of Texas'),
(370, 'Community National Bank in Monmouth'),
(371, 'Community National Bank of Okarche'),
(372, 'Community West Bank'),
(373, 'CommunityBank of Texas'),
(374, 'Computershare Trust Company'),
(375, 'Connecticut Community Bank'),
(376, 'Consumers National Bank'),
(377, 'Cornerstone Bank'),
(378, 'Cornerstone National Bank & Trust Company'),
(379, 'Cortrust Bank National Association'),
(380, 'Country Club Trust Company'),
(381, 'County National Bank'),
(382, 'Credit First National Association'),
(383, 'Credit One Bank'),
(384, 'Crockett National Bank'),
(385, 'Crystal Lake Bank & Trust Company'),
(386, 'Cumberland Valley National Bank & Trust Company'),
(387, 'Dakota Community Bank & Trust'),
(388, 'Dallas Capital Bank'),
(389, 'Delta National Bank and Trust Company'),
(390, 'Department Stores National Bank'),
(391, 'Desjardins Bank'),
(392, 'Deutsche Bank National Trust Company'),
(393, 'Deutsche Bank Trust Company'),
(394, 'DNB National Bank'),
(395, 'Douglas National Bank'),
(396, 'DSRM National Bank'),
(397, 'Eastbank'),
(398, 'Eastern National Bank'),
(399, 'Edison National Bank'),
(400, 'EH National Bank'),
(401, 'Embassy National Bank'),
(402, 'Esquire Bank'),
(403, 'Evans Bank'),
(404, 'Evercore Trust Company'),
(405, 'Evergreen National Bank'),
(406, 'Extraco Banks'),
(407, 'F&M Community Bank'),
(408, 'Falcon National Bank'),
(409, 'Farmers National Bank'),
(410, 'Farmers National Bank'),
(411, 'Farmers National Bank of Griggsville'),
(412, 'FCN Bank'),
(413, 'Fidelity Bank'),
(414, 'Fifth Third Bank'),
(415, 'Finemark National Bank & Trust'),
(416, 'First & Farmers National Bank, Inc.'),
(417, 'First American National Bank'),
(418, 'First Bankers Trust Company'),
(419, 'First Century Bank'),
(420, 'First Citizens National Bank'),
(421, 'First Colorado National Bank'),
(422, 'First Commercial Bank'),
(423, 'First Community National Bank'),
(424, 'First Community Trust'),
(425, 'First Dakota National Bank'),
(426, 'First Farmers & Merchants National Bank'),
(427, 'First Farmers & Merchants National Bank'),
(428, 'First Federal Community Bank'),
(429, 'First Financial Bank'),
(430, 'First Financial Bank'),
(431, 'First Financial Trust & Asset Management Company'),
(432, 'First Financial Trust'),
(433, 'First Hope Bank, A National Banking Association'),
(434, 'First Mid Bank & Trust'),
(435, 'First National Bank & Trust'),
(436, 'First National Bank & Trust Company'),
(437, 'First National Bank & Trust Company of McAlester'),
(438, 'First National Bank Alaska'),
(439, 'First National Bank Albany/Breckenridge'),
(440, 'First National Bank and Trust'),
(441, 'First National Bank and Trust'),
(442, 'First National Bank and Trust Co. of Bottineau'),
(443, 'First National Bank and Trust Company'),
(444, 'First National Bank and Trust Company of Ardmore'),
(445, 'First National Bank and Trust Company of Weatherford'),
(446, 'First National Bank at Darlington'),
(447, 'First National Bank in Cimarron'),
(448, 'First National Bank in DeRidder'),
(449, 'First National Bank in Fairfield'),
(450, 'First National Bank in Frankfort'),
(451, 'First National Bank in Fredonia'),
(452, 'First National Bank in Howell'),
(453, 'First National Bank in New Bremen'),
(454, 'First National Bank in Okeene'),
(455, 'First National Bank in Olney'),
(456, 'First National Bank in Ord'),
(457, 'First National Bank in Philip'),
(458, 'First National Bank in Pinckneyville'),
(459, 'First National Bank in Port Lavaca'),
(460, 'First National Bank in Taylorville'),
(461, 'First National Bank in Tigerton'),
(462, 'First National Bank Minnesota'),
(463, 'First National Bank North'),
(464, 'First National Bank Northwest Florida'),
(465, 'First National Bank of Alvin'),
(466, 'First National Bank of America'),
(467, 'First National Bank of Anderson'),
(468, 'First National Bank of Beardstown'),
(469, 'First National Bank of Benton'),
(470, 'First National Bank of Bosque County'),
(471, 'First National Bank of Brookfield'),
(472, 'First National Bank of Burleson'),
(473, 'First National Bank of Central Texas'),
(474, 'First National Bank of Chadron'),
(475, 'First National Bank of Clarksdale'),
(476, 'First National Bank of Coffee County'),
(477, 'First National Bank of Decatur County'),
(478, 'First National Bank of Dublin'),
(479, 'First National Bank of Eastern Arkansas'),
(480, 'First National Bank of Fort Stockton'),
(481, 'First National Bank of Giddings'),
(482, 'First National Bank of Gillette'),
(483, 'First National Bank of Griffin'),
(484, 'First National Bank of Hereford'),
(485, 'First National Bank of Huntsville'),
(486, 'First National Bank of Kansas'),
(487, 'First National Bank of Kentucky'),
(488, 'First National Bank of Lake Jackson'),
(489, 'First National Bank of Las Animas'),
(490, 'First National Bank of Louisiana'),
(491, 'First National Bank of McGregor'),
(492, 'First National Bank of Michigan'),
(493, 'First National Bank of Muscatine'),
(494, 'First National Bank of Nokomis'),
(495, 'First National Bank of North Arkansas'),
(496, 'First National Bank of Oklahoma'),
(497, 'First National Bank of Omaha'),
(498, 'First National Bank of Pana'),
(499, 'First National Bank of Pasco'),
(500, 'First National Bank of Pennsylvania'),
(501, 'First National Bank of Picayune'),
(502, 'First National Bank of Pulaski'),
(503, 'First National Bank of River Falls'),
(504, 'First National Bank of Scotia'),
(505, 'First National Bank of South Carolina'),
(506, 'First National Bank of South Padre Island'),
(507, 'First National Bank of Steeleville'),
(508, 'First National Bank of Tennessee'),
(509, 'First National Bank of Wauchula'),
(510, 'First National Bank of Winnsboro'),
(511, 'First National Bank Texas'),
(512, 'First National Bank USA'),
(513, 'First National Bank, Ames, Iowa'),
(514, 'First National Bank, Cortez'),
(515, 'First National Bankers Bank'),
(516, 'First National Community Bank'),
(517, 'First National Community Bank'),
(518, 'First National Trust Company'),
(519, 'First Neighbor Bank'),
(520, 'First Pioneer National Bank'),
(521, 'First Robinson Savings Bank'),
(522, 'First Southern National Bank'),
(523, 'First Texoma National Bank'),
(524, 'First United National Bank'),
(525, 'FirstCapital Bank of Texas'),
(526, 'First-Lockhart National Bank'),
(527, 'Florida Capital Bank'),
(528, 'Forcht Bank'),
(529, 'Forest Park National Bank and Trust Company'),
(530, 'FSNB'),
(531, 'Fulton Bank'),
(532, 'Gilmer National Bank'),
(533, 'Glens Falls National Bank and Trust Company'),
(534, 'GNBank'),
(535, 'Golden Bank'),
(536, 'Golden Pacific Bank'),
(537, 'Goldwater Bank'),
(538, 'Grand Ridge National Bank'),
(539, 'Grasshopper Bank'),
(540, 'Great Plains National Bank'),
(541, 'Greenville National Bank'),
(542, 'Guaranty Bank & Trust'),
(543, 'Haskell National Bank'),
(544, 'Hawaii National Bank'),
(545, 'Heartland National Bank'),
(546, 'Heritage Bank'),
(547, 'Hiawatha National Bank'),
(548, 'Hilltop National Bank'),
(549, 'Hinsdale Bank & Trust Company'),
(550, 'HNB National Bank'),
(551, 'Home Bank'),
(552, 'Home National Bank'),
(553, 'Home State Bank / National Association'),
(554, 'Hometown Bank'),
(555, 'Hometown National Bank'),
(556, 'HSBC Bank USA'),
(557, 'HSBC Trust Company (Delaware)'),
(558, 'INB'),
(559, 'Incommons Bank'),
(560, 'Industrial and Commercial Bank of China (USA)'),
(561, 'Intercredit Bank'),
(562, 'Intrust Bank'),
(563, 'Investar Bank'),
(564, 'Inwood National Bank'),
(565, 'JPMorgan Chase Bank'),
(566, 'Junction National Bank'),
(567, 'KEB Hana Bank USA'),
(568, 'Key National Trust Company of Delaware'),
(569, 'KeyBank National Association'),
(570, 'Keystone Bank'),
(571, 'Kingston National Bank'),
(572, 'Kleberg Bank'),
(573, 'Kress National Bank'),
(574, 'Lake Forest Bank & Trust Company'),
(575, 'Lamar National Bank'),
(576, 'Landmark National Bank'),
(577, 'LCNB National Bank'),
(578, 'Leader Bank'),
(579, 'Ledyard National Bank'),
(580, 'Legacy National Bank'),
(581, 'Legacy Trust Company'),
(582, 'Legend Bank'),
(583, 'LendingClub Bank'),
(584, 'Liberty National Bank'),
(585, 'Liberty National Bank'),
(586, 'Liberty National Bank'),
(587, 'Libertyville Bank & Trust Company'),
(588, 'Llano National Bank'),
(589, 'Lone Star Capital Bank'),
(590, 'Lone Star National Bank'),
(591, 'Malvern Bank'),
(592, 'Mason City National Bank'),
(593, 'Mccurtain County National Bank'),
(594, 'Merchants Bank'),
(595, 'MetaBank'),
(596, 'Midamerica National Bank'),
(597, 'Mid-Central National Bank'),
(598, 'Midstates Bank'),
(599, 'Midwest Bank'),
(600, 'Millbury National Bank'),
(601, 'Minnesota National Bank'),
(602, 'Minnstar Bank National Association'),
(603, 'Mission National Bank'),
(604, 'Modern Bank'),
(605, 'Moody National Bank'),
(606, 'Morgan Stanley Bank, N.A.'),
(607, 'Morgan Stanley Private Bank'),
(608, 'Mountain Valley Bank'),
(609, 'MUFG Union Bank'),
(610, 'Natbank'),
(611, 'National Advisors Trust Company'),
(612, 'National Bank & Trust'),
(613, 'National Bank of Commerce'),
(614, 'National Bank of New York City'),
(615, 'National Bank of St. Anne'),
(616, 'National Cooperative Bank, N.A.'),
(617, 'National Exchange Bank and Trust'),
(618, 'National United'),
(619, 'Native American Bank'),
(620, 'NBT Bank'),
(621, 'Nebraskaland National Bank'),
(622, 'Neighborhood National Bank'),
(623, 'Neighborhood National Bank'),
(624, 'Neuberger Berman Trust Company National Association'),
(625, 'Neuberger Berman Trust Company of Delaware National Association'),
(626, 'New Covenant Trust Company'),
(627, 'New Horizon Bank'),
(628, 'New Omni Bank'),
(629, 'Newfield National Bank'),
(630, 'Newfirst National Bank'),
(631, 'NexTier Bank'),
(632, 'Nicolet National Bank'),
(633, 'North Georgia National Bank'),
(634, 'Northbrook Bank & Trust Company'),
(635, 'Northern California National Bank'),
(636, 'Northern Interstate Bank'),
(637, 'Northwestern Bank'),
(638, 'Natbank'),
(639, 'National Advisors Trust Company'),
(640, 'National Bank & Trust'),
(641, 'National Bank of Commerce'),
(642, 'National Bank of New York City'),
(643, 'National Bank of St. Anne'),
(644, 'National Cooperative Bank, N.A.'),
(645, 'National Exchange Bank and Trust'),
(646, 'National United'),
(647, 'Native American Bank'),
(648, 'NBT Bank'),
(649, 'Nebraskaland National Bank'),
(650, 'Neighborhood National Bank'),
(651, 'Neighborhood National Bank'),
(652, 'Neuberger Berman Trust Company National Association'),
(653, 'Neuberger Berman Trust Company of Delaware National Association'),
(654, 'New Covenant Trust Company'),
(655, 'New Horizon Bank'),
(656, 'New Omni Bank'),
(657, 'Newfield National Bank'),
(658, 'Newfirst National Bank'),
(659, 'NexTier Bank'),
(660, 'Nicolet National Bank'),
(661, 'North Georgia National Bank'),
(662, 'Northbrook Bank & Trust Company'),
(663, 'Northern California National Bank'),
(664, 'Northern Interstate Bank'),
(665, 'Northwestern Bank'),
(666, 'Pacific National Bank'),
(667, 'Panola National Bank'),
(668, 'Patriot Bank'),
(669, 'Peoples National Bank of Kewanee'),
(670, 'Peoples National Bank, N.A.'),
(671, 'People\'s United Bank'),
(672, 'Pike National Bank'),
(673, 'Pikes Peak National Bank'),
(674, 'Pioneer Trust Bank'),
(675, 'PNC Bank'),
(676, 'Powell Valley National Bank'),
(677, 'Progressive National Bank'),
(678, 'Quail Creek Bank'),
(679, 'Quantum National Bank'),
(680, 'Queensborough National Bank & Trust Company'),
(681, 'Ramsey National Bank'),
(682, 'Range Bank'),
(683, 'Raymond James Bank'),
(684, 'Raymond James Trust'),
(685, 'RBC Bank (Georgia)'),
(686, 'Relyance Bank'),
(687, 'Resource Bank'),
(688, 'Rockefeller Trust Company'),
(689, 'RockPoint Bank'),
(690, 'Safra National Bank of New York'),
(691, 'Santander Bank'),
(692, 'Saratoga National Bank and Trust Company'),
(693, 'Savannah Bank National Association'),
(694, 'Schaumburg Bank & Trust Company'),
(695, 'Seacoast National Bank'),
(696, 'Securian Trust Company'),
(697, 'Security First National Bank of Hugo'),
(698, 'Security National Bank'),
(699, 'Security National Bank of Omaha'),
(700, 'Security National Bank of South Dakota'),
(701, 'Security National Trust Co.'),
(702, 'Shamrock Bank'),
(703, 'Signature Bank'),
(704, 'Skyline National Bank'),
(705, 'SNB Bank'),
(706, 'Solera National Bank'),
(707, 'South State Bank'),
(708, 'SouthCrest Bank'),
(709, 'Southeast First National Bank'),
(710, 'Southtrust Bank'),
(711, 'Southwest National Bank'),
(712, 'Southwestern National Bank'),
(713, 'St. Charles Bank & Trust Company'),
(714, 'St. Martin National Bank'),
(715, 'State Bank of the Lakes'),
(716, 'State Street Bank and Trust Company National Association'),
(717, 'State Street Bank and Trust Company of California'),
(718, 'Stearns Bank Holdingford National Association'),
(719, 'Stearns Bank National Association'),
(720, 'Stearns Bank Upsala National Association'),
(721, 'Sterling National Bank'),
(722, 'Stifel Trust Company Delaware'),
(723, 'Stifel Trust Company'),
(724, 'Stillman Banccorp National Association'),
(725, 'Stockmens National Bank in Cotulla'),
(726, 'Stride Bank'),
(727, 'Stroud National Bank'),
(728, 'Summit National Bank'),
(729, 'Sunflower Bank'),
(730, 'Sunrise Banks'),
(731, 'Superior National Bank'),
(732, 'Synovus Trust Company'),
(733, 'T Bank'),
(734, 'TCF National Bank'),
(735, 'TCM Bank'),
(736, 'TD Bank USA'),
(737, 'TD Bank'),
(738, 'Terrabank National Association'),
(739, 'Texan Bank'),
(740, 'Texana Bank'),
(741, 'Texas Advantage Community Bank'),
(742, 'Texas Capital Bank'),
(743, 'Texas Citizens Bank'),
(744, 'Texas Gulf Bank'),
(745, 'Texas Heritage National Bank'),
(746, 'Texas National Bank'),
(747, 'Texas National Bank'),
(748, 'Texas National Bank of Jacksonville'),
(749, 'Texas Republic Bank'),
(750, 'TexStar National Bank'),
(751, 'The American National Bank of Mount Pleasant'),
(752, 'The American National Bank of Texas'),
(753, 'The Atlanta National Bank'),
(754, 'The Bank National Association'),
(755, 'The Bank of New York Mellon Trust Company'),
(756, 'The Bradford National Bank of Greenville'),
(757, 'The Brady National Bank'),
(758, 'The Brenham National Bank'),
(759, 'The Camden National Bank'),
(760, 'The Canandaigua National Bank and Trust Company'),
(761, 'The Central National Bank of Poteau'),
(762, 'The Chicago Trust Company'),
(763, 'The Citizens First National Bank of Storm Lake'),
(764, 'The Citizens National Bank'),
(765, 'The Citizens National Bank of Bluffton'),
(766, 'The Citizens National Bank of Hammond'),
(767, 'The Citizens National Bank of Hillsboro'),
(768, 'The Citizens National Bank of Lebanon'),
(769, 'The Citizens National Bank of McConnelsville'),
(770, 'The Citizens National Bank of Meridian'),
(771, 'The Citizens National Bank of Park Rapids'),
(772, 'The Citizens National Bank of Quitman'),
(773, 'The Citizens National Bank of Somerset'),
(774, 'The Citizens National Bank of Woodsfield'),
(775, 'The City National Bank and Trust Company of Lawton, Oklahoma'),
(776, 'The City National Bank of Colorado City'),
(777, 'The City National Bank of Metropolis'),
(778, 'The City National Bank of San Saba'),
(779, 'The City National Bank of Sulphur Springs'),
(780, 'The City National Bank of Taylor'),
(781, 'The Clinton National Bank'),
(782, 'The Commercial National Bank of Brady'),
(783, 'The Conway National Bank'),
(784, 'The Delaware National Bank of Delhi'),
(785, 'The Ephrata National Bank'),
(786, 'The Fairfield National Bank'),
(787, 'The Falls City National Bank'),
(788, 'The Farmers and Merchants National Bank of Fairview'),
(789, 'The Farmers and Merchants National Bank of Nashville'),
(790, 'The Farmers\' National Bank of Canfield'),
(791, 'The Farmers National Bank of Danville'),
(792, 'The Farmers National Bank of Emlenton'),
(793, 'The Farmers National Bank of Lebanon'),
(794, 'The Fayette County National Bank of Fayetteville'),
(795, 'The First Central National Bank of St. Paris'),
(796, 'The First Citizens National Bank of Upper Sandusky'),
(797, 'The First Farmers National Bank of Waurika'),
(798, 'The First Liberty National Bank'),
(799, 'The First National Bank'),
(800, 'The First National Bank & Trust Co. of Iron Mountain'),
(801, 'The First National Bank and Trust Co.'),
(802, 'The First National Bank and Trust Company'),
(803, 'The First National Bank and Trust Company of Broken Arrow'),
(804, 'The First National Bank and Trust Company of Miami'),
(805, 'The First National Bank and Trust Company of Newtown'),
(806, 'The First National Bank and Trust Company of Okmulgee'),
(807, 'The First National Bank and Trust Company of Vinita'),
(808, 'The First National Bank at Paris'),
(809, 'The First National Bank at St. James'),
(810, 'The First National Bank in Amboy'),
(811, 'The First National Bank in Carlyle'),
(812, 'The First National Bank in Cooper'),
(813, 'The First National Bank in Creston'),
(814, 'The First National Bank in Falfurrias'),
(815, 'The First National Bank in Marlow'),
(816, 'The First National Bank in Sioux Falls'),
(817, 'The First National Bank in Tremont'),
(818, 'The First National Bank in Trinidad'),
(819, 'The First National Bank of Absecon'),
(820, 'The First National Bank of Allendale'),
(821, 'The First National Bank of Anson'),
(822, 'The First National Bank of Arenzville'),
(823, 'The First National Bank of Aspermont'),
(824, 'The First National Bank of Assumption'),
(825, 'The First National Bank of Ava'),
(826, 'The First National Bank of Ballinger'),
(827, 'The First National Bank of Bangor'),
(828, 'The First National Bank of Bastrop'),
(829, 'The First National Bank of Bellevue'),
(830, 'The First National Bank of Bellville'),
(831, 'The First National Bank of Bemidji'),
(832, 'The First National Bank of Blanchester'),
(833, 'The First National Bank of Brooksville'),
(834, 'The First National Bank of Brownstown'),
(835, 'The First National Bank of Buhl'),
(836, 'The First National Bank of Carmi'),
(837, 'The First National Bank of Cokato'),
(838, 'The First National Bank of Coleraine'),
(839, 'The First National Bank of Dennison'),
(840, 'The First National Bank of Dighton'),
(841, 'The First National Bank of Dozier'),
(842, 'The First National Bank of Dryden'),
(843, 'The First National Bank of Eagle Lake'),
(844, 'The First National Bank of East Texas'),
(845, 'The First National Bank of Eldorado'),
(846, 'The First National Bank of Elmer'),
(847, 'The First National Bank of Ely'),
(848, 'The First National Bank of Evant'),
(849, 'The First National Bank of Fairfax'),
(850, 'The First National Bank of Fleming'),
(851, 'The First National Bank of Fletcher'),
(852, 'The First National Bank of Floydada'),
(853, 'The First National Bank of Fort Smith'),
(854, 'The First National Bank of Frederick'),
(855, 'The First National Bank of Germantown'),
(856, 'The First National Bank of Gilbert'),
(857, 'The First National Bank of Gordon'),
(858, 'The First National Bank of Granbury'),
(859, 'The First National Bank of Grayson'),
(860, 'The First National Bank of Groton'),
(861, 'The First National Bank of Hartford'),
(862, 'The First National Bank of Harveyville'),
(863, 'The First National Bank of Hebbronville'),
(864, 'The First National Bank of Henning'),
(865, 'The First National Bank of Hooker'),
(866, 'The First National Bank of Hope'),
(867, 'The First National Bank of Hughes Springs'),
(868, 'The First National Bank of Hugo'),
(869, 'The First National Bank of Hutchinson'),
(870, 'The First National Bank of Izard County'),
(871, 'The First National Bank of Jeanerette'),
(872, 'The First National Bank of Johnson'),
(873, 'The First National Bank of Kemp'),
(874, 'The First National Bank of Lacon'),
(875, 'The First National Bank of Lawrence County at Walnut Ridge'),
(876, 'The First National Bank of Le Center'),
(877, 'The First National Bank of Lindsay'),
(878, 'The First National Bank of Lipan'),
(879, 'The First National Bank of Litchfield'),
(880, 'The First National Bank of Livingston'),
(881, 'The First National Bank of Long Island'),
(882, 'The First National Bank of Louisburg'),
(883, 'The First National Bank of Manchester'),
(884, 'The First National Bank of Manning'),
(885, 'The First National Bank of McConnelsville'),
(886, 'The First National Bank of McIntosh'),
(887, 'The First National Bank of Mertzon'),
(888, 'The First National Bank of Middle Tennessee'),
(889, 'The First National Bank of Milaca'),
(890, 'The First National Bank of Monterey'),
(891, 'The First National Bank of Moody'),
(892, 'The First National Bank of Moose Lake'),
(893, 'The First National Bank of Mount Dora'),
(894, 'The First National Bank of Nevada, Missouri'),
(895, 'The First National Bank of Okawville'),
(896, 'The First National Bank of Oneida'),
(897, 'The First National Bank of Orwell'),
(898, 'The First National Bank of Osakis'),
(899, 'The First National Bank of Ottawa'),
(900, 'The First National Bank of Pandora'),
(901, 'The First National Bank of Peterstown'),
(902, 'The First National Bank of Primghar'),
(903, 'The First National Bank of Proctor'),
(904, 'The First National Bank of Quitaque'),
(905, 'The First National Bank of Raymond'),
(906, 'The First National Bank of Russell Springs'),
(907, 'The First National Bank of Sandoval'),
(908, 'The First National Bank of Scott City'),
(909, 'The First National Bank of Sedan'),
(910, 'The First National Bank of Shiner'),
(911, 'The First National Bank of Sonora'),
(912, 'The First National Bank of South Miami'),
(913, 'The First National Bank of Sparta'),
(914, 'The First National Bank of Spearville'),
(915, 'The First National Bank of St. Ignace'),
(916, 'The First National Bank of Stanton'),
(917, 'The First National Bank of Sterling City'),
(918, 'The First National Bank of Stigler'),
(919, 'The First National Bank of Sycamore'),
(920, 'The First National Bank of Syracuse'),
(921, 'The First National Bank of Tahoka'),
(922, 'The First National Bank of Tom Bean'),
(923, 'The First National Bank of Trinity'),
(924, 'The First National Bank of Wakefield'),
(925, 'The First National Bank of Waseca'),
(926, 'The First National Bank of Waterloo'),
(927, 'The First National Bank of Waverly'),
(928, 'The First National Bank of Waynesboro'),
(929, 'The First National Bank of Weatherford'),
(930, 'The First National Bank of Williamson'),
(931, 'The First, A National Banking Association'),
(932, 'The Fisher National Bank'),
(933, 'The Glenmede Trust Company'),
(934, 'The Goldman Sachs Trust Company'),
(935, 'The Granger National Bank'),
(936, 'The Granville National Bank'),
(937, 'The Havana National Bank'),
(938, 'The Home National Bank of Thorntown'),
(939, 'The Hondo National Bank'),
(940, 'The Honesdale National Bank'),
(941, 'The Huntington National Bank'),
(942, 'The Idabel National Bank'),
(943, 'The Jacksboro National Bank'),
(944, 'The Karnes County National Bank of Karnes City'),
(945, 'The Lamesa National Bank'),
(946, 'The Lemont National Bank'),
(947, 'The Liberty National Bank in Paris'),
(948, 'The Lincoln National Bank of Hodgenville'),
(949, 'The Litchfield National Bank'),
(950, 'The Lyons National Bank'),
(951, 'The Malvern National Bank'),
(952, 'The Marion National Bank'),
(953, 'The Merchants National Bank'),
(954, 'The Miners National Bank of Eveleth'),
(955, 'The Mint National Bank'),
(956, 'The National Bank of Adams County of West Union'),
(957, 'The National Bank of Andrews'),
(958, 'The National Bank of Blacksburg'),
(959, 'The National Bank of Coxsackie'),
(960, 'The National Bank of Indianapolis'),
(961, 'The National Bank of Malvern'),
(962, 'The National Bank of Middlebury'),
(963, 'The National Bank of Texas at Fort Worth'),
(964, 'The National Capital Bank of Washington'),
(965, 'The National Grand Bank of Marblehead'),
(966, 'The National Iron Bank'),
(967, 'The Neffs National Bank'),
(968, 'The Northumberland National Bank'),
(969, 'The Old Exchange National Bank of Okawville'),
(970, 'The Old Point National Bank of Phoebus'),
(971, 'The Park National Bank'),
(972, 'The Pauls Valley National Bank'),
(973, 'The Pennsville National Bank'),
(974, 'The Peoples National Bank of Checotah'),
(975, 'The Perryton National Bank'),
(976, 'The Peshtigo National Bank'),
(977, 'The Private Trust Company'),
(978, 'The Putnam County National Bank of Carmel'),
(979, 'The Riddell National Bank'),
(980, 'The Salyersville National Bank'),
(981, 'The Santa Anna National Bank'),
(982, 'The Security National Bank of Enid'),
(983, 'The Security National Bank of Sioux City, Iowa'),
(984, 'The State National Bank of Big Spring'),
(985, 'The State National Bank of Groom'),
(986, 'The Stephenson National Bank and Trust'),
(987, 'The Tipton Latham Bank'),
(988, 'The Trust Company of Toledo'),
(989, 'The Turbotville National Bank'),
(990, 'The University National Bank of Lawrence'),
(991, 'The Upstate National Bank'),
(992, 'The Vinton County National Bank'),
(993, 'The Waggoner National Bank of Vernon'),
(994, 'The Yoakum National Bank'),
(995, 'Thomasville National Bank'),
(996, 'TIB The Independent BankersBank'),
(997, 'Tioga State Bank'),
(998, 'Titan Bank'),
(999, 'Touchmark National Bank'),
(1000, 'Town Bank'),
(1001, 'Town-Country National Bank'),
(1002, 'Transact Bank'),
(1003, 'Tri City National Bank'),
(1004, 'Triad Bank'),
(1005, 'Trinity Bank'),
(1006, 'Trustmark National Bank'),
(1007, 'U.S. Bank National Association'),
(1008, 'U.S. Bank Trust Company'),
(1009, 'U.S. Bank Trust National Association'),
(1010, 'U.S. Bank Trust National Association SD'),
(1011, 'UMB Bank & Trust'),
(1012, 'UMB Bank'),
(1013, 'Union National Bank'),
(1014, 'United Bank & Trust National Association'),
(1015, 'United Midwest Savings Bank'),
(1016, 'United National Bank'),
(1017, 'Unity National Bank of Houston'),
(1018, 'Valley National Bank'),
(1019, 'Vanguard National Trust Company'),
(1020, 'Varo Bank'),
(1021, 'Vast Bank'),
(1022, 'VeraBank'),
(1023, 'Viking Bank'),
(1024, 'Village Bank & Trust'),
(1025, 'Virginia National Bank'),
(1026, 'Vision Bank'),
(1027, 'Washington Federal Bank'),
(1028, 'Waterford Bank'),
(1029, 'Webster Bank'),
(1030, 'Wellington Trust Company'),
(1031, 'Wells Fargo Bank South Central'),
(1032, 'Wells Fargo Bank'),
(1033, 'Wells Fargo Delaware Trust Company'),
(1034, 'Wells Fargo National Bank West'),
(1035, 'Wells Fargo Trust Company'),
(1036, 'West Texas National Bank'),
(1037, 'West Valley National Bank'),
(1038, 'Western National Bank'),
(1039, 'Western National Bank'),
(1040, 'Western National Bank'),
(1041, 'Wheaton Bank & Trust Company'),
(1042, 'Wheaton College Trust Company'),
(1043, 'Wilmington Trust'),
(1044, 'Winter Park National Bank'),
(1045, 'Wintrust Bank'),
(1046, 'WNB Financial'),
(1047, 'Woodforest National Bank'),
(1048, 'Woodlands National Bank'),
(1049, 'Worthington National Bank'),
(1050, 'Zapata National Bank'),
(1051, 'Zions Bancorporation');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(150) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `salt` text NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `firstname` varchar(150) DEFAULT NULL,
  `middlename` varchar(150) DEFAULT 'None',
  `lastname` varchar(150) DEFAULT NULL,
  `dob` varchar(150) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `passport` varchar(150) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `accountnumber` varchar(150) DEFAULT NULL,
  `accountbalance` double NOT NULL,
  `accounttype` varchar(150) DEFAULT NULL,
  `securityquestion` varchar(150) DEFAULT NULL,
  `answer` varchar(150) DEFAULT NULL,
  `ssn` int(150) DEFAULT NULL,
  `maidensname` varchar(150) DEFAULT NULL,
  `status` varchar(150) DEFAULT NULL,
  `datecreated` varchar(150) DEFAULT NULL,
  `approve` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) DEFAULT NULL,
  `dayOFBirth` varchar(50) DEFAULT NULL,
  `monthOfBirth` varchar(50) DEFAULT NULL,
  `yearOfBirth` varchar(50) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `income` varchar(50) DEFAULT NULL,
  `nextOfKIn` varchar(50) DEFAULT NULL,
  `secretCode` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `tfa` varchar(20) DEFAULT NULL,
  `usercurrency` varchar(50) NOT NULL DEFAULT 'USD',
  `next_address` varchar(150) DEFAULT NULL,
  `next_relationship` varchar(150) DEFAULT NULL,
  `next_age` varchar(150) DEFAULT NULL,
  `securityquestion2` varchar(150) DEFAULT NULL,
  `answer2` varchar(150) DEFAULT NULL,
  `email_verify` int(20) NOT NULL DEFAULT 0,
  `email_code` varchar(200) DEFAULT NULL,
  `cot` varchar(50) NOT NULL DEFAULT '00',
  `imf` varchar(50) NOT NULL DEFAULT '00',
  `daily_limit` varchar(120) NOT NULL DEFAULT '5000',
  `blocktransfer` int(11) NOT NULL DEFAULT 1,
  `allowtransfer` int(11) NOT NULL DEFAULT 1,
  `theme` varchar(80) NOT NULL DEFAULT 'dark'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `email`, `phone`, `firstname`, `middlename`, `lastname`, `dob`, `gender`, `passport`, `address`, `state`, `city`, `country`, `accountnumber`, `accountbalance`, `accounttype`, `securityquestion`, `answer`, `ssn`, `maidensname`, `status`, `datecreated`, `approve`, `title`, `dayOFBirth`, `monthOfBirth`, `yearOfBirth`, `zipcode`, `occupation`, `income`, `nextOfKIn`, `secretCode`, `nickname`, `tfa`, `usercurrency`, `next_address`, `next_relationship`, `next_age`, `securityquestion2`, `answer2`, `email_verify`, `email_code`, `cot`, `imf`, `daily_limit`, `blocktransfer`, `allowtransfer`, `theme`) VALUES
(1, 'admin', 'RnQ0M29aK1puVVU4OVpXd3Y3OUxrUT09', '8227281442275183', 'admin@gmail.com', '+1 (574) 345-5729', 'BANK', '     MANAGER', 'J.', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 'blocked', '', 1, '', '', '', '', '', '', '', '', '', '', '', 'USD', '', '', '', '', '', 0, '0', '1999', '1999', '5000', 1, 1, 'light'),
(78, NULL, 'eXhxTnFqcHNGYUVXejdtakpWR2dEUT09', '2435821417201186', 'wesleyoscar58@gmail.com', '+27787641620', 'Wesley', 'Oscar', 'wilam', '08/02/1976', NULL, 'CONIMG202208152229-C0PAB.jpg', '23 Marin St', 'Ocotepeque', 'hong kong city', 'Honduras', '6159191797', 59000, 'Checking Account', NULL, NULL, NULL, NULL, 'active', ' 15 Aug 2022 22:29 pm', 1, NULL, NULL, NULL, NULL, '55223', 'Self Employed', '$1,000.00 - $2,000.00', NULL, '2424', NULL, 'inactive', 'USD', NULL, NULL, NULL, NULL, NULL, 1, 'fKTYGox3JQ83gdcR4RG7qDdGG0c4f6e8FtpauTFWHk4l081dpazk3Q3j', '71569484', '18753752', '1000000', 1, 1, 'dark'),
(79, NULL, 'RXMwK3M2T0ozS3k2NlNGSVFqODFiQT09', '254723387952997', 'nuhimamsoerodjo@gmail.com', '+6285102443234', 'Imam', 'Soerodjo', 'Nuhimam', '09/08/1951', NULL, 'CONIMG202208152350-YF0KG.jpg', 'RT 03 RW 01 DESA WONOREJO KECAMATAN BANTUR KABUPATEN MALANG REPUBLIC OF INDONESIA', 'Jakarta Raya', 'Malang', 'Indonesia', '9810276904', 700000, 'Checking Account', NULL, NULL, NULL, NULL, 'active', ' 15 Aug 2022 23:50 pm', 1, NULL, NULL, NULL, NULL, '62', 'Self Employed', '$2,000.00 - $5,000.00', NULL, '5576', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, 0, '0O2DITmxzTKZX5B4URMXDX33v4dH5uGzuQ6kW00UJgDDEJ4kMoRlsvkf', '01704629', '60943373', '1000000', 1, 1, 'light');

-- --------------------------------------------------------

--
-- Table structure for table `visual_cards`
--

CREATE TABLE `visual_cards` (
  `id` int(11) NOT NULL,
  `userid` int(80) DEFAULT NULL,
  `status` varchar(80) DEFAULT NULL,
  `balance` varchar(80) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `phone` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `card_type` varchar(80) DEFAULT NULL,
  `datecreated` varchar(80) DEFAULT NULL,
  `fullname` varchar(150) DEFAULT NULL,
  `card_number` varchar(80) DEFAULT NULL,
  `expiry_date` varchar(80) DEFAULT NULL,
  `ccv` int(50) DEFAULT NULL,
  `question` varchar(150) DEFAULT NULL,
  `answer` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visual_cards`
--

INSERT INTO `visual_cards` (`id`, `userid`, `status`, `balance`, `address`, `phone`, `email`, `card_type`, `datecreated`, `fullname`, `card_number`, `expiry_date`, `ccv`, `question`, `answer`) VALUES
(17, 66, 'pending', '0.00', 'Wangeroogestrasse 6, 26409 Wittmund Germany ', '+4915204858782', 'info@pavillounge.de', 'visa', ' 04 Aug 2022 11:28 am', 'Holger  LÃ¶we', '4902 9000 1899 7211', '08/25', 922, 'What is your pet name?', 'leo'),
(18, 62, 'pending', '0.00', '3206 Loma Verde Drive #C9 San Jose, CA 95117, 95117 San Jose California USA', '+14083903358', 'tony@mcconnected.com', 'visa', ' 05 Aug 2022 06:28 am', 'Anthony Vernon Merritt', '4902 4633 5462 3990', '08/25', 602, 'What is your pet name?', 'sheba'),
(19, 69, 'pending', '0.00', '106 W Charlemont Ave, Apt 301 Kingsport, TN 37660, 37660 Kingsport Tennessee USA', '(423) ', 'KaylaHolmesCosmetics@outlook.com', 'discover', ' 12 Aug 2022 18:45 pm', 'Kayla Paige  Holmes', '6011 8754 1093 0483', '08/25', 438, 'What is your nick name?', 'queen'),
(20, 72, 'pending', '0.00', '20061 Dunson Park Avenue Lot 20  , 70454 Ponchatoula Louisiana USA', '985-517-2957', 'mrsturner@vibrantbundles4u.com', 'visa', ' 13 Aug 2022 09:45 am', 'Shelethia  Alexander Turner', '4902 0588 1125 7014', '08/25', 115, 'when did you finish high school?', '2000'),
(21, 78, 'pending', '0.00', '23 Marin St, 55223 hong kong city Ocotepeque Honduras', '+27787641620', 'wesleyoscar58@gmail.com', 'visa', ' 15 Aug 2022 23:20 pm', 'Wesley Oscar wilam', '4902 2738 0194 2418', '08/25', 33, 'What is your pet name?', 'michelle'),
(22, 79, 'pending', '0.00', 'RT 03 RW 01 DESA WONOREJO KECAMATAN BANTUR KABUPATEN MALANG REPUBLIC OF INDONESIA, 62 Malang Jakarta Raya Indonesia', '+6285102443234', 'nuhimamsoerodjo@gmail.com', 'mastercard', ' 15 Aug 2022 23:56 pm', 'Imam Soerodjo Nuhimam', '5384 8063 9851 2145', '08/25', 833, 'What is your pet name?', 'michelle');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `coin` varchar(150) NOT NULL,
  `datecreated` varchar(50) NOT NULL,
  `lastdeposit` text NOT NULL,
  `userid` int(20) NOT NULL,
  `balance` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wire`
--

CREATE TABLE `wire` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `iban` varchar(50) DEFAULT NULL,
  `swiftcode` varchar(50) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `accountholder` varchar(75) DEFAULT NULL,
  `accounttype` varchar(50) DEFAULT NULL,
  `bankname` varchar(75) DEFAULT NULL,
  `datecreated` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wire`
--

INSERT INTO `wire` (`id`, `userid`, `country`, `state`, `city`, `address`, `zipcode`, `email`, `phone`, `fullname`, `type`, `iban`, `swiftcode`, `account`, `accountholder`, `accounttype`, `bankname`, `datecreated`) VALUES
(12, '56', 'United States', 'California', 'California', '14972 sw 9th lane', '33194', 'wangxiu404@gmail.com', '+18053104480', 'invesment', 'International transfer', '831122701', '209e8', '9267382930', 'Lyon Chad', 'current', 'Vertory Bank', '25 Jul 2022'),
(13, '56', 'United States', 'Georgia', 'Alpharetta', '1953 E 9th street', '11206', 'wangxiu404@gmail.com', '+18053104480', 'KK FD', 'International transfer', 'GB14REVO00996919905178', '209e8', '9267382931', 'Lyon Chad', 'current', 'Vertory Bank', '25 Jul 2022'),
(14, '56', 'United States', 'New York', 'New York', '14972 sw 9th lane', '33194', 'wangxiu404@gmail.com', '+18053104480', 'Investment funds', 'International transfer', 'PL69109017530000000148920041', 'T209e8', '9267382935', 'Lyon Chad', 'current', 'Vertory Bank', '25 Jul 2022'),
(15, '60', 'Japan', 'Tokyo', '101 5-10-32 Minamiazabu', 'Minato-ku Tokyo', '106-0047', 'taro.katsumi@gmail.com', '+8114537988', 'CreBirth Inc.', 'å›½éš›é€é‡‘', 'none', 'SMBCJPJT', '619-7757675', 'CreBirth Inc.', 'Checking Account', 'SUMITOMO MITSUI BANKING CORPORATION', '02 Aug 2022'),
(16, '60', 'Japan', 'Tokyo', 'Minato-ku', 'Minnamiazabu 5-10-32', '106-0047', 'katsumi@crebirth.jp', '+81 70 1453 7988', 'CreBirth Inc', 'å›½éš›é€é‡‘', 'None', 'SMBCJPJT', '619-7757675', 'CreBirth Inc', 'Savings Account', 'SUMITOMO MITSUI BANKING CORPORATION', '03 Aug 2022'),
(17, '59', 'Canada', 'Alberta', 'High Prairie', '4925 56 Avenue, PO Box 1584', 'T0G 1E0', 'info@littletexasbison.com', '1 780 242-1278', 'Little Texas Bison Ranch Ltd.', 'International transfer', '026009593', 'ATBRCA6EXXX', '00614057279', 'Little Texas Bison Ranch Ltd.', 'Business Checking USD', 'ATB Financial', '03 Aug 2022'),
(18, '58', 'Denmark', 'Vestsjalland', 'Ringsted ', 'NÃ¸rregade 114 1 th', '4100', 'Angelsjeerback@gmail.com', '+4542775477', 'Mille Kristiansen sjeerback ', 'International transfer', 'DK1030003109861227', 'DABADKKK', '3109861227', '3098', 'Private ', 'Danske bank', '04 Aug 2022'),
(19, '61', 'USA', 'Oklahoma', 'Tulsa', '6558 E 26th Ct', '74129', 'Admin@solarsservices.com', '(918) 291-9544', 'Evette Rochelle Jackson', 'International transfer', '121000248', 'TBGEISTHQ', '6486021154', 'Evette Rochelle Jackson', 'Checking', 'Wells Fargo', '04 Aug 2022'),
(20, '62', 'USA', 'California', 'San Jose', '3206 Loma Verde Drive', '95117', 'tony@mcconnected.com', '4083903358', 'Anthony Vernon Merritt', 'International transfer', '121122676', 'USBKUS44IMT', '157529142968', 'ANTHONY VERNON MERRITT', 'CHECKING', 'US Bank', '05 Aug 2022'),
(21, '72', 'USA', 'Louisiana', 'Ponchatoula', '20061 Dunson Park Avenue Lot 20', '70454', 'mrsturner@vibrantbundles4u.com', '9855172957', 'Shelethia Alexander Turner', 'International transfer', '051000017', '', '435053755126', 'Shelethia  Alexander Turner', 'Checking', 'Bank Of America', '12 Aug 2022');

-- --------------------------------------------------------

--
-- Table structure for table `wire_transfer`
--

CREATE TABLE `wire_transfer` (
  `id` int(11) NOT NULL,
  `userid` varchar(150) DEFAULT NULL,
  `recipientid` varchar(150) DEFAULT NULL,
  `ref` varchar(150) DEFAULT NULL,
  `fullname` varchar(150) DEFAULT NULL,
  `accountname` varchar(150) DEFAULT NULL,
  `bankname` varchar(150) DEFAULT NULL,
  `accountnumber` varchar(150) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `amount` varchar(150) DEFAULT NULL,
  `dated` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountname`
--
ALTER TABLE `accountname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_code`
--
ALTER TABLE `auth_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check_deposit`
--
ALTER TABLE `check_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cryptos`
--
ALTER TABLE `cryptos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_deposits`
--
ALTER TABLE `crypto_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_withdrawals`
--
ALTER TABLE `crypto_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `getbank`
--
ALTER TABLE `getbank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc`
--
ALTER TABLE `kyc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_application`
--
ALTER TABLE `loan_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paybill`
--
ALTER TABLE `paybill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payee`
--
ALTER TABLE `payee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_transcation`
--
ALTER TABLE `pending_transcation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_setting`
--
ALTER TABLE `smtp_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twilio`
--
ALTER TABLE `twilio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ukbanks`
--
ALTER TABLE `ukbanks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usbank`
--
ALTER TABLE `usbank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visual_cards`
--
ALTER TABLE `visual_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wire`
--
ALTER TABLE `wire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wire_transfer`
--
ALTER TABLE `wire_transfer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountname`
--
ALTER TABLE `accountname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_code`
--
ALTER TABLE `auth_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `check_deposit`
--
ALTER TABLE `check_deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cryptos`
--
ALTER TABLE `cryptos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `crypto_deposits`
--
ALTER TABLE `crypto_deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crypto_withdrawals`
--
ALTER TABLE `crypto_withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `getbank`
--
ALTER TABLE `getbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc`
--
ALTER TABLE `kyc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loan_application`
--
ALTER TABLE `loan_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=929;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `paybill`
--
ALTER TABLE `paybill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payee`
--
ALTER TABLE `payee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending_transcation`
--
ALTER TABLE `pending_transcation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp_setting`
--
ALTER TABLE `smtp_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `twilio`
--
ALTER TABLE `twilio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ukbanks`
--
ALTER TABLE `ukbanks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `usbank`
--
ALTER TABLE `usbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1052;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `visual_cards`
--
ALTER TABLE `visual_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wire`
--
ALTER TABLE `wire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wire_transfer`
--
ALTER TABLE `wire_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
