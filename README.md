# crud-autobuses
Proyecto de bases de datos de autobuses



# CRUD Autobuses – PHP + MySQL

Pequeña aplicacioncita :D CRUD en PHP para gestionar la relación **muchos‑a‑muchos** entre autobuses y líneas mediante la tabla intermedia **`bus_linea`**.  
Probado en **XAMPP** y desplegado en **InfinityFree**.

---

## Funcionalidad
- **index.php** — Listado con JOIN entre `bus_linea`, `bus` y `líneas`  
- **add.php** — Crear asignación bus‑línea  
- **update.php** — Editar asignación  
- **delete.php** — Eliminar asignación  
- **config.php** — Conexión MySQL  

---

## Tabla N:N utilizada
```sql
CREATE TABLE bus_linea (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_bus INT NOT NULL,
  numero_linea INT NOT NULL,
  observaciones VARCHAR(255),
  FOREIGN KEY (id_bus) REFERENCES bus(`código`),
  FOREIGN KEY (numero_linea) REFERENCES `líneas`(`número de linea`)
);
```

---

## Consulta JOIN principal
```sql
SELECT bus_linea.id, bus.`modelo`, `líneas`.`tipo de linea`,
       bus_linea.observaciones
FROM bus_linea
JOIN bus ON bus.`código` = bus_linea.id_bus
JOIN `líneas` ON `líneas`.`número de linea` = bus_linea.numero_linea;
```

---

## Instalación local (XAMPP)
1. Importar `autobuses_db.sql` en phpMyAdmin  
2. Colocar los archivos en `htdocs/`  
3. Configurar `config.php`:

```php
$host="localhost"; $user="root"; $pass=""; $db="autobuses_db";
```

4. Abrir:  
```
http://localhost/
```

---

## Despliegue en InfinityFree
1. Creada la BD en **MySQL Databases**  
2. Importado como `.sql`  
3. Subido el CRUD a `/htdocs`  
4. Configurado `config.php` con los datos del hosting  

---

## Contenido del repositorio
- CRUD completo  
- Archivo `.sql`  
- README  
