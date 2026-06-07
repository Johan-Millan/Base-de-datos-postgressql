# Dependencias funcionales

| Dato           | Depende de          |
| -------------- | ------------------- |
| cliente        | id_venta            |
| correo         | cliente             |
| ciudad_cliente | cliente             |
| vendedor       | id_venta            |
| producto       | id_venta            |
| cantidad       | id_venta + producto |

## Análisis

- Una venta pertenece a un cliente.
- Una venta es atendida por un vendedor.
- Un cliente tiene correo y ciudad.
- Un producto puede estar en muchas ventas.
- Una venta puede tener muchos productos.
- La cantidad de un producto depende de la combinación de venta y producto.
