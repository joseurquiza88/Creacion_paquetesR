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
