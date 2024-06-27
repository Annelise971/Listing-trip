//
//  ContentView.swift
//  Mes projets
//
//  Created by Apprenant 162 on 27/06/2024.
//

import Foundation

struct Voyage:Identifiable {
    
    var id = UUID()
    var image: String
    var name: String
    var lieu: String
    var durée: String
    var budget: Int
    var budgetActivitée: Int
    var nombreDePersonnes: Int
    var activites: [Activité]
    
}

struct Activité:Identifiable {
    
    var id = UUID()
    var titre: String
    var description: String
    var image: String
    var budjet: Int
    var categorie: String
    var choisi: Bool
    var adresse: String
    var telephone: String
    var tempsActivitée: String
    var lienweb: String
}

let detente = Activité(titre: "detente", description: "aaa", image: "aaa", budjet: 9, categorie: "e", choisi: false, adresse: "bcy", telephone: "098363", tempsActivitée: "ouI3", lienweb: "https")
let sportif = Activité(titre: "sportif", description: "bbb", image: "oe", budjet: 4, categorie: "oui", choisi: false, adresse: "oeo", telephone: "03éé", tempsActivitée: "ok", lienweb: "hjj")

let madrid = Voyage(image: "madrid", name: "MADRID", lieu: "Espagne", durée: "06/04/2024 - 19/04/2024"
                    , budget: 1500 //€
                    , budgetActivitée: 500, nombreDePersonnes: 5 //personnes
                    , activites: [detente])
let barcelone = Voyage(image: "barcelone", name: "BARCELONE", lieu: "Espagne", durée: "09/05/2024 - 19/05/2024"
                       , budget: 2000 //€
                       , budgetActivitée: 390, nombreDePersonnes: 6 //personnes
                       , activites: [detente])
let marrakech = Voyage(image: "marrakech", name: "MARRAKECH", lieu: "Maroc", durée: "10/05/2024 - 25/05/2024"
                       , budget: 1800 //€
                       , budgetActivitée: 588, nombreDePersonnes: 6 //personnes
                       , activites: [sportif])


var Sangria = Activité(titre: "Faites votre Sangria !", description: "Apprenez à faire votre sangria au coeur de Madrid.\rJavier, notre mixologue vous accompagne pour vous faire découvrir la sangria la plus délicieuse faite par vous !", image:"Rectangle 94-2", budjet: 170, categorie: "Gastronomie" , choisi: false, adresse: "16 calle de purchena 28001 Madrid" ,telephone: "+3408675432", tempsActivitée: "1 heure", lienweb: "https")

var Safari = Activité(titre: "Safari en quad", description: "Passez l'après-midi et la soirée dans le désert de Marrakech, lors d'un safari guidé en quad. Au couché du soleil, profitez d'une balade à dos de chameau, puis d'un dîner au coeur du désert d'Agafray", image:"Rectangle 94-4", budjet: 222, categorie: "Aventure" , choisi: false, adresse: "Désert d'Agafray Safi région 40254 Marrakesh" ,telephone: "+212624592020", tempsActivitée: "6 heures", lienweb: "https")

var Cuisine = Activité(titre: "Cours de cuisine traditionelle et visite du marché", description: "Apprenez-en plus sur la cuisine marocaine auprès de chefs marocains qui vous montreront comment faire vos courses au marché local et rassembler les ingrédients pour préparer un délicieux repas traditionnelle accompagné d'un thé", image:"Rectangle 156-3", budjet: 228, categorie: "Gastronomie" , choisi: false, adresse: "Lieu de rdv Mosquée Bab Doukhala 4000 Marrakech" ,telephone: "+3408675432", tempsActivitée: " 4 heures", lienweb: "")

var Visite = Activité(titre: "Visite du souk", description: "Pour plus de plaisir et de joie, allez dans les grandes rues de la vieille ville, dans les souks et autour de la Médina, ce qui vous permettra d'acquérir de vastes connaissances sur les habitation, le style de vie, les coutûmes, les rituels et bien plus", image: "Rectangle 159", budjet: 138, categorie: "Détente", choisi: false, adresse: "Lieu de rendez-vous: Rue Moulay Ismaïl, 4000 Marrakech", telephone: "Communiqué lors de la réservation", tempsActivitée: "3 heures", lienweb: "")

var Flamenco = Activité (titre: "Spectacle de Flamenco au City Hall", description: "Venez découvrir ou re découvrir le Flamenco, un art traditionnel espagnol, calssé au patrimoine mondial de l'UNESCO en 2010. Regardez certains des artistes les plus talentueux d'espagne créer une atmosphère unqiue avec de la musique des chants et des danses", image: "flamenco 1", budjet: 150, categorie: "Culture", choisi: false, adresse: "Rambla de Catalunya,2, Eixample 08007 Barcelone", telephone: "+34660769865", tempsActivitée:"1 heure", lienweb: "")

var Parc = Activité (titre: "Visite du Parc Guelle", description: "Visitez le complexe de jardins du parc Guell sur la collin du Carmel, lors d'une visite à pied. Découvrez l'une des oeuvres les plus durables d'Antoni Gaud et promenez-vous dans l'art du siècle", image: "Rectangle 109barcelone-2", budjet: 132, categorie: "Détente", choisi: false, adresse: "Gracia, 08024 Barcelone", telephone:" +34934091831", tempsActivitée: "1 heure 15", lienweb: "")

var Musique = Activité(titre: "Palais de la musique", description: "Explorez le palais à votre rythme et contemplez ce chef d'oeuvre luxueux catalan de style art nouveau, classé au patrimoine de l'UNESCO", image: "Rectangle 118", budjet: 108, categorie: "Culture", choisi: false, adresse: "4-6 Ciuta Vella 08003 Barcelone", telephone: "+34932957200", tempsActivitée: "50 minutes", lienweb: "")

var Prado = Activité(titre: "Musée du prado", description: "Le musée possède la collection de peinture Espagnol la plus complète au monde. Découvrez aussi de nombreuses peinture Italiennen lors de votre visite dans le musée du Prado. Vous avez la possibilité de visiter le musée gratuitement du lundi au samedi de 18 heures à 20 heures et le dimanche de 17 heures à 19 heures.", image: "Rectangle 118-2", budjet: 75, categorie: "Culture", choisi: false, adresse: "Paseo del Prado s/n 28014 Madrid", telephone: "+34913302800", tempsActivitée: "2 heures", lienweb: "")

var Camping = Activité(titre: "Camping El Escorial", description: "Au pied de la Sierra de Guadarrama, À 50km de Madrid, le camping vous propose en location, des mobil homes, tentes aménagées, chalet et emplacements de camping. Un centre aquatique muni de quatres piscines extérieurs mais aussi des toboggans pour les enfants et les adultes.", image: "camping", budjet: 255, categorie: "Camping", choisi: false, adresse: " Carreta M600 Guadarrama 28280 El Escorial, Madrid", telephone: "+34918902412", tempsActivitée: "2 jours", lienweb: "")

var activites = [Sangria, Safari, Cuisine, Visite, Flamenco, Parc, Musique, Prado, Camping]
var Mad = [Sangria, Prado, Camping]
var Bar = [Flamenco, Parc, Musique]
var Mar = [Safari, Cuisine, Visite]
