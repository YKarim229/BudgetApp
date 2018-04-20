//
//  UserInterfaceCheckable.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

protocol UserInterfaceCheckable { }

extension UserInterfaceCheckable {
  
  var isPad: Bool {
    return UIDevice.current.userInterfaceIdiom == .pad
  }
  
}
