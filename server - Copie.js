const express = require('express');
const app = express();
const port = process.env.PORT || 3003; // Utilisation d'un port dynamique ou 3003 par défaut

// Route de base qui répond "Hello World!"
app.get('/', (req, res) => {
  res.send('Hello World!');
});

// Démarrage du serveur
app.listen(port, () => {
  console.log(`Serveur démarré sur le port ${port}`);
});
