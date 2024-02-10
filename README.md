# Ready… Set… GO!

### ***Creación del proyecto***

1. Abrimos el `CMD` (o `Terminal`) para crear un nuevo proyecto de Angular. No hace falta que se abra como administrador.

2. Escribimos el siguiente comando para crear un nuevo proyecto:

	```bash
	ng new #el nombre de tu proyecto
	```

3. Cuando nos hagan la pregunta de enrutamiento le diremos que sí (`Y`).

4. Seleccionaremos el formato `SCSS` como estilo predefinido.

5. Una vez finalizada la instalación ***NO*** cerramos el `CMD` (o `Terminal`).

### *Remplazo del `.git`*

6. Abrimos el `Explorador de Archivos` de Windows y seleccionamos abrimos el proyecto que hemos creado recientemente.

7. Borrar la carpeta `.git` que viene por defecto.

8. Volvemos al `CMD` (o `Terminal`) porque volveremos a inicializar el `.git`.

9. Para inicializar de nuevo el proyecto escribiremos el siguiente comando. Es muy importante fijarse en el `CMD` (o `Terminal`) que estamos ubicados en la ruta del proyecto:

	```bash
	git init
	```

10. Seguidamente, en el mismo `CMD` (o `Terminal`) ejecutamos el siguiente comando:

	```bash
	code .
	```

### *Vincular el proyecto con `SourceTree`*

11. Una vez abierto el `Visual Studio Code` abrimos el `SourceTree`.

12. Añadimos una nueva pestaña.

13. Clickamos en el apartado `Add`.

14. Buscar la carpeta donde has ubicado el proyecto que acabas de crear.

15. Darle al botón de `Add`.

16. Una vez vinculado el proyecto con el `SourceTree` abrimos nuestro proyecto de `GitHub`.

17. Creamos el repositorio (si estamos haciendo un exámen el repositorio ha de ser ***PRIVADO***).

18. Una vez creado copiamos la URL que nos da.

19. Volvemos al SourceTree y le damos a la pestaña de `Remote`  que, casualmente, muestra una exclamación.

20. Vinculamos el proyecto remoto de `GitHub` al local como ya hemos visto anteriormente.

21. Una vez vinculado volvemos al `Visual Studio Code`.

### *Configurar `ESLint` y `Prettier`*

22. Una vez que estamos en `Visual Studio Code` presionamos, conjuntamente, las teclas `control + ñ` para abrir el `Terminal` interno.

23. Ahora vamos a instalar `ESLint` así que en el `Terminal` escribimos el siguiente comando:

	```bash
	npm install @typescript-eslint/eslint-plugin@latest --save-dev
	```

24. En el `Terminal` escribiremos el siguiente comando:

	```bash
	npm init @eslint/config
	```

	La configuración que deberíamos de tener sería la siguiente:

	```markdown
	PS C:\Users\user-name\Desktop\name-proyect> npm init @eslint/config
	- [X] How would like to use ESLINT? · problems
	- [X] What type of modules does your project use? · none
	- [X] Which framework does your project use? · none
	- [X] Does your project use Typescript? · Yes
	- [X] Where does your code run? · browser
	- [X] What format do you want your config file to be in? · JSON
	Local ESLint installation not found.
	The config that you've selected requires the following dependencies:

	@typescript-eslint/eslint-plugin@latest, @typescript-eslint/parser@latest, eslint@latest

	up to date, audited 984 packages in 1s

	118 packages are looking for funding
	  run `npm fund` for details

	found 0 vulnerabilities
	Successfully created .eslintrc.json file in C:\Users\user-name\Desktop\name-proyect
	```

25. A continuación instalaremos `Prettier` a través del siguiente comando:

	```bash
	npm install --save-dev --save-exact prettier
	```

26. Creamos en el `:root` de nuestro proyecto crearemos el archivo `.prettierrc` nosotros mismos.

27. Creamos en el `:root` de nuestro proyecto crearemos el archivo `.prettierignore` nosotros mismos.

28. Dentro de este archivo `.prettierignore` escribiremos el siguiente código:

	```bash
	# Ignore artifacts:
	coverage
	node_modules/
	build/
	env/
	/.vscode
	dist
	.gitignore
	```

