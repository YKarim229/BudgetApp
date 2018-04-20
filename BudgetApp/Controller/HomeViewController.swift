//
//  HomeViewController.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
  @IBOutlet weak var Open: UIBarButtonItem!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
}


// MARK: - ViewSetupable protocol
extension HomeViewController: ViewSetupable {
  
  func setup() {
    // Use Open button to open slideView
    if self.revealViewController() != nil {
      Open.target = self.revealViewController()
      Open.action = Selector("revealToggle:")
      
      // Open side menu with swipe
      
      self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
      // Do any additional setup after loading the view, typically from a nib.
      
    }
  }
  
}
