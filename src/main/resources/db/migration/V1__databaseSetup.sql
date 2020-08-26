CREATE TABLE `planet` (
  `planet_id` VARCHAR(15) NOT NULL,
  `planet_name` VARCHAR(31) NOT NULL,
  PRIMARY KEY (`planet_id`),
  UNIQUE INDEX `planet_name_UNIQUE` (`planet_name` ASC));

CREATE TABLE `edge` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `source` VARCHAR(15) NOT NULL,
  `destination` VARCHAR(15) NOT NULL,
  `distance` DECIMAL(5,2) NOT NULL DEFAULT 0.00,
  `traffic_delay` DECIMAL(5,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`),
  INDEX `source_planet_fk_idx` (`source` ASC),
  INDEX `destination_planet_fk_idx` (`destination` ASC),
  CONSTRAINT `source_planet_fk`
    FOREIGN KEY (`source`)
    REFERENCES `planet` (`planet_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `destination_planet_fk`
    FOREIGN KEY (`destination`)
    REFERENCES `planet` (`planet_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

    
    
INSERT INTO planet(planet_id,planet_name) VALUES ('A','Earth'), 
('B','Moon'),
('C','Jupiter'),
('D','Venus'),
('E','Mars'),
('F','Saturn'),
('G','Uranus'),
('H','Pluto'),
('I','Neptune'),
('J','Mercury'),
('K','Alpha Centauri'),
('L','Luhman 16'),
('M','Epsilon Eridani'),
('N','Groombridge 34'),
('O','Epsilon Indi'),
('P','Tau Ceti'),
('Q','Kapteyn''s star'),
('R','Gliese 687'),
('S','Gliese 674'),
('T','Gliese 876#'),
('U','Gliese 832'),
('V','Fomalhaut'),
('W','Virginis'),
('X','HD 102365'),
('Y','Gliese 176'),
('Z','Gliese 436'),
('A''','Pollux'),
('B''','Gliese 86'),
('C''','HIP 57050'),
('D''','Piscium'),
('E''','GJ 1214'),
('F''','Upsilon Andromedae'),
('G''','Gamma Cephei'),
('H''','HD 176051'),
('I''','Gliese 317'),
('J''','HD 38858'),
('K''','Ursae Majoris'),
('L''','Genesis');


INSERT INTO edge(id,source,destination,distance, traffic_delay) VALUES
 (1,'A','B',0.44,0.30),
(2,'A','C',1.89,0.90),
(3,'A','D',0.1,0.10),
(4,'B','H',2.44,0.20),
(5,'B','E',3.45,1.30),
(6,'C','F',0.49,0.30),
(7,'D','L',2.34,0.00),
(8,'D','M',2.61,0.20),
(9,'H','G',3.71,3.10),
(10,'E','I',8.09,6.10),
(11,'F','J',5.46,2.40),
(12,'F','K',3.67,0.30),
(13,'G','Z',5.25,4.00),
(14,'I','Z',13.97,3.70),
(15,'I','J',14.78,2.90),
(16,'L','T',15.23,9.80),
(17,'T','N',10.43,8.80),
(18,'T','S',14.22,13.40),
(19,'S','O',6.02,6.00),
(20,'O','U',5.26,3.50),
(21,'J','R',12.34,5.40),
(22,'R','P',10.1,1.90),
(23,'R','L''',9.95,7.70),
(24,'Z','Y',18.91,3.20),
(25,'Y','Q',22.04,20.30),
(26,'Q','X',10.51,10.41),
(27,'L''','X',23.61,8.10),
(28,'X','K''',19.94,0.70),
(29,'P','U',9.31,8.40),
(30,'U','K''',21.23,12.30),
(31,'U','J''',25.96,2.50),
(32,'J''','V',3.16,3.00),
(33,'K''','V',20.42,7.20),
(34,'J''','I''',17.1,13.40),
(35,'Y','A''',19.52,17.00),
(36,'A''','B''',31.56,7.20),
(37,'B''','C''',23.13,21.30),
(38,'K''','W',28.89,16.00),
(39,'W','C''',10.64,4.70),
(40,'W','E''',36.19,33.90),
(41,'C''','D''',36.48,30.10),
(43,'E''','F''',42.07,34.20),
(44,'F''','G''',17.63,2.40),
(45,'G''','H''',40.48,1.10);
