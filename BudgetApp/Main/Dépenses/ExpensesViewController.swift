//
//  ExpensesViewController.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/4/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class ExpensesViewController: UIViewController {
    @IBOutlet weak var Open: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil {
            Open.target = self.revealViewController()
            Open.action = Selector("revealToggle:")
            
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        // Do any additional setup after loading the view.
    }

  
    }
    


}
