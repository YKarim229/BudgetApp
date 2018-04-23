//
//  Errors.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

protocol ErrorHandleable: Error, CustomStringConvertible { }


// MARK: - Handle errors
extension ErrorHandleable {
  
  static func handle(error: Self) {
    AlertViewPresenter.sharedInstance.presentErrorAlert(withMessage: error.description)
  }
  
}