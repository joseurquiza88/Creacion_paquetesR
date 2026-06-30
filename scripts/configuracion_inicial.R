# 00 - Configuración inicial del entorno de desarrollo en R
#
# Objetivo: Preparar el entorno para poder crear paquetes en R
# verificando instalación de herramientas de desarrollo.

# Verificar si esta instalado sino instalar
install.packages("devtools")

# Verificar que el entorno de compilacion esta listo
devtools::has_devel()

# Diagnostico general del sistema de desarrollo en R
devtools::dev_sitrep()

# Verificación de configuración de Git en R
usethis::git_sitrep()

# Abrir archivo de configuración de R
# En mi caso esta en la carpeta Documentos
usethis::edit_r_profile()

# Nota:
# Se recomienda usar HTTPS para GitHub en el .Rprofile
# options(usethis.protocol = "https")##

# https://usethis.r-lib.org/reference/edit.html
