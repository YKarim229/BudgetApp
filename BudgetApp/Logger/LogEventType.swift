//
//  LogEventType.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

enum LogEventType: String {
  case error = "[Error]"
  case info = "[Info]"
  case debug = "[Debug]"
  case warning = "[Warning]"
  case server = "[Server]"
}
