//
//  BudgetViewController.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/4/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class BudgetViewController: UIViewController, UITableViewDelegate {
  @IBOutlet weak var Open: UIBarButtonItem!
  @IBOutlet weak var budgetTableView: UITableView!
  
  private lazy var budgetItems: [Budget] = {
    var budgets = [Budget]()
    budgets.append(Budget(title: "Budget 1", period: ("19/03/2018", "29/03/2018"), amount: 87.00))
    budgets.append(Budget(title: "Budget du mois d'Avril", period: ("01/04/2018", "30/04/2018"), amount: 120.00))
    budgets.append(Budget(title: "Budget du mois de Mai", period: ("01/05/2018", "31/05/2018"), amount: 112.50))
    budgets.append(Budget(title: "Budget du mois de Juin", period: ("01/06/2018", "30/06/2018"), amount: 144.70))
    budgets.append(Budget(title: "Budget du mois de Juillet", period: ("01/07/2018", "29/03/2018"), amount: 120.00))
    budgets.append(Budget(title: "Budget du mois de Septembre", period: ("19/03/2018", "29/03/2018"), amount: 167.00))
    budgets.append(Budget(title: "Budget 2", period: ("19/03/2018", "29/03/2018"), amount: 92.00))
    
    return budgets
  }()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
}


// MARK: - ViewSetupable protocol
extension BudgetViewController: ViewSetupable {
  
  func setup() {
    budgetTableView.register(cell: BudgetTableViewCell.self)
    
    budgetTableView.dataSource = self
    budgetTableView.delegate = self
    
    if self.revealViewController() != nil {
      Open.target = self.revealViewController()
      Open.action = Selector("revealToggle:")
      self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
      // Do any additional setup after loading the view.
    }
  }
  
  
}


// MARK: UITableViewDataSource delegate
extension BudgetViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return budgetItems.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueCell(cell: BudgetTableViewCell.self, for: indexPath)
    cell.configurate(by: budgetItems[indexPath.row])

    return cell
  }
  
}
