# Utilise l'image de base gitpod/workspace-python, qui inclut un environnement de développement Python.
FROM gitpod/workspace-python

# Passe à l'utilisateur root pour avoir les permissions nécessaires pour les opérations suivantes.
USER root

# Installe les paquets cron et tree.
RUN apt-get update && apt-get install -y cron tree

# Démarre le service cron.
RUN service cron start
