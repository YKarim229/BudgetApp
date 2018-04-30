//
//  Spent.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/23/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

final class Expenses { // Dépensé
  var identifier: Int
  var title: String
  var category: Category
  var date: Date
  var amount: Double
  var currency: Currency
  
  
  init(identifier: Int, title: String, category: Category, date: Date, amount: Double, currency: Currency) {
    self.identifier = identifier
    self.title = title
    self.category = category
    self.date = date
    self.amount = amount
    self.currency = currency
  }
}

//'id_depense' =>  utf8_encode($row['Id_Depense_PK']),
//'libelle_depense' =>  utf8_encode($row['LibDepense']),
//'id_categorie' =>  utf8_encode($row['Id_Categorie_PK']),
//'libelle_categorie' =>  utf8_encode($row['LibCategorie']),
//'date_depense' =>  utf8_encode($row['DateDepense']),
//'montant' =>  utf8_encode($row['Montant']),
//'id_devise' =>  utf8_encode($row['Id_Devise_PK']),
//'libelle_devise' =>  utf8_encode($row['LibDevise'])

//`Id_Depense_PK` int(11) NOT NULL,
//`LibDepense` varchar(100) NOT NULL,
//`Montant` float NOT NULL,
//`DateDepense` datetime NOT NULL,
//`Date_AT` datetime NOT NULL,
//`Date_UP` datetime NOT NULL,
//`Statut` varchar(100) NOT NULL,
//`Id_Devise_FK` int(11) NOT NULL,
//`Id_Categorie_FK` int(11) NOT NULL,
//`Id_Budget_FK` int(11) NOT NULL