29. Volveremos a abrir el `Terminal` y ejecutaremos la siguiente linea de comandos:

	```bash
	npm install eslint-config-prettier
	```

30. Abrimos el archivo `.eslintrc.json` y en el apartado `extends` añadiremos `prettier`. Debería de quedar así:

	```bash
	"extends": [
	    "eslint:recommended",
	    "plugin:@typescript-eslint/recommended",
	    "prettier"
	  ],
	```

31. Después añadiremos las siguientes reglas (`rules`) a nuestro archivo `.eslintrc.json` y nos quedaría así:

	```json
	{
	  "env": {
	    "browser": true,
	    "es2021": true
	  },
	  "extends": [
	    "eslint:recommended",
	    "plugin:@typescript-eslint/recommended",
	    "prettier"
	  ],
	  "overrides": [],
	  "parser": "@typescript-eslint/parser",
	  "parserOptions": {
	    "ecmaVersion": "latest"
	  },
	  "plugins": ["@typescript-eslint"],
	  "rules": {
	    "@typescript-eslint/no-namespace": "off",
	    "quotes": ["error", "double"],
	    "semi": ["error", "always"],
	    "@typescript-eslint/no-explicit-any": [
	      "error",
	      {
	        "fixToUnknown": true
	      }
	    ],
	    "curly": "error",
	    "no-empty": "error",
	    "@typescript-eslint/explicit-member-accessibility": "warn",
	    "@typescript-eslint/no-unsafe-assignment": "warn",
	    "@typescript-eslint/explicit-function-return-type": "warn",
	    "@typescript-eslint/no-floating-promises": "warn",
	    "@typescript-eslint/explicit-module-boundary-types": "warn",
	    "@typescript-eslint/member-ordering": "warn",
	    "@typescript-eslint/unbound-method": "warn",
	    "@typescript-eslint/no-unsafe-member-access": "warn"
	  }
	}
	```

32. Abriremos el archivo `.prettierrc` y escribiremos lo siguiente:

	```json
	{
	    "trailingComma": "es5",
	    "tabWidth": 2,
	    "semi": true,
	    "singleQuote": false
	}
	```

### Asignar *`Prettier` por defecto a la hora de formatear*

33. Si queremos asignar la configuración de `Prettier` anterior para tenerla por defecto cuando hagamos la combinación de teclas `shift + alt + F`, que esto formateará el archivo en el que estemos, abriremos las `Settings` de nuestro `Visual Studio Code` así que iremos al engranaje que tenemos en la esquina inferior izquierda de nuestro programa.

34. Pulsaremos la opción de `Settings`.

35. En el buscador de `Settings` escribiremos `default formatter`.

36. En la opción `Editor: Default Formatter` buscaremos `Prettier - Code formatter`.

37. En teoría, ya estaríamos formateando según nuestra configuración anterior.

### *Configurar `package.json`*

38. Aquí configuraremos diversos comandos que nos servirán para ejecutar el `ESLint` y el `Prettier` de una forma más optima. Así que lo primero que haremos será abrir nuestro package.json.

39. Seguidamente buscaremos el apartado `scripts` y lo modificaremos para que quede de la siguiente manera:

	```json
	"scripts": {
	    "ng": "ng",
			"quick": "ng serve",
	    "start": "ng serve --o",
	    "build": "ng build",
	    "watch": "ng build --watch --configuration development",
	    "test": "ng test",
	    "prettier": "prettier \"**/*.ts\" --write --ignore-path .gitignore",
	    "lint": "eslint \"**/*.ts\" --ignore-path .gitignore",
	    "lint.fix": "eslint \"**/*.ts\" --fix --ignore-path .gitignore"
	  },
	```

