  //Déclaration de notre connexion SQL
  const connSql = require('./../configuration/mysqlConf');



  function getAll() {
     return connSql.then((conn)=>{
         let result = conn.query("SELECT * FROM chambre");
         return result
     });
  }


  module.exports ={
    getAll:getAll,
  };
