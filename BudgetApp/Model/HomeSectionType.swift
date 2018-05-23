//
//  HomeSectionType.swift
//  BudgetApp
//
//  Created by Pawel Milek on 22/05/2018.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

enum HomeSectionType: Int {
  case userId = 1
  case menuItems = 2
  
  static let numberOfSections = userId.rawValue...menuItems.rawValue
}
