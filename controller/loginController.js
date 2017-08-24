const query = require('./../model/login');
const bcrypt = require('bcrypt');
const saltRounds = 10;

function accueilGet(req, res) {
    res.render('hotel');
}

function connexionGet(req, res) {
    res.render('connexion');
}


function connexionPost(req, res) {

  if (req.body.prenom == null || req.body.motDePass == null) {
      res.redirect('/connexion');
  }
  var prenomUtilisateur = req.body.prenom;
  var motDePasseUtilisateur = req.body.motDePass;
    query.connexionPost(prenomUtilisateur).then(function (resultat, err) {
      if (err) throw err;
      if (resultat.length === 1) {
          bcrypt.compare(motDePasseUtilisateur, resultat[0].motdepasse, function(err, resCompare) {
              if (err) throw err;
             if (resCompare === true){
                 req.session.admin = true ;
                 console.log('connecte ok');
                 res.redirect('/utilisateurs');
             }else {
                 req.session.admin = false ;
                 console.log('connecte ko');
                 res.redirect('/connexion');
             }
          });
      }else {
          req.session.admin = false ;
          res.redirect('/connexion');
          console.log('connecte ko');
      }
  });
}


function deconnection(req,res){
  req.session.destroy(function(err){
      if(err){
          console.log(err);
      }	else {
          res.redirect('/');
      }
  })
}




module.exports = {
    accueilGet:accueilGet,
    connexionGet: connexionGet,
    connexionPost: connexionPost,
    deconnection:deconnection
};
