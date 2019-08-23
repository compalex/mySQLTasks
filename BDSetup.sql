CREATE DATABASE IF NOT EXISTS productdb;

USE productDB;

DROP TABLE IF EXISTS `product`, `pc`, `laptop`, `printer`;

CREATE TABLE `product` (
    `maker` VARCHAR(45) NOT NULL,
    `model` VARCHAR(45) NOT NULL,
    `type` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`model`)
) ENGINE = InnoDB;

CREATE TABLE `pc` (
	`code` INT NOT NULL,
    `model` VARCHAR(45),
    `speed` INT NOT NULL,
    `ram` INT NOT NULL,
    `hd` INT NOT NULL,
    `cd` VARCHAR(45),
    `price` DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (`code`),
    FOREIGN KEY (`model`) REFERENCES `Product`(`model`) ON DELETE SET NULL
) ENGINE = InnoDB;

CREATE TABLE `laptop` (
	`code` INT NOT NULL,
    `model` VARCHAR(45),
    `speed` INT NOT NULL,
    `ram` INT NOT NULL,
    `hd` INT NOT NULL,
    `screen` DECIMAL(10, 2) NOT NULL,
    `price` DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (`code`),
    FOREIGN KEY (`model`) REFERENCES `Product`(`model`) ON DELETE SET NULL
) ENGINE = InnoDB;

CREATE TABLE `printer` (
	`code` INT NOT NULL,
    `model` VARCHAR(45),
    `color` VARCHAR(45),
    `type` VARCHAR(45),
    `price` DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (`code`),
    FOREIGN KEY (`model`) REFERENCES `Product`(`model`) ON DELETE SET NULL
) ENGINE = InnoDB;

INSERT INTO `product` VALUES ('IBM', 'CHIP228', 'PC');
INSERT INTO `product` VALUES ('ASUS', 'K228O09', 'Laptop');
INSERT INTO `product` VALUES ('Lexmark', 'NL123Q', 'Printer');
INSERT INTO `product` VALUES ('Intel', 'PC0832X', 'PC');
INSERT INTO `product` VALUES ('IBM', 'XZ5532F1S', 'PC');
INSERT INTO `product` VALUES ('IBM', 'ZSCASD2', 'Laptop');
INSERT INTO `product` VALUES ('ASER', 'LP0822Z', 'Laptop');
INSERT INTO `product` VALUES ('A', 'QWE123', 'PC');
INSERT INTO `product` VALUES ('ASER', 'LP04567', 'Laptop');
INSERT INTO `product` VALUES ('Dell', '228ZVSG',  'PC');
INSERT INTO `product` VALUES ('Dell', '5750G', 'Laptop');
INSERT INTO `product` VALUES ('Dell', '5750GGG', 'Laptop');
INSERT INTO `product` VALUES ('Lexmark', 'NL228LP', 'Printer');
INSERT INTO `product` VALUES ('Bull', 'GT2180', 'PC');
INSERT INTO `product` VALUES ('Sony', 'S123BBN', 'Printer');
INSERT INTO `product` VALUES ('Sony', 'PC195S', 'PC');
INSERT INTO `product` VALUES ('B', 'GZ142', 'Printer');
INSERT INTO `product` VALUES ('B', 'LPGZ228', 'Laptop');
INSERT INTO `product` VALUES ('A', 'AHZBCJ', 'PC');
INSERT INTO `product` VALUES ('A', 'ZJDU576', 'PC');
INSERT INTO `product` VALUES ('Xiaomi', 'X22812', 'Printer');
INSERT INTO `product` VALUES ('IBM', '123456', 'PC');
INSERT INTO `product` VALUES ('Bull', '7891011', 'PC');

INSERT INTO `pc` VALUES (234123, 'CHIP228', 1800, 512, 64, '2x', 228.28);
INSERT INTO `pc` VALUES (142345, 'PC0832X', 2000, 1024, 500, '24x', 3228.35);
INSERT INTO `pc` VALUES (122312, 'XZ5532F1S', 3000, 2048, 1000, '8x', 2550.50);
INSERT INTO `pc` VALUES (143256, '228ZVSG', 1300, 2048, 500, '12x', 1900);
INSERT INTO `pc` VALUES (546273, 'PC195S', 1800, 512, 300, '24x', 350);
INSERT INTO `pc` VALUES (526387, 'GT2180', 2400, 4096, 800, '12x', 590);
INSERT INTO `pc` VALUES (85728, 'AHZBCJ', 2700, 512, 500, '6x', 350);
INSERT INTO `pc` VALUES (129476, 'ZJDU576', 3000, 2048, 1000, '12x', 3550);
INSERT INTO `pc` VALUES (362947, '123456', 300, 256, 300, '4x', 355);
INSERT INTO `pc` VALUES (512946, '7891011', 3300, 256, 32, '12x', 2035.50);
INSERT INTO `pc` VALUES (751326, 'QWE123', 2700, 1024, 100, '6x', 500);

INSERT INTO `laptop` VALUES (625935, 'ZSCASD2', 2100, 2048, 400, 15.6, 424.90);
INSERT INTO `laptop` VALUES (254935, 'K228O09', 2400, 4096, 600, 17.3, 999.90);
INSERT INTO `laptop` VALUES (351647, 'LP0822Z', 210, 4096, 9, 15.6, 2059.50);
INSERT INTO `laptop` VALUES (135167, 'LP04567', 1000, 2048, 64, 17.3, 1000);
INSERT INTO `laptop` VALUES (746259, '5750G', 2400, 8192, 1000, 17.3, 1500);
INSERT INTO `laptop` VALUES (174629, '5750GGG', 240, 8192, 5, 13.3, 500);
INSERT INTO `laptop` VALUES (1742259, 'LPGZ228', 270, 2048, 200, 13.3, 300.25);

INSERT INTO `printer` VALUES (228228, 'NL123Q', 'n', 'Laser', 250);
INSERT INTO `printer` VALUES (845628, 'NL228LP', 'y', 'Jet', 500);
INSERT INTO `printer` VALUES (243546, 'S123BBN', 'y', 'Matrix', 500.00);
INSERT INTO `printer` VALUES (257900, 'GZ142', 'n', 'Jet', 270);
INSERT INTO `printer` VALUES (15110, 'X22812', 'y', 'Laser', 170);