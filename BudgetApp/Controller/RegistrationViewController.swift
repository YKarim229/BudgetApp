//
//  InscriptionViewController.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var name2TextField: UITextField!
  @IBOutlet weak var mailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var password2TextField: UITextField!
  
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    nameTextField.resignFirstResponder()
    name2TextField.resignFirstResponder()
    mailTextField.resignFirstResponder()
    passwordTextField.resignFirstResponder()
    password2TextField.resignFirstResponder()
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
  
}


// MARK: - ViewSetupable protocol
extension RegistrationViewController: ViewSetupable {
  
  func setup() {
    // TODO: Implement vc initial setup
  }
  
}
