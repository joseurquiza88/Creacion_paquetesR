# 03 - Verificación del paquete
#
# Objetivo: Ejecutar chequeos automáticos para validar estructura y errores

# Ejecutar R CMD check del paquete
devtools::check()

# Cargar paquete en modo desarrollo
devtools::load_all()

####
# 04 - Licencia del paquete
#
# Objetivo: Definir licencia del proyecto (MIT en este caso)
###############################################################

# Agregar licencia MIT al paquete
usethis::use_mit_license()