40. Si nos fijamos hemos cambiado los siguientes apartados:
   - `“start”: “ng serve --o”`: Nos da la posibilidad de abrir automáticamente la aplicación.
   - `"prettier": "prettier \"**/*.ts\" --write --ignore-path .gitignore"`: Formatearemos ***todos*** los archivos de nuestro proyecto en base a las normas escritas en el fichero `.prettierrc`.
   - `"lint": "eslint \"**/*.ts\" --ignore-path .gitignore"`: Lintaremos ***todos*** los archivos de nuestro proyecto en base a las normas escritas en el fichero `.eslintrc`.
   - `"lint.fix": "eslint \"**/*.ts\" --fix --ignore-path .gitignore”`: Arreglaremos todos los problemas de lintaje que nos hayan aparecido y que sean sencillos de solucionar.

### *Configurar debugger*

41. Ir a la opción de `Run and Debug` del Visual Studio Code y darle al botón del engranaje para abrir el fichero de `launch.json`.

42. Cambiar el `launch.json` al código siguiente:
    
    ```json
    {
      // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
      "version": "0.2.0",
      "configurations": [
        {
          "name": "ng serve",
          "type": "chrome",
          "request": "launch",
          "preLaunchTask": "npm: start",
          "url": "http://localhost:4200/",
          "webRoot": "${workspaceFolder}",
          "sourceMaps": true,
          "sourceMapPathOverrides": {
            "meteor://💻app/*": "${workspaceFolder}/*",
            "webpack:///./~/*": "${workspaceFolder}/node_modules/*",
            "webpack://?:*/*": "${workspaceFolder}/*"
          }
        },
        {
          "name": "ng test",
          "type": "chrome",
          "request": "launch",
          "preLaunchTask": "npm: test",
          "url": "http://localhost:9876/debug.html",
          "webRoot": "${workspaceFolder}",
          "sourceMapPathOverrides": {
            "./src/*": "${workspaceFolder}/src/*"
          }
        },
        {
          "name": "ng e2e",
          "type": "node",
          "request": "launch",
          "program": "${workspaceFolder}/node_modules/protractor/bin/protractor",
          "args": ["${workspaceFolder}/e2e/protractor.conf.js"]
        }
      ]
    }
    ```
    

43. Cambiar en la linea 6 del `package.json` a la siguiente del apartado scripts:
    
    ```json
    "start": "ng serve --host=127.0.0.1 --o"
    ```
    
44. El `package.json` debería de quedar de la siguiente forma (obviando las dependencias):
    
    ```json
    {
      "name": "your-project-name",
      "version": "0.0.0",
      "scripts": {
        "ng": "ng",
        "start": "ng serve --host=127.0.0.1 --o",
        "build": "ng build",
        "watch": "ng build --watch --configuration development",
        "test": "ng test",
        "prettier": "prettier \"**/*.ts\" --write --ignore-path .gitignore",
        "lint": "eslint \"**/*.ts\" --ignore-path .gitignore",
        "lint.fix": "eslint \"**/*.ts\" --fix --ignore-path .gitignore"
      },
      "private": true,
      "dependencies": {
        "@angular/animations": "^15.2.0",
        "@angular/common": "^15.2.0",
        "@angular/compiler": "^15.2.0",
        "@angular/core": "^15.2.0",
        "@angular/forms": "^15.2.0",
        "@angular/platform-browser": "^15.2.0",
        "@angular/platform-browser-dynamic": "^15.2.0",
        "@angular/router": "^15.2.0",
        "@ngx-translate/core": "^14.0.0",
        "@ngx-translate/http-loader": "^7.0.0",
        "@popperjs/core": "^2.11.6",
        "bootstrap": "^5.3.0-alpha1",
        "jquery": "^3.6.4",
        "rxjs": "~7.8.0",
        "tslib": "^2.3.0",
        "zone.js": "~0.12.0"
      },
      "devDependencies": {
        "@angular-devkit/build-angular": "^15.2.2",
        "@angular/cli": "~15.2.2",
        "@angular/compiler-cli": "^15.2.0",
        "@types/jasmine": "~4.3.0",
        "@typescript-eslint/eslint-plugin": "^5.56.0",
        "@typescript-eslint/parser": "^5.56.0",
        "eslint": "^8.36.0",
        "eslint-config-prettier": "^8.8.0",
        "jasmine-core": "~4.5.0",
        "karma": "~6.4.0",
        "karma-chrome-launcher": "~3.1.0",
        "karma-coverage": "~2.2.0",
        "karma-jasmine": "~5.1.0",
        "karma-jasmine-html-reporter": "~2.0.0",
        "prettier": "^2.8.7",
        "typescript": "~4.9.4"
      }
    }
    ```
    

