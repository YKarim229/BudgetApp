//
//  BudgetDetails.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/23/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

final class BudgetDetails {
  var identifier: Int
  var category: Category
  var amount: Double
  var currency: Currency
  
  init(identifier: Int, category: Category, amount: Double, currency: Currency) {
    self.identifier = identifier
    self.category = category
    self.amount = amount
    self.currency = currency
  }
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


// MARK: - Decodable protocol
extension BudgetDetails: Decodable {
  
  enum CodingKeys: String, CodingKey {
    case identifier = "id_detail_budget"
    case budgetId = "id_budget"
    case categorieId = "id_categorie"
    case categorieTitle = "libelle_categorie"
    case amount = "montant"
    case currencyId = "id_devise"
    case currencySymbol = "libelle_devise"
  }
  
  
  convenience init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    
    let identifier = try container.decode(Int.self, forKey: .identifier)
    
    let categoryId = try container.decode(Int.self, forKey: .categorieId)
    let categoryTitle = try container.decode(String.self, forKey: .categorieTitle)
    let category = Category(identifier: categoryId, title: categoryTitle)
    let amount = try container.decode(Double.self, forKey: .amount)
    
    let currencyId = try container.decode(Int.self, forKey: .currencyId)
    let currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
    let currency = Currency(identifier: currencyId, symbol: currencySymbol)
    
    self.init(identifier: identifier, category: category, amount: amount, currency: currency)
  }
  
}


// MARK: Encodable protocol
extension BudgetDetails: Encodable {
  
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(identifier, forKey: .identifier)
//    try container.encode(title, forKey: .title)
//    try container.encode(startDate, forKey: .startDate)
//    try container.encode(endDate, forKey: .endDate)
  }
  
}
