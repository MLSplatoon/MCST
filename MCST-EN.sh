#!/bin/bash/ 

#          X-- ENGLISH VERSION --X

#    ▄▄▄▄███▄▄▄▄    ▄████████    ▄████████     ███     
#  ▄██▀▀▀███▀▀▀██▄ ███    ███   ███    ███ ▀█████████▄ 
#  ███   ███   ███ ███    █▀    ███    █▀     ▀███▀▀██ 
#  ███   ███   ███ ███          ███            ███   ▀ 
#  ███   ███   ███ ███        ▀███████████     ███     
#  ███   ███   ███ ███    █▄           ███     ███     
#  ███   ███   ███ ███    ███    ▄█    ███     ███     
#   ▀█   ███   █▀  ████████▀   ▄████████▀     ▄████▀   


# Script created by MA_Dev (Version 1.0)
# For everyone who wants to play on a custom local server

#1. Open a Bash Terminal, OR a Git Bash Terminal
# 2. Run the Script with: ./MCST-EN.sh
#3. Press 1 and hit enter. You already have the server open
#4. To stop the server, type: stop
#5. There are 2 Scripts: MCST.sh (Spanish), MCST-EN.sh (English).

# --------- ENGLISH ------------
#1. Open a Bash Terminal or a Git Bash Terminal.
#2. Execute the script with: ./MSCT-EN.sh
#3. Press 1 and then press enter. Now you have the server open
#4. to close the server, type: stop















#  XX DON´T TOUCH ANYTHING DOWN HERE, YOU CAN BREAK THE SCRIPT AND GENERATE ERRORS. XX


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


exit_script_alt() {
  echo -e "${Verde}Ending Script, MCST Setup 2024${NC}"
  exit 0
}

descargar_minecraft() {

    if [[ -f "server.jar" ]]; then
    echo "There is a server installed (server.jar o paper.jar). No need to install another one."
    return 0 # Salir de la función sin error
    fi

    echo "Downloading server.jar from minecraft.net..."

    # Descargar server.jar utilizando el enlace que proporcionaste
    curl -L -o server.jar https://piston-data.mojang.com/v1/objects/4707d00eb834b446575d89a61a11b5d548d8c001/server.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f server.jar ]]; then
        echo "Error downloading server.jar."
        exit 1
    fi

    # Aceptar el EULA
    echo "eula=true" > eula.txt
    echo "EULA accepted. ¡Ready to start the Minecraft Server!"
}

# Función para descargar Paper desde su sitio oficial
descargar_paper() {

    if [[ -f "paper.jar" ]]; then
    echo "There is a server installed (server.jar o paper.jar). No need to install another one"
    return 0 # Salir de la función sin error
    fi

    echo "Downloading the Paper version 1.21.4..."

    # Descargar paper-1.21.4-30.jar usando el enlace proporcionado
    curl -L -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21.4/builds/30/downloads/paper-1.21.4-30.jar

    # Verificar si la descarga fue exitosa
    if [[ $? -ne 0 || ! -f paper.jar ]]; then
        echo "Error downloading paper.jar."
        exit 1
    fi

    echo "Paper downloaded successfully as paper.jar."
    echo "Ready, execute MCST again."
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
    echo -e "${Rojo}!! Paper Not installed !!"
    echo -e "${Verde}([1]) Install Minecraft Server ✅"
    echo -e "${Xtra}[2] Install Paper🧻"
    echo -e "${Amarillo}[3] Go Back to MCST menu${NC}"
    read -p "Select an option: " opcion

    case $opcion in
      2)
        descargar_paper
        ;;
      3)
        menu
        ;;
      *)
        echo "Invalid Option."
        echo ""
        menu_paper
        ;;
    esac
  else
    echo "Paper Installed already, going to the menu"
    sleep 3
    clear
    menu
  fi
}

# Función para el menú alternativo
menu_alternativo() {
  echo -e "$arte_ascii"
  echo -e "¡Welcome to the MCST Setup!"
  echo -e "Select an option:"
  echo -e "[1]. Download Minecraft Server and Paper Server (Recommended)"
  echo -e "[2]. Download Minecraft Server, No Paper (Not Recommended)"
  echo -e "[3]. Exit"
  read -p "Type your option: " opcion

  if [[ $opcion -eq 1 ]]; then
      # Descargar Minecraft Server y Paper Server
      descargar_minecraft
      descargar_paper
  elif [[ $opcion -eq 2 ]]; then
      descargar_minecraft
    elif [[ $opcion -eq 3 ]]; then
      exit_script_alt
  else
      echo "Invalid Option."
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
    echo -e "${Azul_Dark}Using Paper to start the server.${NC}"
    sleep 2
    java -Xmx4G -Xms2G -jar paper.jar nogui
  elif [ -f "server.jar" ]; then
    # Ejecutar con server.jar
    echo -e "${Azul_Dark}Using Server.jar to start the server.${NC}"
    sleep 2
    java -Xmx4G -Xms2G -jar server.jar nogui
  else
    # Manejar el caso en que ningún archivo .jar está disponible
    echo -e "${Rojo}Error: Not founded a valid .jar file to start the server.${NC}"
    sleep 2
    menu
    return
  fi

  echo -e "${Xtra}Server has been stopped. back to the menu..${NC}"
  sleep 2
  menu
}