45. Una vez establecido el `breakpoint` donde queremos ver que está sucediendo en el código haremos un `npm run start`.

46. Una vez inicializado el proyecto iremos a `Run and Debug` del Visual Studio Code y lo inicializaremos también dándole al `Play`.

47. Orar a que obre la magia.

### *Creación de una estructura escalable*

48. Para crear una estructura escalable tenemos que situarnos en el `:root` del `Visual Studio Code`.

49. A partir de ahí tendremos que ir creando carpetas. El resultado final debería de ser algo tal que así:
    
	```markdown
	/.angular
	/.vscode
	/node_modules
	/src
	 |/app
	  |/core
	   |/components
	   |/constants
	   |/enums
	   |/guards
	   |/interceptor
	   |/models
	   |/services
	   |/utils
	  |/features
	   |/components
	   |/models
	   |/pages
	   |/services
	  |/shared
	   |/components
	   |/directives
	   |/pipes
	   |/views
	  |app-routing.module.ts
	  |app.component.html
	  |app.component.scss
	  |app.component.spec.ts
	  |app.component.ts
	  |app.module.ts
	 |/assets
	  |/i18n
	  |/icons
	  |/images
	  |/static
	  |.gitkeep
	 |favicon.ico
	 |index.html
	 |main.ts
	 |styles.scss
	.dockerignore
	.editorconfig
	.eslintrc.json
	.gitignore
	.prettierignore
	.prettierrc
	angular.json
	Dockerfile
	package-lock.json
	README.md
	tsconfig.app.json
	tsconfig.json
	tsconfig.spec.json

	```
    

### *Configurar `.gitignore`*

50. Para configurar el `.gitignore` tendremos que crear, o abrir, el archivo `.gitignore` en el `:root`.

51. Dentro escribiremos esta plantilla:

	```markdown
	# Compiled output
	/dist
	/tmp
	/out-tsc
	/bazel-out

	# Node
	/node_modules
	npm-debug.log
	yarn-error.log

	# IDEs and editors
	.idea/
	.project
	.classpath
	.c9/
	*.launch
	.settings/
	*.sublime-workspace

	# Visual Studio Code
	/.vscode
	.vscode/*
	!.vscode/settings.json
	!.vscode/tasks.json
	!.vscode/launch.json
	!.vscode/extensions.json
	.history/*

	# Miscellaneous
	/.angular/cache
	.sass-cache/
	/connect.lock
	/coverage
	/libpeerconnection.log
	testem.log
	/typings

	# System files
	.DS_Store
	Thumbs.db
	package-lock.json
	```

52. Tenemos que tener en cuenta que es una plantila y esta cambiara en base a las necesidades del proyecto.

### ***El primer `commit`***

53. Como hemos dejado el `SourceTree` abierto lo abrimos. Sino lo volvemos abrir y vamos a la pestaña de nuestro proyecto.

54. Vamos a la pestaña `File Status`.

55. Hacemos un `Stage All` de nuestros archivos creados y veremos que se ubicarán en la casilla de `Staged Files`. Este será el primer commit que hagamos.

56. Escribimos un mensaje para commitear.

57. Marcamos la casilla de `Push changes immediately to origen/master` justo debajo de la caja de texto de añadir texto al `commit`.

58. Presionamos el botón de `Commit`.

59. Habremos hecho nuestro primer `commit`. Para comprobar que hemos subido todos los archivos correctamente iremos a nuestro `GitHub` para comprobarlo.

### *Githooks/pre-commit*

60. Para hacer los `githooks` y así evitar que podamos hacer `commits` directamente desde la rama `master` abriremos desde el `Explorador de Archivos` de Windows nuestro proyecto.

61. Abriremos la carpeta `.git`.

62. Abriremos la carpeta `hooks`.

63. Buscaremos el archivo `pre-commit` y eliminaremos su extensión `.sample`.

64. Abriremos el archivo `pre-commit`.

