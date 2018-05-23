//
//  ExpensesViewController.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/4/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class ExpensesViewController: UIViewController {
  @IBOutlet weak var openMenuBarButton: UIBarButtonItem!
  @IBOutlet weak var startDateTextField: UITextField!
  @IBOutlet weak var endDateTextField: UITextField!
  @IBOutlet weak var tableView: UITableView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
  
  
  @IBAction func openMenuBarButtonPressed(_ sender: UIBarButtonItem) {
    // TODO: Implement logic
    print("openMenuBarButtonPressed")
    self.dismiss(animated: true)
  }
}

// MARK: - ViewSetupable protocol
extension ExpensesViewController: ViewSetupable {
  
  func setup() {
//    if let parentSWRevealViewController = self.revealViewController() {
//      openMenuBarButton.target = parentSWRevealViewController
//      openMenuBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
//
//      self.view.addGestureRecognizer(parentSWRevealViewController.panGestureRecognizer())
//      // Do any additional setup after loading the view.
//    }
  }
  
}