start_server_h() {
  clear
  # Verificar si existe paper.jar o usar server.jar como alternativa
  if [ -f "paper.jar" ]; then
    # Ejecutar con paper.jar
    echo -e "${Azul_Dark}Using Paper to start the server.${NC}"
    sleep 2
    java -Xmx8G -Xms4G -jar paper.jar nogui
  elif [ -f "server.jar" ]; then
    # Ejecutar con server.jar
    echo -e "${Azul_Dark}Using Server.jar to start the server.${NC}"
    sleep 2
    java -Xmx8G -Xms4G -jar server.jar nogui
  else
    # Manejar el caso en que ningún archivo .jar está disponible
    echo -e "${Rojo}Error: Not founded a valid .jar file to start the server.${NC}"
    sleep 2
    menu
    return
  fi

  echo -e "${Xtra}Server has been stopped. back to the menu..${NC}"
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
  echo -e "${Verde}[1] Start Server (4GB Ram)${NC}"
  echo -e "${Xtra}[2] Start Server(8GB Ram)${NC}"
  echo -e "${Verde}[3] Server Options/information${NC}"
  echo -e "${Xtra}[4] Credits${NC}"
  echo -e "${Verde}[5] Go to MCST Setup (to install paper)${NC}"
  echo -e "${Rojo}[6] Exit${NC}"
  echo -e "${Amarillo}========================================${NC}"
  read -p "Select an option: " opcion

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
      echo -e "${Rojo}Invalid Option. Press enter to continue...${NC}"
      read
      menu
      ;;
  esac
}

