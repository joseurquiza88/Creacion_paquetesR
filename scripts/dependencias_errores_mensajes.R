#Mensajes agradables
library("cli")

variable <- 42
cli::cli_alert_info("Set {.field parameter} to {.val {variable}}")
#> ℹ Set parameter to 42
#>
cli_alert_info <- function(...) {
  if (!getOption("usethis.quiet", default = FALSE)) {
    cli::cli_alert_info(...)
  }
}

#Bonitos mensajes
#https://ropensci.org/blog/2024/02/06/verbosity-control-packages/


# Mensajes de error
# Consejos sobre el contenido en el guía de estilo de tidyverse con ejemplos.

# Interfaz con cli::cli_abort()
cli::cli_abort(
  c(
    "Can't find good error message.",
    i = "Read the tidyverse style guide."
  )
)
#> Error:
#> ! Can't find good error message.
#> ℹ Read the tidyverse style guide.
#>
#>
# Comprobación de argumentos
# Documenta el tipo de argumento.

# Comprueba los argumentos. rlang::arg_match() por ejemplo.



#### Test


#Se pueden ejecutar de forma interactiva.
testthat::test_path().

# Sin “fugas”con {withr}.
withr::local_options()
withr::local_tempdir()


#### Moncking para ver si se necesita internet o no
is_internet_down <- function() {
  !curl::has_internet()
}

my_complicated_code <- function() {
  if (is_internet_down()) {
    message("No internet! Le sigh")
  }
  # blablablabla
}


test_that("my_complicated_code() notes the absence of internet", {
  local_mocked_bindings(is_internet_down = function(...) TRUE)
  expect_message(my_complicated_code(), "No internet")
})


# Secretos Llaves de API
# Se puede a traves de .Renviron {keyring}!
library(keyring)

# Usuari@, 1 vez para cada ordenador
keyring::key_set("deepl")

# Usuari@, cada vez que usa tu paquete
Sys.setenv(DEEPL_API_KEY = keyring::key_get("deepl"))

# Tu paquete
Sys.getenv("DEEPL_API_KEY")


# donde ponemos los Datos
# En el paquete para usuarios y usuarias: data/

#En el paquete para el paquete: R/sysdata.rda

# Desde el paquete: carpetas de usuari@s: tools::R_user_dir(). Demo!

tools::R_user_dir()
