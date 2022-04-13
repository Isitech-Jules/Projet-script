
                                                                                                                                               
GREEN="\e[32m"
YELLOW="\e[33m"
ENDCOLOR="\e[0m"
                                                                                                                                               
read -p "$(echo -e ${YELLOW}" Saisir le prenom"${ENDCOLOR}) " prenom
        echo $prenom
read -p "$(echo -e ${YELLOW}"Saisis le nom"${ENDCOLOR}) " nom
        echo $nom
read -p "$(echo -e ${YELLOW}"Saisir le email"${ENDCOLOR}) " email
        echo $email
read -p "$(echo -e ${YELLOW}"Saisir le nom d'utilisateur"${ENDCOLOR}) " user
        echo $user
read -p "$(echo -e ${YELLOW}"Saisir le lieu de travail"${ENDCOLOR}) " lieu
        echo -e "${GREEN}Utilisateur cree avec success${ENDCOLOR}"
                                                                                                                                               
        echo "$prenom;$nom;$email;$user;$lieu" >> utilisateurs.csv
