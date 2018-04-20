//
//  LogInViewController.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
  @IBOutlet weak var mailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    mailTextField.resignFirstResponder()
    passwordTextField.resignFirstResponder()
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
}


// MARK: - ViewSetupable protocol
extension LogInViewController: ViewSetupable {
  
  func setup() {
    // TODO: Implement vc initial setup
  }
  
}
