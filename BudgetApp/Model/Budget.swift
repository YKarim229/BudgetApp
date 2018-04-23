//
//  Budget.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

struct Budget {
  var identifier: Int
  var title: String
  var startDate: Date
  var endDate: Date
//  var budgetDetails: BudgetDetails
}


//`Id_Budget_PK` int(11) NOT NULL,
//`LibBudget` varchar(100) NOT NULL,
//`DateDebut` datetime NOT NULL,
//`DateFin` datetime NOT NULL,
//`Date_AT` datetime NOT NULL,
//`Date_UP` datetime NOT NULL,
//`Statut` varchar(100) NOT NULL COMMENT 'A : Actif ; S : Supprimer , ASB : Sous Budget Actif , SSB : Sous Budget Supprimer',
//`Id_User_FK` int(11) NOT NULL,
//`nbrNotification` int(11) DEFAULT '0'


// MARK: Period description
extension Budget {
  
  var periodDescription: String {
    let description = "du \(startDate.stringDate) au \(endDate.stringDate)"
    return description
  }
  
}


// MARK: - Decodable protocol
extension Budget: Decodable {
  
  enum CodingKeys: String, CodingKey {
    case identifier = "id_budget"
    case title = "libelle_budget"
    case startDate = "date_debut"
    case endDate = "date_fin"
  }
  
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    
    self.identifier = try container.decode(Int.self, forKey: .identifier)
    self.title = try container.decode(String.self, forKey: .title)
    
    let startDateString: String = try container.decode(String.self, forKey: .startDate)
    let endDateString: String = try container.decode(String.self, forKey: .endDate)
    
    if let startDate = Date.defaultFormatter.date(from: startDateString) {
      self.startDate = startDate
    } else {
      throw DecodingError.dataCorruptedError(forKey: .startDate, in: container, debugDescription: "Date string does not match format expected by formatter.")
    }
    
    if let endDate = Date.defaultFormatter.date(from: endDateString) {
      self.endDate = endDate
    } else {
      throw DecodingError.dataCorruptedError(forKey: .endDate, in: container, debugDescription: "Date string does not match format expected by formatter.")
    }
  }
  
}


// MARK: Encodable protocol
extension Budget: Encodable {
  
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(identifier, forKey: .identifier)
    try container.encode(title, forKey: .title)
    try container.encode(startDate, forKey: .startDate)
    try container.encode(endDate, forKey: .endDate)
  }

}