65. Eliminaremos todo el código que haya dentro de dicho archivo. Añadiremos este otro en su lugar y lo guardaremos:

	```bash
	#!/bin/sh
	current_branch=$(git symbolic-ref --short HEAD)
	protected_branch="master"

	if [ "$current_branch" = "$protected_branch" ]
	then
		echo "You cannot commit directly to the $protected_branch branch."
		exit 1
	fi

	exit 0
	```

66. Para hacer una prueba abriremos el `SourceTree`.

67. Haremos un cambio minúsculo en nuestro proyecto para poder tener algún `Unstaged files`.

68. Una vez hecho esto añadiremos los archivos modificados pulsando el botón `Stage All`.

69. Escribiremos un mensaje cualquiera en el `commit` y pulsaremos el botón `Commit`.

70. Si todo se ha hecho correctamente debería de salirte la barra de cargar el `commit` en rojo y debería de salirte el siguiente mensaje: `"You cannot commit directly to the $protected_branch branch."`. Si os fijais es el mensaje que le hemos dicho en el código anterior.

### *Variables de entorno (development and production) deployando en Vercel*

71. Primero tenemos que crear las `environments`. Para crearlo ejecutaremos el siguiente comando desde el `:root`:
    
    ```bash
    ng generate environments
    ```
    
72. Creamos otro fichero de `environments` más dentro de la carpeta recientemente generada. Lo llamaremos `environment.prod.ts`. Debería de quedarnos tres ficheros dentro de la carpeta `environments` que serían `environment.development.ts`, el `environment.prod.ts` y el `environment.ts`.

73. Dentro del fichero `environment.prod.ts` escribiremos lo siguiente:
    
    ```tsx
    export const environment = {
    	production: true,
    	name:'production environment',
    	code: 1004
    };
    ```
    

74. Dentro del fichero `environment.development.ts` escribiremos lo siguiente:
    
    ```tsx
    export const environment = {
    	production: false,
    	name:'development environment',
    	code: 1003
    };
    ```
    
75. Dentro del fichero `environment.prod.ts` escribiremos lo siguiente:
    
    ```tsx
    export const environment = {
    	production: false,
    	name:'',
    	code: 0
    };
    ```
    
76. Accedemos al `angular.json` y lo dejaremos tal que así. Sobretodo tenemos que añadir, después del `"outputHashing": "all"`, lo siguiente:
    
    ```json
    "fileReplacements": 
    [
    	{
    		"replace": "src/environments/environment.ts",
    		"with": "src/environments/environment.prod.ts"
    	}
    ]
    ```
    
    El código queda tal que así:
    
    ```json
    {
      "$schema": "./node_modules/@angular/cli/lib/config/schema.json",
      "version": 1,
      "newProjectRoot": "projects",
      "projects": {
        "testEnvironments": {
          "projectType": "application",
          "schematics": {
            "@schematics/angular:component": {
              "style": "scss"
            }
          },
          "root": "",
          "sourceRoot": "src",
          "prefix": "app",
          "architect": {
            "build": {
              "builder": "@angular-devkit/build-angular:browser",
              "options": {
                "outputPath": "dist/test-environments",
                "index": "src/index.html",
                "main": "src/main.ts",
                "polyfills": ["zone.js"],
                "tsConfig": "tsconfig.app.json",
                "inlineStyleLanguage": "scss",
                "assets": ["src/favicon.ico", "src/assets"],
                "styles": ["src/styles.scss"],
                "scripts": []
              },
              "configurations": {
                "production": {
                  "budgets": [
                    {
                      "type": "initial",
                      "maximumWarning": "500kb",
                      "maximumError": "1mb"
                    },
                    {
                      "type": "anyComponentStyle",
                      "maximumWarning": "2kb",
                      "maximumError": "4kb"
                    }
                  ],
                  "outputHashing": "all",
                  "fileReplacements": [
                    {
                      "replace": "src/environments/environment.ts",
                      "with": "src/environments/environment.prod.ts"
                    }
                  ]
                },
                "development": {
                  "buildOptimizer": false,
                  "optimization": false,
                  "vendorChunk": true,
                  "extractLicenses": false,
                  "sourceMap": true,
                  "namedChunks": true,
                  "fileReplacements": [
                    {
                      "replace": "src/environments/environment.ts",
                      "with": "src/environments/environment.development.ts"
                    }
                  ]
                }
              },
              "defaultConfiguration": "production"
            },
            "serve": {
              "builder": "@angular-devkit/build-angular:dev-server",
              "configurations": {
                "production": {
                  "browserTarget": "testEnvironments:build:production"
                },
                "development": {
                  "browserTarget": "testEnvironments:build:development"
                }
              },
              "defaultConfiguration": "development"
            },
            "extract-i18n": {
              "builder": "@angular-devkit/build-angular:extract-i18n",
              "options": {
                "browserTarget": "testEnvironments:build"
              }
            },
            "test": {
              "builder": "@angular-devkit/build-angular:karma",
              "options": {
                "polyfills": ["zone.js", "zone.js/testing"],
                "tsConfig": "tsconfig.spec.json",
                "inlineStyleLanguage": "scss",
                "assets": ["src/favicon.ico", "src/assets"],
                "styles": ["src/styles.scss"],
                "scripts": []
              }
            }
          }
        }
      },
      "cli": {
        "analytics": false
      }
    }
    ```
    
