//
//  BudgetViewController.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/4/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class BudgetViewController: UIViewController {
  @IBOutlet weak var openMenuBarButton: UIBarButtonItem!
  @IBOutlet weak var addBudgetBarButton: UIBarButtonItem!
  @IBOutlet weak var budgetTableView: UITableView!
  
  private lazy var budgetItems: [Budget] = {
    var budgets = [Budget]()
    budgets.append(Budget(identifier: 1, title: "Budget 1", startDate: Date(), endDate: Date() + 1))
    budgets.append(Budget(identifier: 2, title: "Budget du mois d'Avril", startDate: Date(), endDate: Date() + 2))
    budgets.append(Budget(identifier: 3, title: "Budget du mois de Mai", startDate: Date(), endDate: Date() + 3))
    budgets.append(Budget(identifier: 4, title: "Budget du mois de Juin", startDate: Date(), endDate: Date() + 4))
    budgets.append(Budget(identifier: 5, title: "Budget du mois de Juillet", startDate: Date(), endDate: Date() + 5))
    budgets.append(Budget(identifier: 6, title: "Budget du mois de Septembre", startDate: Date(), endDate: Date() + 6))
    budgets.append(Budget(identifier: 7, title: "Budget 2", startDate: Date(), endDate: Date() + 7))
    
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
    registerTableViewCell()
    assignTableViewDelegate()
    
    if let parentSWRevealViewController = self.revealViewController() {
      openMenuBarButton.target = parentSWRevealViewController
      openMenuBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
      
      self.view.addGestureRecognizer(parentSWRevealViewController.panGestureRecognizer())
      // Do any additional setup after loading the view.
    }
  }
  
}


// MARK: - Register tableView cell
private extension BudgetViewController {
  
  func registerTableViewCell() {
    budgetTableView.register(cell: BudgetTableViewCell.self)
  }
  
  
  func assignTableViewDelegate() {
    budgetTableView.dataSource = self
    budgetTableView.delegate = self
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


// MARK: UITableViewDataSource delegate
extension BudgetViewController: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 60.0
  }
  
}


// MARK: Actions
extension BudgetViewController {
  
  @IBAction func openMenuBarButtonPressed(_ sender: UIBarButtonItem) {
    // TODO: Implement logic
    print("openMenuBarButtonPressed")
  }
  
  @IBAction func addBudgetBarButtonPressed(_ sender: UIBarButtonItem) {
    // TODO: Implement logic
    print("addBudgetBarButtonPressed")
  }
  
}
