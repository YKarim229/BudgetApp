//
//  HomeViewController.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class ExpensesDashboardViewController: UIViewController {
  @IBOutlet weak var openMenuBarButton: UIBarButtonItem!
  @IBOutlet weak var startDateTextField: UITextField!
  @IBOutlet weak var endDateTextField: UITextField!
  @IBOutlet weak var addButton: UIButton!
  
  
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
extension ExpensesDashboardViewController: ViewSetupable {
  
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
