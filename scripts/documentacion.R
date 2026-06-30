# 06 - Documentación del paquete
#
# Objetivo:
# Generar documentación automática con roxygen2

#En Rstudio: Code ==> insert roxygen2 eskeleton
# y alli se abre una plantilla con rmarkdown y es alli donde
# se van a ir modificando y agregando info para las distintas funciones

# Generar documentación del paquete
devtools::document()

# Consultar ayuda de la función
?what_time()

# Nota:
# Las funciones deben incluir roxygen skeleton arriba del código
# y usar @export para hacerlas visibles en el paquete
# Sino esta el @export es una funcion que se utiliza dentro del paquete



