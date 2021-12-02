CREATE DATABASE IF NOT EXISTS cazadespistes
    CHARACTER SET = 'utf8mb3'
    COLLATE = 'utf8_general_ci'
;

CREATE TABLE IF NOT EXISTS clases (
    id INT NOT NULL AUTO_INCREMENT,
    codigo VARCHAR(10) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100),
    activa TINYINT DEFAULT '1',
    PRIMARY KEY (id)
)
DEFAULT CHARACTER SET = 'utf8mb3'
DEFAULT COLLATE = 'utf8_general_ci'
ENGINE = INNODB
;

CREATE TABLE IF NOT EXISTS despistes (
    id INT NOT NULL AUTO_INCREMENT,
    instante DATETIME NOT NULL,
    clase INT NOT NULL,
    dispositivo VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (clase) REFERENCES clases(id)
)
DEFAULT CHARACTER SET = 'utf8mb3'
DEFAULT COLLATE = 'utf8_general_ci'
ENGINE = INNODB
;