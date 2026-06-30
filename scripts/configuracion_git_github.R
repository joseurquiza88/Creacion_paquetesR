# 01 - Configuracion de Git y GitHub
#
# Objetivo: Autenticarse en GitHub y verificar conexión con Git local


# Crear token de acceso personal en GitHub
# Esto hay que congigurarlo en el perfild e github personal
#Settings ==> Developer Settings ==> Personal access tokens (classic)
usethis::create_github_token()

# Guardar credenciales en el sistema local
gitcreds::gitcreds_set()

# Verificar configuración de Git
usethis::git_sitrep()

# Verificar repos remotos configurados
system("git remote -v")

# Verificar los datos del usuario del R .Rprofile
