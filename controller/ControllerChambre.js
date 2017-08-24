  const query = require('./../model/listechambre');

  function chambres (req, res) {
     query.getAll().then((resultat, err)=>{
         if (err) throw err;
         res.render('accueil', {resultat: resultat});
     })
  }

  module.exports ={
     chambres:chambres,
  };
