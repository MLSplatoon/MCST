#!/bin/bash/ 

#          X-- SPANISH VERSION (español) --X

#    ▄▄▄▄███▄▄▄▄    ▄████████    ▄████████     ███     
#  ▄██▀▀▀███▀▀▀██▄ ███    ███   ███    ███ ▀█████████▄ 
#  ███   ███   ███ ███    █▀    ███    █▀     ▀███▀▀██ 
#  ███   ███   ███ ███          ███            ███   ▀ 
#  ███   ███   ███ ███        ▀███████████     ███     
#  ███   ███   ███ ███    █▄           ███     ███     
#  ███   ███   ███ ███    ███    ▄█    ███     ███     
#   ▀█   ███   █▀  ████████▀   ▄████████▀     ▄████▀   


# Script creado por MA_Dev (Versión 1.7)
# Para Todos los que quieran jugar en un servidor local, Más facil y rapido.

# 1. Abrir una Terminal Bash, O Una terminal Git Bash
# 2. Ejecutar el Script con: ./MCST.sh
# 3. Presiona 1 y dale a enter. Ya tienes abierto el servidor
# 4. Para detener el servidor, escribe: stop
# 5. Hay 2 Scripts: MCST.sh (Español), MCST-EN.sh (Inglés, English).

# edit: Después de mucho tiempo, MCST va a recibir una actualización.

#  --------- ENGLISH ------------
# 1. Open a Bash Terminal or a Git Bash Terminal.
# 2. Execute the script with: ./MSCT-EN.sh
# 3. Press 1 and later press enter. Now you have the server open
# 4. to close the server, type: stop















#  XX NO TOQUES NADA DE AQUI ABAJO, PUEDES DAÑARLO Y GENERAR FALLOS GRAVES EN EL SCRIPT. XX


# Colores ANSI
Verde="\033[0;32m"
Amarillo="\033[0;33m"
Rojo="\033[0;31m"
NC="\033[0m"
Azul_Dark="\033[34m"
Xtra="\033[35m"
Azul="\033[36m"

arte_ascii="
╔╦╗╦╔╗╔╔═╗╔═╗╦═╗╔═╗╔═╗╔╦╗        ╔═╗╔═╗╦═╗╦╔═╗╔╦╗  
║║║║║║║║╣ ║  ╠╦╝╠═╣╠╣  ║         ╚═╗║  ╠╦╝║╠═╝ ║   
╩ ╩╩╝╚╝╚═╝╚═╝╩╚═╩ ╩╚   ╩         ╚═╝╚═╝╩╚═╩╩   ╩   
   ╔╦╗╔═╗╔═╗╦                    ╔═╗╔═╗╔╦╗╦ ╦╔═╗  
    ║ ║ ║║ ║║                    ╚═╗║╣  ║ ║ ║╠═╝  
    ╩ ╚═╝╚═╝╩═╝                  ╚═╝╚═╝ ╩ ╚═╝╩    
"

# Definir artes ASCII
ART1="""
   ▄▄▄▄███▄▄▄▄    ▄████████    ▄████████     ███     
 ▄██▀▀▀███▀▀▀██▄ ███    ███   ███    ███ ▀█████████▄ 
 ███   ███   ███ ███    █▀    ███    █▀     ▀███▀▀██ 
 ███   ███   ███ ███          ███            ███   ▀ 
 ███   ███   ███ ███        ▀███████████     ███     
 ███   ███   ███ ███    █▄           ███     ███     
 ███   ███   ███ ███    ███    ▄█    ███     ███     
  ▀█   ███   █▀  ████████▀   ▄████████▀     ▄████▀                                                                                                                     
"""

ART2="""
 ███▄ ▄███▓ ▄▄▄         ▓█████▄ ▓█████ ██▒   █▓
▓██▒▀█▀ ██▒▒████▄       ▒██▀ ██▌▓█   ▀▓██░   █▒
▓██    ▓██░▒██  ▀█▄     ░██   █▌▒███   ▓██  █▒░
▒██    ▒██ ░██▄▄▄▄██    ░▓█▄   ▌▒▓█  ▄  ▒██ █░░
▒██▒   ░██▒ ▓█   ▓██▒   ░▒████▓ ░▒████▒  ▒▀█░  
░ ▒░   ░  ░ ▒▒   ▓▒█░    ▒▒▓  ▒ ░░ ▒░ ░  ░ ▐░  
░  ░      ░  ▒   ▒▒ ░    ░ ▒  ▒  ░ ░  ░  ░ ░░  
░      ░     ░   ▒       ░ ░  ░    ░       ░░  
       ░         ░  ░      ░       ░  ░     ░  
                         ░                 ░   
"""
  #* A que está guapo el ASCII? :D

exit_script_alt() {
  echo -e "${Verde}Finalizando Script, MCST Setup 2025 - MA_Dev | No estoy asociado con Mojang Studios o Microsoft.${NC}"
  exit 0
}

#! INICIO MINECRAFT SERVER VERSIONES

