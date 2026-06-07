# Análisis de la tabla no normalizada

## 1. ¿Qué datos se repiten?

Se repiten datos de clientes, correos, ciudades y vendedores.

Ejemplos:

- Ana Torres aparece dos veces.
- ana@mail.com aparece dos veces.
- Bogotá aparece dos veces.
- Carlos aparece en varias ventas.

---

## 2. ¿Qué columna tiene varios valores en una sola celda?

La columna **productos**.

Ejemplos:

- Mouse, Teclado, Monitor
- Laptop, Mouse

---

## 3. ¿Qué pasa si un cliente cambia de correo?

Se deben actualizar todas las filas donde aparezca ese cliente. Si alguna fila no se actualiza, los datos quedan inconsistentes.

---

## 4. ¿Qué pasa si se elimina la única venta de un cliente?

Se pierde también toda la información del cliente (nombre, correo y ciudad), aunque esos datos podrían seguir siendo necesarios.

---

## 5. ¿Se puede registrar un producto sin venta?

No. Los productos solo existen dentro del campo productos de una venta.

---

## 6. ¿Se puede registrar un vendedor sin venta?

No. Los vendedores solo pueden registrarse cuando existe una venta asociada.

---

## 7. ¿Qué entidades reales aparecen en la tabla?

Las entidades identificadas son:

- Cliente
- Producto
- Vendedor
- Venta
- Detalle de venta
