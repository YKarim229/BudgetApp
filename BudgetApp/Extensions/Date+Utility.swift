//
//  Date+Utility.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

extension Date {
  
  static var defaultFormatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
    formatter.locale = Locale.current
    formatter.timeZone = TimeZone.current
    return formatter
  }
  
  
  static func dateToString(_ date: Date, with formatter: DateFormatter = defaultFormatter) -> String? {
    return formatter.string(from: date)
  }
  
  
  static func shortTime(from dateString: String, with formatter: DateFormatter = defaultFormatter) -> String? {
    guard let date = formatter.date(from: dateString) else { return nil }
    
    let shortFormatter = DateFormatter()
    shortFormatter.dateStyle = .none
    shortFormatter.timeStyle = .short
    return shortFormatter.string(from: date)
  }
  
  var stringDate: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    formatter.locale = Locale.current
    return Date.dateToString(self, with: formatter) ?? "0000-00-00"
  }
  
}
