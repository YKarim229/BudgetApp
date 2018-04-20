//
//  Budget.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

struct Budget {
  var title: String
  var period: (from: String, to: String)
  var amount: Double
}


// MARK: Amount with currency
extension Budget {
  
  var amountWithCurrency: String {
    let currencyFormatter: NumberFormatter = {
      let formatter = NumberFormatter()
      formatter.usesGroupingSeparator = true
      formatter.numberStyle = .currency
      formatter.locale = Locale.current
      return formatter
    }()
    
    let priceString = currencyFormatter.string(from: NSNumber(value: amount))!
    return priceString
  }
  
}


// MARK: Period description
extension Budget {
  
  var periodDescription: String {
    let description = "du \(period.from) au \(period.to)"
    return description
  }
}