# Función para mostrar información del servidor
server_info(){
  clear
  echo -e "${Amarillo}========================================"
  echo -e "${Verde}            SERVER INFORMATION        "
  echo -e "${Amarillo}========================================"
  echo -e "${Azul_Dark}- Version: 1.21.4"
  echo -e "${Azul}- IP: localhost"
  echo -e "${Azul}- Port: 25565"

  # Paper.jar Si o no?
  archivo="paper.jar"
  if [ -f "$archivo" ]; then
    echo -e "${Azul}- Paper: YES${NC}"
  else
    echo -e "${Azul_Dark}- Paper: NO${NC}"
  fi

  # Archivo de configuración
  file_path="server.properties"

  # Crackeado (Online Mode) Si o no?
  online_mode=$(grep -i "^online-mode" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$online_mode" == "true" ]; then
    echo -e "${Rojo}- Cracked: NO${NC}"
  elif [ "$online_mode" == "false" ]; then
    echo -e "${Azul}- Cracked: YES${NC}"
  else
    echo -e "- Cracked: UNKNOWN"
  fi

  # Enforce Secure Profile (Perfil seguro) Si o no?
  secure_profile=$(grep -i "^enforce-secure-profile" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$secure_profile" == "true" ]; then
    echo -e "${Azul}- Secure Profile (Premium): YES${NC}"
  elif [ "$secure_profile" == "false" ]; then
    echo -e "${Rojo}- Secure Profile (Premium): NO${NC}"
  else
    echo -e "- Secure Profile (Premium): UNKNOWN"
  fi

  # El Servidor está en debug si o no?
  debug=$(grep -i "^debug" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$debug" == "true" ]; then
    echo -e "${Amarillo}- Debug: YES${NC}"
  elif [ "$debug" == "false" ]; then
    echo -e "${Rojo}- Debug: NO${NC}"
  else
    echo -e "- Debug: UNKNOWN"
  fi

  # El servidor tiene hardcore en true?
  hardcore=$(grep -i "^hardcore" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$hardcore" == "true" ]; then
    echo -e "${Azul}- Hardcore: YES${NC}"
  elif [ "$hardcore" == "false" ]; then
    echo -e "${Rojo}- Hardcore: NO${NC}"
  else
    echo -e "- Hardcore: UNKNOWN"
  fi

  # El Servidor tiene whitelist?
  whitelist=$(grep -i "^white-list" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ -z "$whitelist" ]; then
    whitelist=$(grep -i "^whitelist" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  fi
  if [ "$whitelist" == "true" ]; then
    echo -e "${Azul}- White list: YES${NC}"
  elif [ "$whitelist" == "false" ]; then
    echo -e "${Rojo}- White list: NO${NC}"
  else
    echo -e "- White list: UNKNOWN"
  fi

  # Jugadores Máximos
  maximum_players=$(grep -i "^max-players" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ -n "$maximum_players" ]; then
    echo -e "${Azul}- Maximum players: $maximum_players${NC}"
  else
    echo -e "- Maximum players: UNKNOWN"
  fi

  echo -e "Page 1/2"
  echo -e "${Xtra}server.properties information"
  echo -e "1: Next Page | 2: Menu"
  echo -e "${Amarillo}========================================${NC}"
  read -p "Select an option: " opcionInfo
  if [[ $opcionInfo -eq 1 ]]; then
      server_info_2
  elif [[ $opcionInfo -eq 2 ]]; then
      menu
  else
      echo "Invalid Option."
      server_info
  fi
}


server_info_2() {
  clear
  echo -e "${Amarillo}========================================"
  echo -e "${Verde}            SERVER INFORMATION         "
  echo -e "${Amarillo}========================================"
  # Archivo de configuración
  file_path="server.properties"

  #Volar está permitido en el servidor?
  allow_flight=$(grep -i "^allow-flight" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$allow_flight" == "true" ]; then
    echo -e "${Azul}- Fly Allowed: YES${NC}"
  elif [ "$allow_flight" == "false" ]; then
    echo -e "${Rojo}- Fly Allowed: NO${NC}"
  else
    echo -e "- Fly Allowed: UNKNOWN"
  fi

  #Hay PvP Habilitado en el Servidor?
  pvp_server=$(grep -i "^pvp" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$pvp_server" == "true" ]; then
    echo -e "${Azul}- PvP: YES${NC}"
  elif [ "$pvp_server" == "false" ]; then
    echo -e "${Rojo}- PvP: NO${NC}"
  else
    echo -e "- PvP: UNKNOWN"
  fi

  generate_structures=$(grep -i "^generate-structures" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$generate_structures" == "true" ]; then
    echo -e "${Azul}- Generate Structures: YES${NC}"
  elif [ "$generate_structures" == "false" ]; then
    echo -e "${Rojo}- Generate Structures: NO${NC}"
  else
    echo -e "- Generate Structures: UNKNOWN"
  fi

  # Ocultar los jugadores Online?
  hide_online_players=$(grep -i "^hide-online-players" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$hide_online_players" == "true" ]; then
    echo -e "${Azul}- Hide Online Players: YES${NC}"
  elif [ "$hide_online_players" == "false" ]; then
    echo -e "${Rojo}- Hide Online Players: NO${NC}"
  else
    echo -e "- Hide Online Players: UNKNOWN"
  fi

  # Ocultar los jugadores Online?
  sync_chunk_writes=$(grep -i "^sync-chunk-writes" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$sync_chunk_writes" == "true" ]; then
    echo -e "${Azul}- Sync Chunk Writes: YES${NC}"
  elif [ "$sync_chunk_writes" == "false" ]; then
    echo -e "${Rojo}- Sync Chunk Writes: NO${NC}"
  else
    echo -e "- Sync Chunk Writes: UNKNOWN"
  fi

  # Ocultar los jugadores Online?
  force_gamemode=$(grep -i "^force-gamemode" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$force_gamemode" == "true" ]; then
    echo -e "${Azul}- Force Gamemode: YES${NC}"
  elif [ "$force_gamemode" == "false" ]; then
    echo -e "${Rojo}- Force Gamemode: NO${NC}"
  else
    echo -e "- Force Gamemode: UNKNOWN"
  fi

  enable_status=$(grep -i "^enable-status" "$file_path" 2>/dev/null | awk -F= '{gsub(/ /, "", $2); print $2}')
  if [ "$enable_status" == "true" ]; then
    echo -e "${Azul}- Enable Status: YES${NC}"
  elif [ "$enable_status" == "false" ]; then
    echo -e "${Rojo}- Enable Status: NO${NC}"
  else
    echo -e "- Enable Status : UNKNOWN"
  fi
  echo "More in the next version...."
  echo ""
  echo -e "Page 2/2"
  echo -e "${Xtra}server.properties information"
  echo -e "${Amarillo}========================================${NC}"
  echo -e "Press enter to go back to the menu..."
  read
  menu
}



# Función para mostrar créditos
credits() {
  clear
  echo -e "${Amarillo}========================================"
  echo -e "${Verde}                 CREDITS                "
  echo -e "${Amarillo}========================================"
  echo -e "${Azul}Script created by: MA_Dev"
  echo -e "${Xtra}Programmed in Visual Studio Code"
  echo -e "${Azul_Dark}Using Bash (.sh) and git bash"
  echo -e "${Xtra}Script Version: v1.3"
  echo -e "${Verde}¡Thank you for using the script!"
  echo -e "${Amarillo}========================================${NC}"
  echo -e "Press enter to go back to the menu..."
  read
  menu
}

# Función para salir del script
exit_script() {
  echo -e "${Verde}Ending Script, Thank you for using MCST ¡See ya later!${NC}"
  exit 0
}

# Mostrar artes ASCII y luego el menú
show_art "$ART1"
show_art "$ART2"
menu
# HECHO POR: MA_DEV, 2024.
