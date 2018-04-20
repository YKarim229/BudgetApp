//
//  BudgetTableViewCell.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class BudgetTableViewCell: UITableViewCell {
  @IBOutlet private var titleLabel: UILabel!
  @IBOutlet private var dateLabel: UILabel!
  @IBOutlet private var amountLabel: UILabel!
  
  private var item: Budget? {
    didSet {
      titleLabel.text = item?.title
      dateLabel.text = item?.periodDescription
      amountLabel.text = item?.amountWithCurrency
    }
  }
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  override func prepareForReuse() {
    super.prepareForReuse()
    titleLabel.text = ""
    dateLabel.text = ""
    amountLabel.text = ""
  }
}


// MARK: Configurate cell
extension BudgetTableViewCell {
  
  func configurate(by item: Budget) {
    self.item = item
  }
}
