CREATE TABLE bus_linea (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_bus INT NOT NULL,
    numero_linea INT NOT NULL,
    observaciones VARCHAR(255),
    FOREIGN KEY (id_bus) REFERENCES bus(`código`),
    FOREIGN KEY (numero_linea) REFERENCES `líneas`(`número de linea`)
);
