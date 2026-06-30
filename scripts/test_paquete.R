
# Testing del paquete con testthat
# Pagina de referencia: https://testthat.r-lib.org/
# Configura la infraestructura para realizar tests automáticos.
# También agrega la información necesaria al archivo DESCRIPTION.
# Se crea la carpeta `tests/` con los archivos que utiliza
# testthat. Estos archivos no deben modificarse manualmente.

usethis::use_testthat()

# ------------------------------------------------------------
# Crear un archivo de pruebas
# ------------------------------------------------------------

# Genera un script de test dentro de:
# tests/testthat/test-tiemp.R
#
# En este archivo se escriben las pruebas de la función.

usethis::use_test("tiemp")

# Si todavía no existe la función que se quiere probar,
# se puede crear un nuevo script en la carpeta R/.

usethis::use_r()

# ------------------------------------------------------------
# Ejecutar los tests
# ------------------------------------------------------------

# Ejecuta únicamente el archivo de test que está abierto.

devtools::test_active_file()

# Ejemplo de prueba:
# Se verifica que la función `what_time()` devuelva un
# objeto de tipo "character".

testthat::test_that("what_time() devuelve un string", {
  testthat::expect_type(what_time(), "character")
})

# ------------------------------------------------------------
# Ejecutar todos los tests del paquete
# ------------------------------------------------------------

testthat::test()

# Salida esperada:
#
# ℹ Testing MiniPaquete
# ✔ | F W S OK | Context
# ✔ |         1 | tiemp
#
# ══ Results ═══════════════════════════════════════
# [ FAIL 0 | WARN 0 | SKIP 0 | PASS 1 ]