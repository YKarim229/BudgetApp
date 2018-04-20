//
//  UIView+ConstrainEdges.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
  
  func constrainEdges(toMarginOf view: UIView) {
    self.translatesAutoresizingMaskIntoConstraints = false
    self.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    self.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    self.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    self.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
  }
  
}
