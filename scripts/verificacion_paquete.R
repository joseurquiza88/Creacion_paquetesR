#Verificación del paquete
#
# Objetivo: Ejecutar chequeos automáticos para validar estructura y errores

# Ejecutar R CMD check del paquete para ver si falta algo
# Por ejemplo setear la licencia
devtools::check()

# Licencia del paquete
#
# Objetivo: Definir licencia del proyecto (MIT en este caso)
###############################################################

# Agregar licencia MIT al paquete
usethis::use_mit_license()

# Cargar paquete en modo  para actualizar lo de la licencia
devtools::load_all()
