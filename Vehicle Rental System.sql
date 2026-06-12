-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vehicle_rental_system
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `branch_id` varchar(10) NOT NULL,
  `branch_address` varchar(50) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES ('B001','Andheri East, Mumbai','9876543210'),('B002','Thane West, Mumbai','9876543211'),('B003','Dadar West, Mumbai','9876543212'),('B004','Borivali West, Mumbai','9876543213'),('B005','Navi Mumbai','9876543214');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` varchar(10) NOT NULL,
  `customer_name` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `license_no` varchar(20) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('C101','Anish Gawde','Mumbai','MH01AB1234','2024-01-10'),('C102','Rohit Sharma','Thane','MH02CD5678','2024-02-15'),('C103','Sneha Joshi','Dadar','MH03EF9012','2024-03-20'),('C104','Amit Kulkarni','Borivali','MH04GH3344','2024-04-01'),('C105','Pooja Shah','Navi Mumbai','MH05JK7788','2024-04-10'),('C106','Kunal Verma','Andheri','MH06LM9900','2024-04-18'),('C107','Saurabh Patil','Thane','MH07AA1122','2024-05-01'),('C108','Neel Mehta','Mumbai','MH08BB2233','2024-05-05'),('C109','Riya Nair','Dadar','MH09CC3344','2024-05-10'),('C110','Harsh Jain','Borivali','MH10DD4455','2024-05-15'),('C111','Vikas Singh','Mumbai','MH11EE5566','2024-05-20'),('C112','Prachi Desai','Thane','MH12FF6677','2024-05-25'),('C113','Yogesh Pawar','Navi Mumbai','MH13GG7788','2024-06-01'),('C114','Meenal Joshi','Andheri','MH14HH8899','2024-06-05'),('C115','Aditya More','Dadar','MH15II9900','2024-06-10');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `emp_id` varchar(10) NOT NULL,
  `emp_name` varchar(30) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `branch_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('E101','Rahul Patil','Manager',60000.00,'B001'),('E102','Amit Shah','Clerk',35000.00,'B002'),('E103','Neha Singh','Clerk',32000.00,'B003'),('E104','Pooja Mehta','Clerk',34000.00,'B004'),('E105','Sanjay Kulkarni','Manager',65000.00,'B005'),('E106','Ritika Jain','Clerk',36000.00,'B001'),('E107','Akash Verma','Supervisor',42000.00,'B002'),('E108','Kiran Joshi','Clerk',33000.00,'B003'),('E109','Manish Yadav','Supervisor',45000.00,'B004'),('E110','Snehal Patil','Clerk',34000.00,'B005'),('E111','Nikhil Desai','Clerk',35500.00,'B001'),('E112','Anita Rao','Supervisor',47000.00,'B002'),('E113','Prasad Kulkarni','Clerk',36000.00,'B003'),('E114','Ramesh Gupta','Clerk',32500.00,'B004'),('E115','Komal Shah','Supervisor',48000.00,'B005');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental` (
  `rental_id` varchar(10) NOT NULL,
  `customer_id` varchar(10) DEFAULT NULL,
  `vehicle_id` varchar(10) DEFAULT NULL,
  `rental_date` date DEFAULT NULL,
  `emp_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`rental_id`),
  KEY `customer_id` (`customer_id`),
  KEY `vehicle_id` (`vehicle_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `rental_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`),
  CONSTRAINT `rental_ibfk_3` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES ('R001','C101','V101','2024-04-01','E101'),('R002','C102','V102','2024-04-03','E102'),('R003','C103','V103','2024-04-05','E103'),('R004','C104','V104','2024-04-07','E104'),('R005','C105','V105','2024-04-09','E105'),('R006','C106','V106','2024-04-11','E106'),('R007','C107','V107','2024-04-13','E107'),('R008','C108','V108','2024-04-15','E108'),('R009','C109','V109','2024-04-17','E109'),('R010','C110','V110','2024-04-19','E110'),('R011','C111','V111','2024-04-21','E111'),('R012','C112','V112','2024-04-23','E112'),('R013','C113','V113','2024-04-25','E113'),('R014','C114','V114','2024-04-27','E114'),('R015','C115','V115','2024-04-29','E115'),('R016','C101','V102','2024-05-05','E102');
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_details`
--

DROP TABLE IF EXISTS `return_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `return_details` (
  `return_id` varchar(10) NOT NULL,
  `rental_id` varchar(10) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`return_id`),
  KEY `rental_id` (`rental_id`),
  CONSTRAINT `return_details_ibfk_1` FOREIGN KEY (`rental_id`) REFERENCES `rental` (`rental_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_details`
--

LOCK TABLES `return_details` WRITE;
/*!40000 ALTER TABLE `return_details` DISABLE KEYS */;
INSERT INTO `return_details` VALUES ('RT001','R001','2024-04-03',6000.00),('RT002','R002','2024-04-05',3600.00),('RT003','R003','2024-04-07',1600.00),('RT004','R004','2024-04-09',3400.00),('RT005','R005','2024-04-11',1400.00),('RT006','R006','2024-04-13',3800.00),('RT007','R007','2024-04-15',1200.00),('RT008','R008','2024-04-17',5000.00),('RT009','R009','2024-04-19',1500.00),('RT010','R010','2024-04-21',4600.00),('RT011','R011','2024-04-23',4200.00),('RT012','R012','2024-04-25',1800.00),('RT013','R013','2024-04-27',4400.00),('RT014','R014','2024-04-29',1700.00),('RT015','R015','2024-05-01',4000.00),('RT016','R016','2024-05-07',3600.00);
/*!40000 ALTER TABLE `return_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `vehicle_id` varchar(10) NOT NULL,
  `vehicle_name` varchar(30) DEFAULT NULL,
  `vehicle_type` varchar(20) DEFAULT NULL,
  `rental_price` decimal(10,2) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `branch_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES ('V101','Honda City','Car',2000.00,'Available','B001'),('V102','Swift Dzire','Car',1800.00,'Available','B002'),('V103','Royal Enfield','Bike',800.00,'Available','B003'),('V104','Hyundai i20','Car',1700.00,'Available','B004'),('V105','TVS Apache','Bike',700.00,'Available','B005'),('V106','Maruti Baleno','Car',1900.00,'Available','B001'),('V107','Activa 6G','Bike',600.00,'Available','B002'),('V108','Creta','Car',2500.00,'Available','B003'),('V109','Pulsar 220','Bike',750.00,'Available','B004'),('V110','XUV 300','Car',2300.00,'Available','B005'),('V111','Tata Nexon','Car',2100.00,'Available','B001'),('V112','KTM Duke','Bike',900.00,'Available','B002'),('V113','Ertiga','Car',2200.00,'Available','B003'),('V114','R15','Bike',850.00,'Available','B004'),('V115','Venue','Car',2000.00,'Available','B005'),('V116','Toyota Fortuner','Car',3000.00,'Available','B001');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-02  8:23:14
