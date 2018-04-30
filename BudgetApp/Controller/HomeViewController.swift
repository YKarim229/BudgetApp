//
//  HomeViewController.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
  @IBOutlet weak var openMenuBarButton: UIBarButtonItem!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
}


// MARK: - ViewSetupable protocol
extension HomeViewController: ViewSetupable {
  
  func setup() {
    
    if let parentSWRevealViewController = self.revealViewController() {
      openMenuBarButton.target = parentSWRevealViewController
      openMenuBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
      
      self.view.addGestureRecognizer(parentSWRevealViewController.panGestureRecognizer())
      // Do any additional setup after loading the view.
    }
  }
  
}
