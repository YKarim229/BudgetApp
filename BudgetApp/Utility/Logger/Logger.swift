//
//  Logger.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

struct Logger { }

// MARK: - log
extension Logger {
  
  static func log(message: String, event: LogEventType, fileName: String = #file, line: Int = #line, column: Int = #column, funcName: String = #function) {
    func extractFileName(from filePath: String) -> String {
      let components = filePath.components(separatedBy: "/")
      return components.isEmpty ? "" : components.last!
    }
    
    let date = String(describing: Date.dateToString(Date())!)
    let fileName = extractFileName(from: fileName)
    let composedMessage = "\(date) \(event.rawValue)[\(fileName)]:\(line) \(column) \(funcName) -> \(message)"
    
    #if DEBUG
    print(composedMessage)
    #endif
  }
  
}
