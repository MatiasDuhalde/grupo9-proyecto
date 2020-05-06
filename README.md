# IIC2143 - Proyecto Grupo 9
## Detalles Generales

### Integrantes:
 - Matías Duhalde
 - Fernando García
 - Rodolfo Mendoza

### Link deploy en Heroku
https://iic2143-grupo9.herokuapp.com/

### Link development en Heroku
https://grupo-9.herokuapp.com/

## Otros detalles

### Diagrama
 - Este se encuentra en el archivo [Diagrama_ER.pdf](/Diagrama_ER.pdf) 

### Relatos de usuario
 - Estos se encuentran en el directorio [relatos](/relatos/)

### Cuenta
 - Los usuarios no pueden crear libremente cuentas de admin desde la app (lógicamente), por lo que estas deben ser añadidas directamente a la base de datos. Se implementó un seed que crea automáticamente una cuenta de administrador.
    - **email**: admin@uc.cl
    - **contraseña**: password
 - El resto de las cuentas (usuario y local) pueden ser creadas directamente desde la app.
