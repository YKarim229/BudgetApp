//
//  BudgetStatusType.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/23/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

enum BudgetStatusType {
  case A
  case S
  case ASB
  case SSB
}


// MARK: - CustomStringConvertible protocol
extension BudgetStatusType: CustomStringConvertible {
  
  var description: String {
    switch self {
    case .A:
      return "Actif" // Active
      
    case .S:
      return "Supprimer" // Delete
      
    case .ASB:
      return "Sous Budget Actif" // Active Under Budget
      
    case .SSB:
      return "Sous Budget Supprimer" // Delete Under Budget
    }
  }
  
}
