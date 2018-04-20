//
//  ExpensesTableViewCell.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class ExpensesTableViewCell: UITableViewCell {
  @IBOutlet var motifLabel: UILabel!
  @IBOutlet var categiryLabel: UILabel!
  @IBOutlet var amountLabel: UILabel!
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  override func prepareForReuse() {
    super.prepareForReuse()
    motifLabel.text = ""
    categiryLabel.text = ""
    amountLabel.text = ""
  }
}