77. En el `:root` crearemos un archivo `shell` llamado `vercel.sh`. Y escribiremos el siguiente código:
    
    ```bash
    #!/bin/bash
    
    if [[ $VERCEL_GIT_COMMIT_REF == "master" ]] ; then
      echo "This is our master branch"
      npm run build:production
    else
      echo "This is not our master branch"
      npm run build:development
    fi
    ```
    

78. Ahora iremos al `package.json` y cambiaremos el un fragmento al nuevo. El código está a continuación:
    
    ```json
    "build:production": "ng build",
    "build:development": "ng build --configuration development",
    ```
    

79. Ir al `Sourcetree` y crearemos la rama `develop`.

80. Haremos un pequeño cambio en nuestro proyecto de `Visual Studio Code` y subiremos a `Stage` el cambio.

81. Seguidamente haremos un `commit` de esto.

82. Antes de hacer el `merge` en `GitHub` iremos a `Vercel` para crear los diferentes entornos.

83. En `Vercel` importaremos el proyecto recientemente creado y lo `deployamos`.

84. Ahora vamos a los `Settings` del proyecto.

85. Vamos al `Domains`.

86. Editamos el dominio que tenemos y le cambiamos el nombre a: `test-environments-prod.vercel.app`.

87. Añadimos el nuevo dominio y lo cambiamos a: `test-environments-dev.vercel.app`.

88. Editamos este dominio anterior y en el apartado de `Git Branch` pondremos el nombre de la rama que queramos que sea desarrollo. En este caso la cambiaremos a `develop`.

89. A continuación veremos que están asignadas las ramas a sus respectivos entornos.

90. Vamos a `General` y activamos el `Override` del `Build Command` en el apartado `Build & Development Settings`.

91. Cambiamos lo que hay dentro por `sh vercel.sh`. Aunque salga un mensaje de `PRECAUCIÓN` no tenemos que preopcuparnos.

92. Volvemos a `GitHub` y hacemos el `merge` que tenemos pendiente.

93. Esperamos a que se deploye automáticamente en `Vercel` a través de `GitHub` y aceptamos el `Merge pull request`. Confirmamos.

94. Ahora vamos a crear una distinción para saber en que entorno estamos.

95. Habría que hacer algún en el `Visual Studio Code` porque, posiblemente, nos encontremos con el escenario de que tengamos que hacer algo un poco peculiar con `GitHub`.

96. Hacemos un cambio y lo subimos desde `develop` en `Sourcetree`.

97. Después en `GitHub` vamos a `branches` y en las rama `develop` pulsamos a `New a pull request` y automáticamente se nos mostrará el `push` y el `pull request` que hemos hecho desde el `Sourcetree`.

98. Volvemos al `Sourcetree` y hacemos un `pull` en la `master`.

99. Si vamos a `Vercel` y se hacen los cambios dependiendo de la rama ya estamos.

### *¡FELICIDADES! Tu proyecto está listo para empezar a trabajar correctamente.*