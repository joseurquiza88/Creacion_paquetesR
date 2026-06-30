# Manejo de dependencias
#
# Objetivo:
# Registrar paquetes externos usados dentro del paquete
# Hay otra forma que es colocando import antes de la funcion
# Pero de esta forma al descargar el paquete de esta forma
# es una dependencia obligatoria para usar el paquete

# Registrar dependencia por ejemplo de paquete rlang
usethis::use_package("rlang")


# Al hacer esto actualiza automáticamente el archivo DESCRIPTION
# Tambien se puede determinar la version minima de esa libreria
