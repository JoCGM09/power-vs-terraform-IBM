# Despliegue de instancia Power VS usando Terraform y Schematics
## Objetivo

Presentar el procedimiento para desplegar una instancia de Power VS utilizando Terraform y IBM Schematics para agilizar el despliegue

<br/> 

## Requerimientos
- Git instalado
- Tener desplegada una Power Location

## Creación del reponsitorio en Github

Ingresar a su cuenta personal o de empresa de Github y seleccionar Repositorios, luego pulsar el botón nuevo.
Colocar el nombre del proyecto y seleccionar Crear Repositorio. 

<p align="center"><img width="600" src="https://github.com/JoCGM09/power-vs-terraform-IBM/blob/master/images/github1.png"></p>

Una vez creado el repositorio podrá descargar las plantillas con los archivos necesarios desde el *siguiente link*

Luego, descargado y descomprimido el archivo, procederemos a abrir una terminal de git en la carpeta, para ello podemos seleccionar la carpeta, dar clic derecho y seleccionar **Git bash here**.
Una vez allí realizamos los siguientes comandos para subir el proyecto al repositorio de Github.

1. <code>git init</code>
2. <code>git add .</code>
3. <code>git commit -m "first commit"</code>
4. <code>git remote add origin + <b>enlace del repositorio</b></code>
5. <code>git push -u origin master</b></code>

Una vez creado el proyecto y vinculado al repositorio creado en Github se procederá a crear los archivos **.tf** necesarios para el despliegue.
Puede revisar el código de las plantillas generadas en el **siguiente archivo** 

<br />

## Modificación del archivo variables.tf

### Api key

### ID del Power location

### ID de la imagen 

### Nombre de la instancia

### Nombre para la llave SSH

### Contenido de la llave pública SSH

### Nombre para la red

<br />

## Modificación del archivo main.tf
## Creación de un espacio de trabajo en Schematics
## Generación y ejecución del plan 