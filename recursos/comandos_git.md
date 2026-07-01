# COMANDO GIT - GITHUB desde la terminal
#varios de estos tambien se pueden realizar directamente desde la interface 
# de rStudio sino por la terminal es valido tambien

- Inicializar

git init

- Ver estado

git status

- Agregar archivos

git add .

- Commit

git commit -m "mensaje"

- Enviar la informacion al repositorio remoto

git push origin main

- Descargar actualizaciones del repo remoto al local
git pull origin main

- Cambiar de branch
git switch main 

- Para ver todas las ramas disponibles en el proyecto
branch

- Para que se abra un visor para escribir el commit
git commit --allow-empty

- Cambiar remoto
git remote set-url origin ..

- Arreglar un commit prueba
git commit --amend --no-edit

- Crear repositorio pero con gh tanto en rStudio como VSC
gh repo create TestGH --public --source=. --remote=origin --push
Eliminar repo desde VSC y Rstudio terminal es igual
 gh repo delete joseurquiza88/TestGH


Crear repo desde Rstudio con la libria usethis
usethis::create_project() # Aca tengo qe poner el path "pryecto/xxx"
usethis::use_git() # Aca tendo que poner que si quiero hacer los commits

