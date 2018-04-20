//
//  CellDequeueble.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

protocol CellDequeueble: class { }

extension CellDequeueble where Self: UICollectionView {
  
  func dequeueCell<T: UICollectionViewCell>(cell: T.Type, for indexPath: IndexPath) -> T {
    let cell = self.dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as! T
    return cell
  }
  
}

extension CellDequeueble where Self: UITableView {
  
  func dequeueCell<T: UITableViewCell>(cell: T.Type, for indexPath: IndexPath) -> T {
    let cell = self.dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as! T
    return cell
  }
  
}