descargar_minecraft_server_1215() {

    if [[ -f "server.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    return 0 # Salir de la función sin error
    fi

    echo "Descargando el archivo server.jar de minecraft.net (piston-data.mojang.com)..."

    # Descargar server.jar utilizando el enlace que proporcionaste
    curl -L -o server.jar https://piston-data.mojang.com/v1/objects/e6ec2f64e6080b9b5d9b471b291c33cc7f509733/server.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f server.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo server.jar desde minecraft.net, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    # Aceptar el EULA
    echo "eula=true" > eula.txt
    echo "Al correr un servidor de Minecraft, Aceptas el EULA (aceptado automáticamente). ¡Listo para iniciar el servidor de Minecraft!"
}

descargar_minecraft_server_1214() {

    if [[ -f "server.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    return 0 # Salir de la función sin error
    fi

    echo "Descargando el archivo server.jar de minecraft.net (piston-data.mojang.com)..."

    # Descargar server.jar utilizando el enlace que proporcionaste
    curl -L -o server.jar https://piston-data.mojang.com/v1/objects/4707d00eb834b446575d89a61a11b5d548d8c001/server.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f server.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo server.jar desde minecraft.net, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    # Aceptar el EULA
    echo "eula=true" > eula.txt
    echo "Al correr un servidor de Minecraft, Aceptas el EULA (aceptado automáticamente). ¡Listo para iniciar el servidor de Minecraft!"
}

descargar_minecraft_server_1213() {

    if [[ -f "server.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    return 0 # Salir de la función sin error
    fi

    echo "Descargando el archivo server.jar de minecraft.net (piston-data.mojang.com)..."

    # Descargar server.jar utilizando el enlace que proporcionaste
    curl -L -o server.jar https://piston-data.mojang.com/v1/objects/45810d238246d90e811d896f87b14695b7fb6839/server.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f server.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo server.jar desde minecraft.net, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    # Aceptar el EULA
    echo "eula=true" > eula.txt
    echo "Al correr un servidor de Minecraft, Aceptas el EULA (aceptado automáticamente). ¡Listo para iniciar el servidor de Minecraft!"
}

descargar_minecraft_server_1211() {

    if [[ -f "server.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    return 0 # Salir de la función sin error
    fi

    echo "Descargando el archivo server.jar de minecraft.net (piston-data.mojang.com)..."

    # Descargar server.jar utilizando el enlace que proporcionaste
    curl -L -o server.jar https://piston-data.mojang.com/v1/objects/59353fb40c36d304f2035d51e7d6e6baa98dc05c/server.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f server.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo server.jar desde minecraft.net, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    # Aceptar el EULA
    echo "eula=true" > eula.txt
    echo "Al correr un servidor de Minecraft, Aceptas el EULA (aceptado automáticamente). ¡Listo para iniciar el servidor de Minecraft!"
}

descargar_minecraft_server_121() {

    if [[ -f "server.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    return 0 # Salir de la función sin error
    fi

    echo "Descargando el archivo server.jar de minecraft.net (piston-data.mojang.com)..."

    # Descargar server.jar utilizando el enlace que proporcionaste
    curl -L -o server.jar https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f server.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo server.jar desde minecraft.net, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    # Aceptar el EULA
    echo "eula=true" > eula.txt
    echo "Al correr un servidor de Minecraft, Aceptas el EULA (aceptado automáticamente). ¡Listo para iniciar el servidor de Minecraft!"
}

descargar_minecraft_server_1206() {

    if [[ -f "server.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    return 0 # Salir de la función sin error
    fi

    echo "Descargando el archivo server.jar de minecraft.net (piston-data.mojang.com)..."

    # Descargar server.jar utilizando el enlace que proporcionaste
    curl -L -o server.jar https://piston-data.mojang.com/v1/objects/145ff0858209bcfc164859ba735d4199aafa1eea/server.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f server.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo server.jar desde minecraft.net, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    # Aceptar el EULA
    echo "eula=true" > eula.txt
    echo "Al correr un servidor de Minecraft, Aceptas el EULA (aceptado automáticamente). ¡Listo para iniciar el servidor de Minecraft!"
}

descargar_minecraft_server_1204() {

    if [[ -f "server.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    return 0 # Salir de la función sin error
    fi

    echo "Descargando el archivo server.jar de minecraft.net (piston-data.mojang.com)..."

    # Descargar server.jar utilizando el enlace que proporcionaste
    curl -L -o server.jar https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f server.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo server.jar desde minecraft.net, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    # Aceptar el EULA
    echo "eula=true" > eula.txt
    echo "Al correr un servidor de Minecraft, Aceptas el EULA (aceptado automáticamente). ¡Listo para iniciar el servidor de Minecraft!"
}

descargar_minecraft_server_120() {

    if [[ -f "server.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    return 0 # Salir de la función sin error
    fi

    echo "Descargando el archivo server.jar de minecraft.net (piston-data.mojang.com)..."

    # Descargar server.jar utilizando el enlace que proporcionaste
    curl -L -o server.jar https://piston-data.mojang.com/v1/objects/15c777e2cfe0556eef19aab534b186c0c6f277e1/server.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f server.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo server.jar desde minecraft.net, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    # Aceptar el EULA
    echo "eula=true" > eula.txt
    echo "Al correr un servidor de Minecraft, Aceptas el EULA (aceptado automáticamente). ¡Listo para iniciar el servidor de Minecraft!"
}

descargar_minecraft_server_119() {

    if [[ -f "server.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    return 0 # Salir de la función sin error
    fi

    echo "Descargando el archivo server.jar de minecraft.net (piston-data.mojang.com)..."

    # Descargar server.jar utilizando el enlace que proporcionaste
    curl -L -o server.jar https://piston-data.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f server.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo server.jar desde minecraft.net, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    # Aceptar el EULA
    echo "eula=true" > eula.txt
    echo "Al correr un servidor de Minecraft, Aceptas el EULA (aceptado automáticamente). ¡Listo para iniciar el servidor de Minecraft!"
}

descargar_minecraft_server_1182() {

    if [[ -f "server.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    return 0 # Salir de la función sin error
    fi

    echo "Descargando el archivo server.jar de minecraft.net (piston-data.mojang.com)..."

    # Descargar server.jar utilizando el enlace que proporcionaste
    curl -L -o server.jar https://piston-data.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f server.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo server.jar desde minecraft.net, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    # Aceptar el EULA
    echo "eula=true" > eula.txt
    echo "Al correr un servidor de Minecraft, Aceptas el EULA (aceptado automáticamente). ¡Listo para iniciar el servidor de Minecraft!"
}

descargar_minecraft_server_1161() {

    if [[ -f "server.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    return 0 # Salir de la función sin error
    fi

    echo "Descargando el archivo server.jar de minecraft.net (piston-data.mojang.com)..."

    # Descargar server.jar utilizando el enlace que proporcionaste
    curl -L -o server.jar https://piston-data.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f server.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo server.jar desde minecraft.net, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    # Aceptar el EULA
    echo "eula=true" > eula.txt
    echo "Al correr un servidor de Minecraft, Aceptas el EULA (aceptado automáticamente). ¡Listo para iniciar el servidor de Minecraft!"
}

descargar_minecraft_server_1165() {

    if [[ -f "server.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    return 0 # Salir de la función sin error
    fi

    echo "Descargando el archivo server.jar de minecraft.net (piston-data.mojang.com)..."

    # Descargar server.jar utilizando el enlace que proporcionaste
    curl -L -o server.jar https://piston-data.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f server.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo server.jar desde minecraft.net, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    # Aceptar el EULA
    echo "eula=true" > eula.txt
    echo "Al correr un servidor de Minecraft, Aceptas el EULA (aceptado automáticamente). ¡Listo para iniciar el servidor de Minecraft!"
}
#! FIN MINECRAFT SERVER VERSIONES


#! PAPER VERSIONES INICIO 
descargar_minecraft_serverP_1215() {
    descargar_minecraft_serverP_SUB1215
}

descargar_minecraft_serverP_1214() {
    descargar_minecraft_serverP_SUB1214
}

descargar_minecraft_serverP_1213() {
    descargar_minecraft_serverP_SUB1213
}

descargar_minecraft_serverP_1211() {
    descargar_minecraft_serverP_SUB1211
}

descargar_minecraft_serverP_121() {
    descargar_minecraft_serverP_SUB121
}

descargar_minecraft_serverP_1204() {
    descargar_minecraft_serverP_SUB1204
}

descargar_minecraft_serverP_1206() {
    descargar_minecraft_serverP_SUB1206
}

descargar_minecraft_serverP_120() {
    descargar_minecraft_serverP_SUB120
}

descargar_minecraft_serverP_119() {
    descargar_minecraft_serverP_SUB119
}

descargar_minecraft_serverP_1182() {
    descargar_minecraft_serverP_SUB1182
}

descargar_minecraft_serverP_1165() {
    descargar_minecraft_serverP_SUB1165
}

descargar_minecraft_serverP_1161() {
    descargar_minecraft_serverP_SUB1161
}

descargar_minecraft_serverP_SUB1215(){

    if [[ -f "paper.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    sleep 4
    return 0 # Salir de la función sin error
    fi

    echo "Descargando la versión de Paper (api.papermc.io)..."

    curl -L -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21.5/builds/114/downloads/paper-1.21.5-114.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f paper.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo paper.jar desde api.papermc.io, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    echo "Completado, ejecute MCST.sh de nuevo."
    sleep 4

    # Determinar la ubicación del script
    script_dir=$(dirname "$(readlink -f "$0")")

    # Crear el archivo en el mismo directorio del script para instalar plugins
  cat <<EOF > instalar-plugins-pasos.txt
  ------ TUTORIAL COMO INSTALAR PLUGINS -------
  1. Para Instalar un plugin, tienes que asegurarte que esté para la versión
  Del Servidor y que esté para Paper. Descargalo de Spigot o de una fuente
  verificada.
  2. Descargas el plugin y mueves el archivo ".jar" que acabas de
  descargar a la carpeta "plugins"
  3. Cuando esté en la carpeta correcta ("Plugins"). Ejecutas MCST y 
  Enciendes el servidor
  (Recuerda que tienes que iniciar el servidor y detenerlo para
  tener la carpeta "plugins" si no lo has iniciado por primera vez)
  -------------------------
  YA TIENES UN PLUGIN INSTALADO EN TU SERVIDOR DE MINECRAFT.
EOF
  cat <<EOF > install-plugins-tutorial.txt
  ------ HOW TO INSTALL PLUGINS TUTORIAL -------
  1. To install a plugin, you need to know first that is on the
  version of the server and its for paper. Download it from spigot or
  for a verified webpage.
  2. Download the plugin and move the ".jar" file that you downloaded
  to the folder "plugins" in the server.
  3. When the .jar file is on the "plugins" folder, you can start the
  script MCST-EN.
  (Remember that you have you start the server and stop it. to get the
  plugins folder. Start the server for the first time. to get the folders)
  -------------------------
  NOW YOU HAVE A PLUGIN INSTALLED ON YOUR MINECRAFT SERVER.
EOF
}

descargar_minecraft_serverP_SUB1214(){

    if [[ -f "paper.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    sleep 4
    return 0 # Salir de la función sin error
    fi

    echo "Descargando la versión de Paper (api.papermc.io)..."

    curl -L -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21.4/builds/232/downloads/paper-1.21.4-232.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f paper.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo paper.jar desde api.papermc.io, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    echo "Completado, ejecute MCST.sh de nuevo."
    sleep 4

    # Determinar la ubicación del script
    script_dir=$(dirname "$(readlink -f "$0")")

    # Crear el archivo en el mismo directorio del script para instalar plugins
  cat <<EOF > instalar-plugins-pasos.txt
  ------ TUTORIAL COMO INSTALAR PLUGINS -------
  1. Para Instalar un plugin, tienes que asegurarte que esté para la versión
  Del Servidor y que esté para Paper. Descargalo de Spigot o de una fuente
  verificada.
  2. Descargas el plugin y mueves el archivo ".jar" que acabas de
  descargar a la carpeta "plugins"
  3. Cuando esté en la carpeta correcta ("Plugins"). Ejecutas MCST y 
  Enciendes el servidor
  (Recuerda que tienes que iniciar el servidor y detenerlo para
  tener la carpeta "plugins" si no lo has iniciado por primera vez)
  -------------------------
  YA TIENES UN PLUGIN INSTALADO EN TU SERVIDOR DE MINECRAFT.
EOF
  cat <<EOF > install-plugins-tutorial.txt
  ------ HOW TO INSTALL PLUGINS TUTORIAL -------
  1. To install a plugin, you need to know first that is on the
  version of the server and its for paper. Download it from spigot or
  for a verified webpage.
  2. Download the plugin and move the ".jar" file that you downloaded
  to the folder "plugins" in the server.
  3. When the .jar file is on the "plugins" folder, you can start the
  script MCST-EN.
  (Remember that you have you start the server and stop it. to get the
  plugins folder. Start the server for the first time. to get the folders)
  -------------------------
  NOW YOU HAVE A PLUGIN INSTALLED ON YOUR MINECRAFT SERVER.
EOF
}

descargar_minecraft_serverP_SUB1213(){

    if [[ -f "paper.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    sleep 4
    return 0 # Salir de la función sin error
    fi

    echo "Descargando la versión de Paper (api.papermc.io)..."

    curl -L -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21.3/builds/83/downloads/paper-1.21.3-83.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f paper.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo paper.jar desde api.papermc.io, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    echo "Completado, ejecute MCST.sh de nuevo."
    sleep 4

    # Determinar la ubicación del script
    script_dir=$(dirname "$(readlink -f "$0")")

    # Crear el archivo en el mismo directorio del script para instalar plugins
  cat <<EOF > instalar-plugins-pasos.txt
  ------ TUTORIAL COMO INSTALAR PLUGINS -------
  1. Para Instalar un plugin, tienes que asegurarte que esté para la versión
  Del Servidor y que esté para Paper. Descargalo de Spigot o de una fuente
  verificada.
  2. Descargas el plugin y mueves el archivo ".jar" que acabas de
  descargar a la carpeta "plugins"
  3. Cuando esté en la carpeta correcta ("Plugins"). Ejecutas MCST y 
  Enciendes el servidor
  (Recuerda que tienes que iniciar el servidor y detenerlo para
  tener la carpeta "plugins" si no lo has iniciado por primera vez)
  -------------------------
  YA TIENES UN PLUGIN INSTALADO EN TU SERVIDOR DE MINECRAFT.
EOF
  cat <<EOF > install-plugins-tutorial.txt
  ------ HOW TO INSTALL PLUGINS TUTORIAL -------
  1. To install a plugin, you need to know first that is on the
  version of the server and its for paper. Download it from spigot or
  for a verified webpage.
  2. Download the plugin and move the ".jar" file that you downloaded
  to the folder "plugins" in the server.
  3. When the .jar file is on the "plugins" folder, you can start the
  script MCST-EN.
  (Remember that you have you start the server and stop it. to get the
  plugins folder. Start the server for the first time. to get the folders)
  -------------------------
  NOW YOU HAVE A PLUGIN INSTALLED ON YOUR MINECRAFT SERVER.
EOF
}

descargar_minecraft_serverP_SUB1211(){

    if [[ -f "paper.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    sleep 4
    return 0 # Salir de la función sin error
    fi

    echo "Descargando la versión de Paper (api.papermc.io)..."

    curl -L -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/133/downloads/paper-1.21.1-133.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f paper.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo paper.jar desde api.papermc.io, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    echo "Completado, ejecute MCST.sh de nuevo."
    sleep 4

    # Determinar la ubicación del script
    script_dir=$(dirname "$(readlink -f "$0")")

    # Crear el archivo en el mismo directorio del script para instalar plugins
  cat <<EOF > instalar-plugins-pasos.txt
  ------ TUTORIAL COMO INSTALAR PLUGINS -------
  1. Para Instalar un plugin, tienes que asegurarte que esté para la versión
  Del Servidor y que esté para Paper. Descargalo de Spigot o de una fuente
  verificada.
  2. Descargas el plugin y mueves el archivo ".jar" que acabas de
  descargar a la carpeta "plugins"
  3. Cuando esté en la carpeta correcta ("Plugins"). Ejecutas MCST y 
  Enciendes el servidor
  (Recuerda que tienes que iniciar el servidor y detenerlo para
  tener la carpeta "plugins" si no lo has iniciado por primera vez)
  -------------------------
  YA TIENES UN PLUGIN INSTALADO EN TU SERVIDOR DE MINECRAFT.
EOF
  cat <<EOF > install-plugins-tutorial.txt
  ------ HOW TO INSTALL PLUGINS TUTORIAL -------
  1. To install a plugin, you need to know first that is on the
  version of the server and its for paper. Download it from spigot or
  for a verified webpage.
  2. Download the plugin and move the ".jar" file that you downloaded
  to the folder "plugins" in the server.
  3. When the .jar file is on the "plugins" folder, you can start the
  script MCST-EN.
  (Remember that you have you start the server and stop it. to get the
  plugins folder. Start the server for the first time. to get the folders)
  -------------------------
  NOW YOU HAVE A PLUGIN INSTALLED ON YOUR MINECRAFT SERVER.
EOF
}

descargar_minecraft_serverP_SUB121(){

    if [[ -f "paper.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    sleep 4
    return 0 # Salir de la función sin error
    fi

    echo "Descargando la versión de Paper (api.papermc.io)..."

    curl -L -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21/builds/130/downloads/paper-1.21-130.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f paper.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo paper.jar desde api.papermc.io, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    echo "Completado, ejecute MCST.sh de nuevo."
    sleep 4

    # Determinar la ubicación del script
    script_dir=$(dirname "$(readlink -f "$0")")

    # Crear el archivo en el mismo directorio del script para instalar plugins
  cat <<EOF > instalar-plugins-pasos.txt
  ------ TUTORIAL COMO INSTALAR PLUGINS -------
  1. Para Instalar un plugin, tienes que asegurarte que esté para la versión
  Del Servidor y que esté para Paper. Descargalo de Spigot o de una fuente
  verificada.
  2. Descargas el plugin y mueves el archivo ".jar" que acabas de
  descargar a la carpeta "plugins"
  3. Cuando esté en la carpeta correcta ("Plugins"). Ejecutas MCST y 
  Enciendes el servidor
  (Recuerda que tienes que iniciar el servidor y detenerlo para
  tener la carpeta "plugins" si no lo has iniciado por primera vez)
  -------------------------
  YA TIENES UN PLUGIN INSTALADO EN TU SERVIDOR DE MINECRAFT.
EOF
  cat <<EOF > install-plugins-tutorial.txt
  ------ HOW TO INSTALL PLUGINS TUTORIAL -------
  1. To install a plugin, you need to know first that is on the
  version of the server and its for paper. Download it from spigot or
  for a verified webpage.
  2. Download the plugin and move the ".jar" file that you downloaded
  to the folder "plugins" in the server.
  3. When the .jar file is on the "plugins" folder, you can start the
  script MCST-EN.
  (Remember that you have you start the server and stop it. to get the
  plugins folder. Start the server for the first time. to get the folders)
  -------------------------
  NOW YOU HAVE A PLUGIN INSTALLED ON YOUR MINECRAFT SERVER.
EOF
}

descargar_minecraft_serverP_SUB1204(){

    if [[ -f "paper.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    sleep 4
    return 0 # Salir de la función sin error
    fi

    echo "Descargando la versión de Paper (api.papermc.io)..."

    curl -L -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.20.4/builds/499/downloads/paper-1.20.4-499.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f paper.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo paper.jar desde api.papermc.io, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    echo "Completado, ejecute MCST.sh de nuevo."
    sleep 4

    # Determinar la ubicación del script
    script_dir=$(dirname "$(readlink -f "$0")")

    # Crear el archivo en el mismo directorio del script para instalar plugins
  cat <<EOF > instalar-plugins-pasos.txt
  ------ TUTORIAL COMO INSTALAR PLUGINS -------
  1. Para Instalar un plugin, tienes que asegurarte que esté para la versión
  Del Servidor y que esté para Paper. Descargalo de Spigot o de una fuente
  verificada.
  2. Descargas el plugin y mueves el archivo ".jar" que acabas de
  descargar a la carpeta "plugins"
  3. Cuando esté en la carpeta correcta ("Plugins"). Ejecutas MCST y 
  Enciendes el servidor
  (Recuerda que tienes que iniciar el servidor y detenerlo para
  tener la carpeta "plugins" si no lo has iniciado por primera vez)
  -------------------------
  YA TIENES UN PLUGIN INSTALADO EN TU SERVIDOR DE MINECRAFT.
EOF
  cat <<EOF > install-plugins-tutorial.txt
  ------ HOW TO INSTALL PLUGINS TUTORIAL -------
  1. To install a plugin, you need to know first that is on the
  version of the server and its for paper. Download it from spigot or
  for a verified webpage.
  2. Download the plugin and move the ".jar" file that you downloaded
  to the folder "plugins" in the server.
  3. When the .jar file is on the "plugins" folder, you can start the
  script MCST-EN.
  (Remember that you have you start the server and stop it. to get the
  plugins folder. Start the server for the first time. to get the folders)
  -------------------------
  NOW YOU HAVE A PLUGIN INSTALLED ON YOUR MINECRAFT SERVER.
EOF
}

descargar_minecraft_serverP_SUB1206(){

    if [[ -f "paper.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    sleep 4
    return 0 # Salir de la función sin error
    fi

    echo "Descargando la versión de Paper (api.papermc.io)..."

    curl -L -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.20.6/builds/151/downloads/paper-1.20.6-151.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f paper.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo paper.jar desde api.papermc.io, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    echo "Completado, ejecute MCST.sh de nuevo."
    sleep 4

    # Determinar la ubicación del script
    script_dir=$(dirname "$(readlink -f "$0")")

    # Crear el archivo en el mismo directorio del script para instalar plugins
  cat <<EOF > instalar-plugins-pasos.txt
  ------ TUTORIAL COMO INSTALAR PLUGINS -------
  1. Para Instalar un plugin, tienes que asegurarte que esté para la versión
  Del Servidor y que esté para Paper. Descargalo de Spigot o de una fuente
  verificada.
  2. Descargas el plugin y mueves el archivo ".jar" que acabas de
  descargar a la carpeta "plugins"
  3. Cuando esté en la carpeta correcta ("Plugins"). Ejecutas MCST y 
  Enciendes el servidor
  (Recuerda que tienes que iniciar el servidor y detenerlo para
  tener la carpeta "plugins" si no lo has iniciado por primera vez)
  -------------------------
  YA TIENES UN PLUGIN INSTALADO EN TU SERVIDOR DE MINECRAFT.
EOF
  cat <<EOF > install-plugins-tutorial.txt
  ------ HOW TO INSTALL PLUGINS TUTORIAL -------
  1. To install a plugin, you need to know first that is on the
  version of the server and its for paper. Download it from spigot or
  for a verified webpage.
  2. Download the plugin and move the ".jar" file that you downloaded
  to the folder "plugins" in the server.
  3. When the .jar file is on the "plugins" folder, you can start the
  script MCST-EN.
  (Remember that you have you start the server and stop it. to get the
  plugins folder. Start the server for the first time. to get the folders)
  -------------------------
  NOW YOU HAVE A PLUGIN INSTALLED ON YOUR MINECRAFT SERVER.
EOF
}

descargar_minecraft_serverP_SUB120(){

    if [[ -f "paper.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    sleep 4
    return 0 # Salir de la función sin error
    fi

    echo "Descargando la versión de Paper (api.papermc.io)..."

    curl -L -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.20/builds/17/downloads/paper-1.20-17.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f paper.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo paper.jar desde api.papermc.io, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    echo "Completado, ejecute MCST.sh de nuevo."
    sleep 4

    # Determinar la ubicación del script
    script_dir=$(dirname "$(readlink -f "$0")")

    # Crear el archivo en el mismo directorio del script para instalar plugins
  cat <<EOF > instalar-plugins-pasos.txt
  ------ TUTORIAL COMO INSTALAR PLUGINS -------
  1. Para Instalar un plugin, tienes que asegurarte que esté para la versión
  Del Servidor y que esté para Paper. Descargalo de Spigot o de una fuente
  verificada.
  2. Descargas el plugin y mueves el archivo ".jar" que acabas de
  descargar a la carpeta "plugins"
  3. Cuando esté en la carpeta correcta ("Plugins"). Ejecutas MCST y 
  Enciendes el servidor
  (Recuerda que tienes que iniciar el servidor y detenerlo para
  tener la carpeta "plugins" si no lo has iniciado por primera vez)
  -------------------------
  YA TIENES UN PLUGIN INSTALADO EN TU SERVIDOR DE MINECRAFT.
EOF
  cat <<EOF > install-plugins-tutorial.txt
  ------ HOW TO INSTALL PLUGINS TUTORIAL -------
  1. To install a plugin, you need to know first that is on the
  version of the server and its for paper. Download it from spigot or
  for a verified webpage.
  2. Download the plugin and move the ".jar" file that you downloaded
  to the folder "plugins" in the server.
  3. When the .jar file is on the "plugins" folder, you can start the
  script MCST-EN.
  (Remember that you have you start the server and stop it. to get the
  plugins folder. Start the server for the first time. to get the folders)
  -------------------------
  NOW YOU HAVE A PLUGIN INSTALLED ON YOUR MINECRAFT SERVER.
EOF
}

descargar_minecraft_serverP_SUB119(){

    if [[ -f "paper.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    sleep 4
    return 0 # Salir de la función sin error
    fi

    echo "Descargando la versión de Paper (api.papermc.io)..."

    curl -L -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.19/builds/81/downloads/paper-1.19-81.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f paper.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo paper.jar desde api.papermc.io, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    echo "Completado, ejecute MCST.sh de nuevo."
    sleep 4

    # Determinar la ubicación del script
    script_dir=$(dirname "$(readlink -f "$0")")

    # Crear el archivo en el mismo directorio del script para instalar plugins
  cat <<EOF > instalar-plugins-pasos.txt
  ------ TUTORIAL COMO INSTALAR PLUGINS -------
  1. Para Instalar un plugin, tienes que asegurarte que esté para la versión
  Del Servidor y que esté para Paper. Descargalo de Spigot o de una fuente
  verificada.
  2. Descargas el plugin y mueves el archivo ".jar" que acabas de
  descargar a la carpeta "plugins"
  3. Cuando esté en la carpeta correcta ("Plugins"). Ejecutas MCST y 
  Enciendes el servidor
  (Recuerda que tienes que iniciar el servidor y detenerlo para
  tener la carpeta "plugins" si no lo has iniciado por primera vez)
  -------------------------
  YA TIENES UN PLUGIN INSTALADO EN TU SERVIDOR DE MINECRAFT.
EOF
  cat <<EOF > install-plugins-tutorial.txt
  ------ HOW TO INSTALL PLUGINS TUTORIAL -------
  1. To install a plugin, you need to know first that is on the
  version of the server and its for paper. Download it from spigot or
  for a verified webpage.
  2. Download the plugin and move the ".jar" file that you downloaded
  to the folder "plugins" in the server.
  3. When the .jar file is on the "plugins" folder, you can start the
  script MCST-EN.
  (Remember that you have you start the server and stop it. to get the
  plugins folder. Start the server for the first time. to get the folders)
  -------------------------
  NOW YOU HAVE A PLUGIN INSTALLED ON YOUR MINECRAFT SERVER.
EOF
}

descargar_minecraft_serverP_SUB1182(){

    if [[ -f "paper.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    sleep 4
    return 0 # Salir de la función sin error
    fi

    echo "Descargando la versión de Paper (api.papermc.io)..."

    curl -L -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.18.2/builds/388/downloads/paper-1.18.2-388.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f paper.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo paper.jar desde api.papermc.io, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    echo "Completado, ejecute MCST.sh de nuevo."
    sleep 4

    # Determinar la ubicación del script
    script_dir=$(dirname "$(readlink -f "$0")")

    # Crear el archivo en el mismo directorio del script para instalar plugins
  cat <<EOF > instalar-plugins-pasos.txt
  ------ TUTORIAL COMO INSTALAR PLUGINS -------
  1. Para Instalar un plugin, tienes que asegurarte que esté para la versión
  Del Servidor y que esté para Paper. Descargalo de Spigot o de una fuente
  verificada.
  2. Descargas el plugin y mueves el archivo ".jar" que acabas de
  descargar a la carpeta "plugins"
  3. Cuando esté en la carpeta correcta ("Plugins"). Ejecutas MCST y 
  Enciendes el servidor
  (Recuerda que tienes que iniciar el servidor y detenerlo para
  tener la carpeta "plugins" si no lo has iniciado por primera vez)
  -------------------------
  YA TIENES UN PLUGIN INSTALADO EN TU SERVIDOR DE MINECRAFT.
EOF
  cat <<EOF > install-plugins-tutorial.txt
  ------ HOW TO INSTALL PLUGINS TUTORIAL -------
  1. To install a plugin, you need to know first that is on the
  version of the server and its for paper. Download it from spigot or
  for a verified webpage.
  2. Download the plugin and move the ".jar" file that you downloaded
  to the folder "plugins" in the server.
  3. When the .jar file is on the "plugins" folder, you can start the
  script MCST-EN.
  (Remember that you have you start the server and stop it. to get the
  plugins folder. Start the server for the first time. to get the folders)
  -------------------------
  NOW YOU HAVE A PLUGIN INSTALLED ON YOUR MINECRAFT SERVER.
EOF
}

descargar_minecraft_serverP_SUB1161(){

    if [[ -f "paper.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    sleep 4
    return 0 # Salir de la función sin error
    fi

    echo "Descargando la versión de Paper (api.papermc.io)..."

    curl -L -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.16.1/builds/138/downloads/paper-1.16.1-138.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f paper.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo paper.jar desde api.papermc.io, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    echo "Completado, ejecute MCST.sh de nuevo."
    sleep 4

    # Determinar la ubicación del script
    script_dir=$(dirname "$(readlink -f "$0")")

    # Crear el archivo en el mismo directorio del script para instalar plugins
  cat <<EOF > instalar-plugins-pasos.txt
  ------ TUTORIAL COMO INSTALAR PLUGINS -------
  1. Para Instalar un plugin, tienes que asegurarte que esté para la versión
  Del Servidor y que esté para Paper. Descargalo de Spigot o de una fuente
  verificada.
  2. Descargas el plugin y mueves el archivo ".jar" que acabas de
  descargar a la carpeta "plugins"
  3. Cuando esté en la carpeta correcta ("Plugins"). Ejecutas MCST y 
  Enciendes el servidor
  (Recuerda que tienes que iniciar el servidor y detenerlo para
  tener la carpeta "plugins" si no lo has iniciado por primera vez)
  -------------------------
  YA TIENES UN PLUGIN INSTALADO EN TU SERVIDOR DE MINECRAFT.
EOF
  cat <<EOF > install-plugins-tutorial.txt
  ------ HOW TO INSTALL PLUGINS TUTORIAL -------
  1. To install a plugin, you need to know first that is on the
  version of the server and its for paper. Download it from spigot or
  for a verified webpage.
  2. Download the plugin and move the ".jar" file that you downloaded
  to the folder "plugins" in the server.
  3. When the .jar file is on the "plugins" folder, you can start the
  script MCST-EN.
  (Remember that you have you start the server and stop it. to get the
  plugins folder. Start the server for the first time. to get the folders)
  -------------------------
  NOW YOU HAVE A PLUGIN INSTALLED ON YOUR MINECRAFT SERVER.
EOF
}

descargar_minecraft_serverP_SUB1165(){

    if [[ -f "paper.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    sleep 4
    return 0 # Salir de la función sin error
    fi

    echo "Descargando la versión de Paper (api.papermc.io)..."

    curl -L -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f paper.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo paper.jar desde api.papermc.io, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    echo "Completado, ejecute MCST.sh de nuevo."
    sleep 4

    # Determinar la ubicación del script
    script_dir=$(dirname "$(readlink -f "$0")")

    # Crear el archivo en el mismo directorio del script para instalar plugins
  cat <<EOF > instalar-plugins-pasos.txt
  ------ TUTORIAL COMO INSTALAR PLUGINS -------
  1. Para Instalar un plugin, tienes que asegurarte que esté para la versión
  Del Servidor y que esté para Paper. Descargalo de Spigot o de una fuente
  verificada.
  2. Descargas el plugin y mueves el archivo ".jar" que acabas de
  descargar a la carpeta "plugins"
  3. Cuando esté en la carpeta correcta ("Plugins"). Ejecutas MCST y 
  Enciendes el servidor
  (Recuerda que tienes que iniciar el servidor y detenerlo para
  tener la carpeta "plugins" si no lo has iniciado por primera vez)
  -------------------------
  YA TIENES UN PLUGIN INSTALADO EN TU SERVIDOR DE MINECRAFT.
EOF
  cat <<EOF > install-plugins-tutorial.txt
  ------ HOW TO INSTALL PLUGINS TUTORIAL -------
  1. To install a plugin, you need to know first that is on the
  version of the server and its for paper. Download it from spigot or
  for a verified webpage.
  2. Download the plugin and move the ".jar" file that you downloaded
  to the folder "plugins" in the server.
  3. When the .jar file is on the "plugins" folder, you can start the
  script MCST-EN.
  (Remember that you have you start the server and stop it. to get the
  plugins folder. Start the server for the first time. to get the folders)
  -------------------------
  NOW YOU HAVE A PLUGIN INSTALLED ON YOUR MINECRAFT SERVER.
EOF
}
#! PAPER VERSIONES FINAL

  #*Podría haberlo hecho en una sola función, pero me gusta más así.


# Menú de versiones de Minecraft
descargar_minecraft_menu() {
    clear
    echo "╔══════════════════════════════╗"
    echo "║  VERSIONES MINECRAFT SERVER  ║"
    echo "╚══════════════════════════════╝"
    echo "1) 1.21.5"
    echo "2) 1.21.4"
    echo "3) 1.21.3"
    echo "4) 1.21.1"
    echo "5) 1.21"
    echo "6) 1.20.4"
    echo "7) 1.20.6"
    echo "8) 1.20"
    echo "9) 1.19"
    echo "10) 1.18.2"
    echo "11) 1.16.5"
    echo "12) 1.16.1"
    echo "13) Salir"
    echo ""
    read -p "Seleccione versión (1-13): " opcion_version

    case $opcion_version in

        1) descargar_minecraft_server_1215 ;;

        2) descargar_minecraft_server_1214 ;;

        3) descargar_minecraft_server_1213 ;;

        4) descargar_minecraft_server_1211 ;;

        5) descargar_minecraft_server_121 ;;
        
        6) descargar_minecraft_server_1204 ;;

        7) descargar_minecraft_server_1206 ;;
        
        8) descargar_minecraft_server_120 ;;

        9) descargar_minecraft_server_119 ;;

        10) descargar_minecraft_server_1182 ;;

        11) descargar_minecraft_server_1165 ;;

        12) descargar_minecraft_server_1161 ;;

        13) exit_script_alt ;;

        *) echo "Opción inválida"; sleep 1; descargar_minecraft_menu ;;
    esac
}
  #? Añadir más versiones de Minecrraft Server y Paper?
descargar_paper_menu() {
    clear
    echo "╔══════════════════════════════╗"
    echo "║  VERSIONES PAPERMC MINECRAFT ║"
    echo "╚══════════════════════════════╝"
    echo "1) 1.21.5"
    echo "2) 1.21.4"
    echo "3) 1.21.3"
    echo "4) 1.21.1"
    echo "5) 1.21"
    echo "6) 1.20.6"
    echo "7) 1.20.4"
    echo "8) 1.20"
    echo "9) 1.19"
    echo "10) 1.18.2"
    echo "11) 1.16.5"
    echo "12) 1.16.1"
    echo "13) Salir"
    echo ""
    read -p "Seleccione versión (1-13): " opcion_version

    case $opcion_version in

        1) descargar_minecraft_serverP_1215 ;;

        2) descargar_minecraft_serverP_1214 ;;

        3) descargar_minecraft_serverP_1213 ;;

        4) descargar_minecraft_serverP_1211 ;;

        5) descargar_minecraft_serverP_121;;
        
        6) descargar_minecraft_serverP_1206 ;;

        7) descargar_minecraft_serverP_1204 ;;
        
        8) descargar_minecraft_serverP_120 ;;

        9) descargar_minecraft_serverP_119 ;;

        10) descargar_minecraft_serverP_1182 ;;

        11) descargar_minecraft_serverP_1165 ;;

        12) descargar_minecraft_serverP_1161 ;;

        13) exit_script_alt ;;

        *) echo "Opción inválida"; sleep 1; descargar_paper_menu;;
    esac
}


descargar_minecraft() {

    if [[ -f "server.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    return 0 # Salir de la función sin error
    fi

    echo "Descargando el archivo server.jar de minecraft.net (piston-data.mojang.com)..."

    # Descargar server.jar utilizando el enlace que proporcionaste
    curl -L -o server.jar https://piston-data.mojang.com/v1/objects/4707d00eb834b446575d89a61a11b5d548d8c001/server.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f server.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo server.jar desde minecraft.net, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    # Aceptar el EULA
    echo "eula=true" > eula.txt
    echo "Al correr un servidor de Minecraft, Aceptas el EULA (aceptado automáticamente). ¡Listo para iniciar el servidor de Minecraft!"
}

# Función para descargar Paper desde su sitio oficial
descargar_paper() {

    if [[ -f "paper.jar" ]]; then
    echo "Parece que ya existe un servidor instalado (server.jar or paper.jar) y no es necesario descargar otro."
    return 0 # Salir de la función sin error
    fi

    echo "Descargando la versión de Paper 1.21.4-30 (api.papermc.io)..."

    # Descargar paper-1.21.4-30.jar usando el enlace proporcionado
    curl -L -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21.4/builds/30/downloads/paper-1.21.4-30.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f paper.jar ]]; then
        echo "Ha ocurrido un error al descargar el archivo paper.jar desde api.papermc.io, pruebe más tarde, en caso de que no funcione, porfavor contactenos"
        exit 1
    fi

    echo "Paper descargado satisfactoriamente."
    echo "Completado, ejecute MCST.sh de nuevo."
    sleep 4

    # Determinar la ubicación del script
    script_dir=$(dirname "$(readlink -f "$0")")

    # Crear el archivo en el mismo directorio del script para instalar plugins
cat <<EOF > instalar-plugins-pasos.txt
------ TUTORIAL COMO INSTALAR PLUGINS -------
1. Para Instalar un plugin, tienes que asegurarte que esté para la versión
Del Servidor y que esté para Paper. Descargalo de Spigot o de una fuente
verificada.
2. Descargas el plugin y mueves el archivo ".jar" que acabas de
descargar a la carpeta "plugins"
3. Cuando esté en la carpeta correcta ("Plugins"). Ejecutas MCST y 
Enciendes el servidor
(Recuerda que tienes que iniciar el servidor y detenerlo para
tener la carpeta "plugins" si no lo has iniciado por primera vez)
-------------------------
YA TIENES UN PLUGIN INSTALADO EN TU SERVIDOR DE MINECRAFT.
EOF

cat <<EOF > install-plugins-tutorial.txt
------ HOW TO INSTALL PLUGINS TUTORIAL -------
1. To install a plugin, you need to know first that is on the
version of the server and its for paper. Download it from spigot or
for a verified webpage.
2. Download the plugin and move the ".jar" file that you downloaded
to the folder "plugins" in the server.
3. When the .jar file is on the "plugins" folder, you can start the
script MCST-EN.
(Remember that you have you start the server and stop it. to get the
plugins folder. Start the server for the first time. to get the folders)
-------------------------
NOW YOU HAVE A PLUGIN INSTALLED ON YOUR MINECRAFT SERVER.
EOF
}

menu_paper() {
  archivo_paper="paper.jar"

  if [[ ! -f "$archivo_paper" ]]; then
    echo -e "${Rojo}!! Paper No Instalado !!"
    echo -e "${Verde}([1]) Instalar Minecraft server ✅"
    echo -e "${Xtra}[2] Instalar Paper🧻"
    echo -e "${Amarillo}[3] Volver al menú MCST${NC}"
    read -p "Seleccione una opción: " opcion

    case $opcion in
      2)
        descargar_paper_menu
        ;;
      3)
        menu
        ;;
      *)
        echo "Opción no válida."
        echo ""
        menu_paper
        ;;
    esac
  else
    echo "Paper ya está instalado, volviendo al menú.."
    sleep 3
    clear
    menu
  fi
}

# Función para el menú alternativo
menu_alternativo() {
  echo -e "$arte_ascii"
  echo -e "¡Bienvenido al Setup de MCST!"
  echo -e "Seleccione una opción:"
  echo -e "[1]. Descargar Minecraft Server y Paper (Recomendado)"
  echo -e "[2]. Descargar Minecraft Server, No Paper (No Recomendado)"
  echo -e "[3]. Salir"
  read -p "Ingrese su opción: " opcion

  if [[ $opcion -eq 1 ]]; then
      # Descargar Minecraft Server y Paper Server
      descargar_minecraft_menu
      descargar_paper_menu
  elif [[ $opcion -eq 2 ]]; then
      descargar_minecraft_menu
    elif [[ $opcion -eq 3 ]]; then
      exit_script_alt
  else
      echo "Opción no válida."
      sleep 1
      clear
      menu_alternativo
  fi

}

# Función para crear el servidor local
crear_servidor() {
  clear
    descargar_minecraft
    descargar_paper
  sleep 2
  menu
}

# Verificar existencia de server.jar o paper.jar
if [[ ! -f "server.jar" && ! -f "paper.jar" ]]; then
  menu_alternativo
else
  # Si existen los archivos, continuar con el flujo normal
  clear
  show_art "$ART1"
  show_art "$ART2"
  menu
fi

clear_console() {
  clear
}

#Funcion iniciar servidor
start_server() {
  clear
  # Verificar si existe paper.jar o usar server.jar como alternativa
  if [ -f "paper.jar" ]; then
    # Ejecutar con paper.jar
    echo -e "${Azul_Dark}Usando Paper para iniciar el servidor.${NC}"
    sleep 2
    java -Xmx4G -Xms2G -jar paper.jar nogui
  elif [ -f "server.jar" ]; then
    # Ejecutar con server.jar
    echo -e "${Azul_Dark}Usando Server.jar para iniciar el servidor.${NC}"
    sleep 2
    java -Xmx4G -Xms2G -jar server.jar nogui
  else
    # Manejar el caso en que ningún archivo .jar está disponible
    echo -e "${Rojo}Error: No se encontró ningún archivo .jar válido para iniciar el servidor, porfavor intentelo de nuevo, en caso de que no funcione, porfavor mire la guía de instalación.${NC}"
    sleep 2
    menu
    return
  fi

  echo -e "${Xtra}El servidor se ha detenido. Regresando al menú...${NC}"
  sleep 2
  menu
}

start_server_h() {
  clear
  # Verificar si existe paper.jar o usar server.jar como alternativa
  if [ -f "paper.jar" ]; then
    # Ejecutar con paper.jar
    echo -e "${Azul_Dark}Usando Paper para iniciar el servidor.${NC}"
    sleep 2
    java -Xmx8G -Xms4G -jar paper.jar nogui
  elif [ -f "server.jar" ]; then
    # Ejecutar con server.jar
    echo -e "${Azul_Dark}Usando Server.jar para iniciar el servidor.${NC}"
    sleep 2
    java -Xmx8G -Xms4G -jar server.jar nogui
  else
    # Manejar el caso en que ningún archivo .jar está disponible
    echo -e "${Rojo}Error: No se encontró ningún archivo .jar válido para iniciar el servidor, porfavor intentelo de nuevo, en caso de que no funcione, porfavor mire la guía de instalación.${NC}"
    sleep 2
    menu
    return
  fi

  echo -e "${Xtra}El servidor se ha detenido. Regresando al menú...${NC}"
  sleep 2
  menu
}

file_path="server.properties"

# Función para mostrar arte ASCII
show_art() {
  clear
  echo -e "$1"
  sleep 2
}

# Función para el menú principal
menu() {
  clear
  echo -e "${Azul}╔╦╗╔═╗╔═╗╔╦╗${NC}"
  echo -e "${Azul}║║║║  ╚═╗ ║ ${NC}"
  echo -e "${Azul}╩ ╩╚═╝╚═╝ ╩ ${NC}"
  echo -e ""
  echo -e "${Verde}[1] Iniciar Servidor (4GB Ram)${NC}"
  echo -e "${Xtra}[2] Iniciar Servidor (8GB Ram)${NC}"
  echo -e "${Verde}[3] Opciones del servidor/información${NC}"
  echo -e "${Xtra}[4] Créditos${NC}"
  echo -e "${Verde}[5] Ir al MCST Setup (para instalar paper)${NC}"
  echo -e "${Rojo}[6] Salir${NC}"
  echo -e "${Amarillo}========================================${NC}"
  read -p "Selecciona una opción: " opcion

  case $opcion in
    1)
      start_server
      ;;
    2)
      start_server_h
      ;;
    3)
      server_info
      ;;
    4)
      credits
      ;;
    5)
      menu_paper
      ;;
    6)
      exit_script
      ;;
    *)
      echo -e "${Rojo}Opción no válida. Presiona Enter para continuar...${NC}"
      read
      menu
      ;;
  esac
}

# Función para mostrar información del servidor
server_info(){
  clear
  echo -e "${Amarillo}========================================"
  echo -e "${Verde}       INFORMACIÓN DEL SERVIDOR         "
  echo -e "${Amarillo}========================================"
  echo -e "${Azul_Dark}- Versión: Próximamente..."
  echo -e "${Azul}- IP: localhost"
  echo -e "${Azul}- Puerto: 25565"

  # Paper.jar Si o no?
  archivo="paper.jar"
  if [ -f "$archivo" ]; then
    echo -e "${Azul}- Paper: SI${NC}"
  else
    echo -e "${Azul_Dark}- Paper: NO${NC}"
  fi

  # Archivo de configuración
  file_path="server.properties"

  # Crackeado (Online Mode) Si o no?
  online_mode=$(grep -i "^online-mode" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$online_mode" == "true" ]; then
    echo -e "${Rojo}- Crackeado: NO${NC}"
  elif [ "$online_mode" == "false" ]; then
    echo -e "${Azul}- Crackeado: SI${NC}"
  else
    echo -e "- Crackeado: DESCONOCIDO"
  fi

  # Enforce Secure Profile (Perfil seguro) Si o no?
  secure_profile=$(grep -i "^enforce-secure-profile" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$secure_profile" == "true" ]; then
    echo -e "${Azul}- Perfil Seguro (Premium): SI${NC}"
  elif [ "$secure_profile" == "false" ]; then
    echo -e "${Rojo}- Perfil Seguro (Premium): NO${NC}"
  else
    echo -e "- Perfil Seguro (Premium): DESCONOCIDO"
  fi

  # El Servidor está en debug si o no?
  debug=$(grep -i "^debug" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$debug" == "true" ]; then
    echo -e "${Amarillo}- Debug: SI${NC}"
  elif [ "$debug" == "false" ]; then
    echo -e "${Rojo}- Debug: NO${NC}"
  else
    echo -e "- Debug: DESCONOCIDO"
  fi

  # El servidor tiene hardcore en true?
  hardcore=$(grep -i "^hardcore" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$hardcore" == "true" ]; then
    echo -e "${Azul}- Hardcore: SI${NC}"
  elif [ "$hardcore" == "false" ]; then
    echo -e "${Rojo}- Hardcore: NO${NC}"
  else
    echo -e "- Hardcore: DESCONOCIDO"
  fi

  # El Servidor tiene whitelist?
  whitelist=$(grep -i "^white-list" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ -z "$whitelist" ]; then
    whitelist=$(grep -i "^whitelist" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  fi
  if [ "$whitelist" == "true" ]; then
    echo -e "${Azul}- Lista Blanca: SI${NC}"
  elif [ "$whitelist" == "false" ]; then
    echo -e "${Rojo}- Lista Blanca: NO${NC}"
  else
    echo -e "- Lista Blanca: DESCONOCIDO"
  fi

  # Jugadores Máximos
  maximum_players=$(grep -i "^max-players" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ -n "$maximum_players" ]; then
    echo -e "${Azul}- Cantidad Máxima de jugadores: $maximum_players${NC}"
  else
    echo -e "- Cantidad Máxima de jugadores: DESCONOCIDO"
  fi

  echo -e "Página 1/2"
  echo -e "${Xtra}Información de server.properties"
  echo -e "1: Siguiente Página | 2: Menú"
  echo -e "${Amarillo}========================================${NC}"
  read -p "Selecciona una opción: " opcionInfo
  if [[ $opcionInfo -eq 1 ]]; then
      server_info_2
  elif [[ $opcionInfo -eq 2 ]]; then
      menu
  else
      echo "Opción no válida."
      server_info
  fi
}


server_info_2() {
  clear
  echo -e "${Amarillo}========================================"
  echo -e "${Verde}       INFORMACIÓN DEL SERVIDOR         "
  echo -e "${Amarillo}========================================"
  # Archivo de configuración
  file_path="server.properties"

  #Volar está permitido en el servidor?
  allow_flight=$(grep -i "^allow-flight" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$allow_flight" == "true" ]; then
    echo -e "${Azul}- Fly Permitido: SI${NC}"
  elif [ "$allow_flight" == "false" ]; then
    echo -e "${Rojo}- Fly Permitido: NO${NC}"
  else
    echo -e "- Fly Permitido: DESCONOCIDO"
  fi

  #Hay PvP Habilitado en el Servidor?
  pvp_server=$(grep -i "^pvp" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$pvp_server" == "true" ]; then
    echo -e "${Azul}- PvP: SI${NC}"
  elif [ "$pvp_server" == "false" ]; then
    echo -e "${Rojo}- PvP: NO${NC}"
  else
    echo -e "- PvP: DESCONOCIDO"
  fi

  generate_structures=$(grep -i "^generate-structures" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$generate_structures" == "true" ]; then
    echo -e "${Azul}- Generar Estructuras: SI${NC}"
  elif [ "$generate_structures" == "false" ]; then
    echo -e "${Rojo}- Generar Estructuras: NO${NC}"
  else
    echo -e "- Generar Estructuras: DESCONOCIDO"
  fi

  # Ocultar los jugadores Online?
  hide_online_players=$(grep -i "^hide-online-players" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$hide_online_players" == "true" ]; then
    echo -e "${Azul}- Ocultar Jugadores Online: SI${NC}"
  elif [ "$hide_online_players" == "false" ]; then
    echo -e "${Rojo}- Ocultar Jugadores Online: NO${NC}"
  else
    echo -e "- Ocultar Jugadores Online: DESCONOCIDO"
  fi

  # Ocultar los jugadores Online?
  sync_chunk_writes=$(grep -i "^sync-chunk-writes" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$sync_chunk_writes" == "true" ]; then
    echo -e "${Azul}- Sync Chunk Writes: SI${NC}"
  elif [ "$sync_chunk_writes" == "false" ]; then
    echo -e "${Rojo}- Sync Chunk Writes: NO${NC}"
  else
    echo -e "- Sync Chunk Writes: DESCONOCIDO"
  fi

  # Ocultar los jugadores Online?
  force_gamemode=$(grep -i "^force-gamemode" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$force_gamemode" == "true" ]; then
    echo -e "${Azul}- Forzar Modo de Juego: SI${NC}"
  elif [ "$force_gamemode" == "false" ]; then
    echo -e "${Rojo}- Forzar Modo de Juego: NO${NC}"
  else
    echo -e "- Forzar Modo de Juego: DESCONOCIDO"
  fi

  enable_status=$(grep -i "^enable-status" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$enable_status" == "true" ]; then
    echo -e "${Azul}- Enable Status: SI${NC}"
  elif [ "$enable_status" == "false" ]; then
    echo -e "${Rojo}- Enable Status: NO${NC}"
  else
    echo -e "- Enable Status : DESCONOCIDO"
  fi
  echo "Más en la próxima versión...."
  echo ""
  echo -e "Página 2/2"
  echo -e "${Xtra}Información de server.properties"
  echo -e "${Amarillo}========================================${NC}"
  echo -e "Presiona Enter para volver al menú..."
  read
  menu
}


# Función para mostrar créditos
credits() {
  clear
  echo -e "${Amarillo}========================================"
  echo -e "${Verde}                CRÉDITOS                "
  echo -e "${Amarillo}========================================"
  echo -e "${Azul}Script creado por: MA_Dev"
  echo -e "${Xtra}Programado en Visual Studio Code"
  echo -e "${Azul_Dark}Usando Bash (.sh) y git bash (+java)" #*Java es opcional, pero es necesario para correr el servidor.
  echo -e "${Xtra}Versión del script: v1.7."
  echo -e "${Verde}¡Gracias por usar el script!"
  echo -e "${Amarillo}========================================${NC}"
  echo -e "Presiona Enter para volver al menú..."
  read
  menu
}

# Función para salir del script
exit_script() {
  echo -e "${Verde}Finalizando Script, Gracias por usar MCST ¡Hasta otra!${NC}"
  exit 0
}

# Mostrar artes ASCII y luego el menú
show_art "$ART1"
show_art "$ART2"
menu

# HECHO POR: MA_DEV, 2025.
  #* Espero no tener que convertirlo a python, va a ser un dolor de cabeza.

#TODO: Organizar el código, hacer que sea más fácil de leer y entender.
