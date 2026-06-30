# 02 - Creación del paquete en R
#
# Objetivo: ----
# Crear la estructura base de un paquete desde cero

# Verificar nombre del paquete (buena práctica CRAN)
pak::pkg_name_check("MiniPaquete")

# Crear estructura del paquete
usethis::create_package(
  "D:/Josefina/Proyectos/Datascience/Paquetes_R/MiniPaquete"
)

# Luego de esto se va a abrir un nuevo pryecto y es alli
# donde se van a ir corriendo los distintos scripts
# porque el paquete ya esta creado y ya tiene su orden
# y carpetas predeterminadas