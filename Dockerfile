# Utiliser l'image Node.js officielle
FROM node:20

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Exposer le port sur lequel votre application écoute
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]
