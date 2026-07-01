###############################################################
# TESTS CON `withr`
###############################################################

# El paquete `withr` permite modificar temporalmente el entorno
# durante la ejecución de un test, sin afectar el comportamiento
# real de la función.

# Por ejemplo, podemos cambiar la cantidad de dígitos que R imprime
# únicamente dentro del test.

library(testthat)
library(withr)

test_that("print(pi) matches the expected snapshot", {
  
  # Cambia temporalmente la opción 'digits'
  withr::local_options(digits = 5)
  
  # Guarda (o compara) la salida impresa con un snapshot
  expect_snapshot(print(pi))
  
})

###############################################################
# HELPERS PARA LOS TESTS
###############################################################

# Cuando varios tests necesitan el mismo código (por ejemplo,
# crear datos de ejemplo o configurar opciones), es recomendable
# colocarlo en un archivo helper.

# Ubicación:
# tests/testthat/helper.R

# Todo el código de ese archivo se ejecutará automáticamente
# antes de correr los tests.

###############################################################
# INTEGRACIÓN CONTINUA (GitHub Actions)
###############################################################

# GitHub Actions permite ejecutar automáticamente los tests
# cada vez que hacemos un push o un pull request al repositorio.

# De esta forma podemos comprobar que el paquete funciona en
# distintos sistemas operativos y diferentes versiones de R.

# Para crear el workflow estándar:

usethis::use_github_action("check-standard")

# Este comando crea automáticamente la carpeta:

# .github/workflows/

# Dentro de ella se genera un archivo YAML que indica qué debe
# hacer GitHub cada vez que detecta cambios en el repositorio.

###############################################################
# QUÉ HACE EL CHECK DE GITHUB?
###############################################################

# Cada vez que hacemos un push:

# ✓ Instala R.
# ✓ Instala las dependencias del paquete.
# ✓ Ejecuta R CMD check.
# ✓ Corre todos los tests (testthat).
# ✓ Verifica que la documentación sea correcta.
# ✓ Comprueba que el paquete pueda instalarse.

# Además, el mismo paquete puede probarse en distintos
# sistemas operativos, por ejemplo:

# - Ubuntu
# - Windows
# - macOS

# Incluso puede probarse con distintas versiones de R.

###############################################################
# RESULTADOS
###############################################################

# Una vez realizado el push al repositorio,
# GitHub comienza automáticamente la ejecución de los checks.

# Los resultados pueden verse en la pestaña:

# Actions

# Si todos los checks finalizan correctamente,
# aparecerán con un ✔ verde.

# Si alguno falla,
# GitHub mostrará un ✖ rojo y el detalle del error para poder corregirlo.

###############################################################
# EJEMPLOS
###############################################################

# Documentación oficial de GitHub Actions:
# https://docs.github.com/actions

# Buscar ejemplos de workflows:
# https://github.com/search/advanced