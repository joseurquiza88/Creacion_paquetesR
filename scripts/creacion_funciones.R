# 05 - Creación de funciones del paquete
#
# Objetivo: Crear y probar funciones dentro del entorno del paquete
# Esto se va generando en el proyecto que corresponde al paquete
#no en este mismo script

# Crear archivo R para funciones
usethis::use_r("tiemp")
# Luego se abre un script como para colocar la funcion
# Cargar el paquete en modo desarrollo
devtools::load_all()

# Probar función creada
what_time()

# Nota:
# Cada vez que se modifica una función,
# se debe volver a ejecutar load_all()