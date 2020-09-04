#Suppression des anciens fichiers Docker
apt-get remove docker docker-engine docker.io containerd runc

#Mise a jour
apt-get update -y

#Installation des outils pour Docker
apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y

#Mise en place d un GPG Key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

#Mise en place d un repertoire stable
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

#Mise a jour
apt-get update -y

#Installation de Docker
apt-get install docker-ce docker-ce-cli containerd.io -y
