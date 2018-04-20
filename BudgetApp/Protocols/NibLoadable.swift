//
//  NibLoadable.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation
import UIKit

protocol NibLoadable: class { }


// MARK: - Nib Name
extension NibLoadable where Self: UIView {
  
  static var nibName: String {
    return String(describing: self)
  }
  
}
