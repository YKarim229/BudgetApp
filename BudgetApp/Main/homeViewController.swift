//
//  homeViewController.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {
     @IBOutlet weak var Open: UIBarButtonItem!
    override func viewDidLoad() {
        
        super.viewDidLoad()
    
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
