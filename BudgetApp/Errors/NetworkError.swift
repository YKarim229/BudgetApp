//
//  NetworkError.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

enum NetworkError: ErrorHandleable {
  case unknownFormat
  case dataNotAvailable
}


// MARK: ErrorHandleable protocol
extension NetworkError {
  
  var description: String {
    switch self {
    case .unknownFormat:
      return "Unknown Format"
      
    case .dataNotAvailable:
      return "Data Not Available"
    }
  }
  
}
