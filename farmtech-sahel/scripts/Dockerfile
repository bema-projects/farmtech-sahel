# 1. Image de base : Un Linux ultra-léger (Alpine)
FROM alpine:3.18

# 2. Installation de Bash (car Alpine utilise 'sh' par défaut)
RUN apk add --no-cache bash

# 3. Définir le répertoire de travail
WORKDIR /app

# 4. Copier les dossiers dans l'image
# On copie les scripts et les dossiers de l'application
COPY scripts/ /app/scripts/
COPY app/ /app/app/

# 5. Donner les permissions d'exécution
RUN chmod +x /app/scripts/*.sh

# 6. Commande de lancement (le script maître)
CMD ["/bin/bash", "/app/scripts/master_control.sh"]