const query = require('./../model/Client');

// Vue formulaire reservation
function ReservationGet(req,res){
  res.render('reservation');
}

// Envoie des données rentrées par le client
function ReservationPost(req,res){
    query.ReservationPost(req).then(function (err, res) {
      if (err) throw err;
  });
  res.redirect('/');
}

// Vue tarif
function TarifGet(req,res){
  res.render('tarif');
}

// Vue Contact
function ContactGet(req,res){
  res.render('contact');
}

// Envoie de données de la page contact
function ContactPost(req,res){
  query.ContactPost(req).then(function (err, res) {
    if (err) throw err;
});
res.redirect('/');
}

// Vue de la page Nous trouver
function NousTrougerGet(req,res){
  res.render('noustrouver');
}

// On renvoi le resultat de notre requête à la vue recapitulatif
// function AfficherFacture(req,res){
//   query.getAllFacture().then(function (resultat, err) {
//       res.render('recapitulatif',{resultat:resultat})
//   });
// }

// Exportation des objets d'une function
module.exports ={
  ReservationGet:ReservationGet,
  ReservationPost:ReservationPost,
  TarifGet:TarifGet,
  ContactGet:ContactGet,
  ContactPost:ContactPost,
  NousTrougerGet:NousTrougerGet,
  // AfficherFacture:AfficherFacture
}
