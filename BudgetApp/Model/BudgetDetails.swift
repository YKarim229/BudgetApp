//
//  BudgetDetails.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/23/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

struct BudgetDetails {
  var identifier: Int
  var budget: Budget
  var category: Category
  var amount: Double
  var currency: Currency
}


// MARK: Amount with currency
extension BudgetDetails {
  
  var amountWithCurrency: String {
    return "\(amount) \(currency.symbol)"
  }
  
}

//`id` int(11) NOT NULL,
//`Id_Budget_FK` int(11) NOT NULL,
//`Id_Categorie_FK` int(11) NOT NULL,
//`Date_AT` datetime NOT NULL,
//`Date_UP` datetime NOT NULL,
//`Statut` varchar(100) NOT NULL,
//`Montant` float NOT NULL,
//`Id_Devise_FK` int(11) NOT NULL


//'id_detail_budget' =>  utf8_encode($row['id']),
//'id_budget' =>  utf8_encode($row['Id_Budget_FK']),
//'id_categorie' =>  utf8_encode($row['Id_Categorie_FK']),
//'libelle_categorie' =>  utf8_encode($row['LibCategorie']),
//'montant' =>  utf8_encode($row['Montant']),
//'id_devise' =>  utf8_encode($row['Id_Devise_FK']),
//'libelle_devise' =>  utf8_encode($row['LibDevise'])
