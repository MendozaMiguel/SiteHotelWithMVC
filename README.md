# SiteHotelWithMVC

développer sous NodeJS et ses modules

Télécharger le fichier hotel.sql, avant d'importer le fichier vers la base de données veuillez crée une base de données nommée "hotel" ou veuillez configurer le nom de la bdd dans le script hotel.sql

Creez un dossier nommé configuration à la racine du projet, dans ce dossier crée un fichier nommé mysqlConf.js et copier le code ci-dessous

```js
const mysql = require('promise-mysql');
const connection = mysql.createConnection({
    host     : 'Hôte MySQL',
    user     : 'username',
    password : "your_password",
    database : 'name_database'
})

module.exports = connection;
```

## Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:3000
npm start
```
then go to [http://localhost:3000](http://localhost:3000)



