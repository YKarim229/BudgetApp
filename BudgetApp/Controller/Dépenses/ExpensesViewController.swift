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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
}

// MARK: - ViewSetupable protocol
extension ExpensesViewController: ViewSetupable {
  
  func setup() {
    if let parentSWRevealViewController = self.revealViewController() {
      openMenuBarButton.target = parentSWRevealViewController
      openMenuBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
      
      self.view.addGestureRecognizer(parentSWRevealViewController.panGestureRecognizer())
      // Do any additional setup after loading the view.
    }
  }
  
}

