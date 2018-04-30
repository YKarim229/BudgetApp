//
//  Threshold.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/23/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

final class Threshold { // Seuil
  var threshold: Double
  var categories: [Category]
  var periods: [Period]
  var currency: Currency
  
  init(threshold: Double, categories: [Category], periods: [Period], currency: Currency) {
    self.threshold = threshold
    self.categories = categories
    self.periods = periods
    self.currency = currency
  }
}


//`Id_Categorie_FK` int(11) NOT NULL,
//`Id_Periode_FK` int(11) NOT NULL,
//`Seuil` float NOT NULL,
//`Date_AT` datetime NOT NULL,
//`Date_UP` datetime NOT NULL,
//`Statut` varchar(100) NOT NULL,
//`Id_Devise_FK` int(11) NOT NULL


//'id_categorie' =>  utf8_encode($row['Id_Categorie_PK']),
//'libelle_categorie' =>  utf8_encode($row['LibCategorie']),
//'id_periode' =>  utf8_encode($row['Id_Periode_PK']),
//'libelle_periode' =>  utf8_encode($row['LibPeriode']),
//'seuil' =>  utf8_encode($row['Seuil']),
//'id_devise' =>  utf8_encode($row['Id_Devise_PK']),
//'libelle_devise' =>  utf8_encode($row['LibDevise'])
