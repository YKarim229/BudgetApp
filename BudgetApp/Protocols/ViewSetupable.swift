//
//  ViewSetupable.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

@objc protocol ViewSetupable: class {
  func setup()
  @objc optional func setupStyle()
  @objc optional func setupLayout()
}
