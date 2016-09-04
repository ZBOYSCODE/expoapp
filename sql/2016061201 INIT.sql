CREATE TABLE `cliente` (
    `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
    `name` VARCHAR(150) NOT NULL COMMENT '',
    `institution` VARCHAR(250) NULL COMMENT '',
    `profession` VARCHAR(250) NULL COMMENT '',
    `phone` VARCHAR(100) NULL COMMENT '',
    `email` VARCHAR(250) NULL COMMENT '',
    `assessment` INT NULL DEFAULT 1 COMMENT '',
    `comment` VARCHAR(500) NULL DEFAULT 1 COMMENT '',
    `created_at` DATETIME NOT NULL COMMENT '',
PRIMARY KEY (`id`)  COMMENT '' );
