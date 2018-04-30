//
//  Category.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/23/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

final class Category { // Categorie
  var identifier: Int
  var title: String
  
  init(identifier: Int, title: String) {
    self.identifier = identifier
    self.title = title
  }
}



//`Id_Categorie_PK` int(11) NOT NULL,
//`LibCategorie` varchar(100) NOT NULL,
//`Date_AT` datetime NOT NULL,
//`Date_UP` datetime NOT NULL,
//`Statut` varchar(100) NOT NULL,
//`Id_User_FK` int(11) NOT NULL
