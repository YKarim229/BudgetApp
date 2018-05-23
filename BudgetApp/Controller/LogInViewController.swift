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
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
}


// MARK: - ViewSetupable protocol
extension LogInViewController: ViewSetupable {
  
  func setup() {
    setTextFields()
    testPlistMenuItemsLoad()
  }
  
}


// MARK: - Private - Set text fields
private extension LogInViewController {
  
  func setTextFields() {
    mailTextField.keyboardType = .emailAddress
    passwordTextField.textContentType = UITextContentType.password
    
    mailTextField.delegate = self
    passwordTextField.delegate = self
  }
  
  
  func testPlistMenuItemsLoad() {
    if let plistData = try? PlistFileLoader.loadFile(with: "HomeMenuItems") {
      PlistFileLoader.decode(data: plistData, for: [MenuItem].self, decodeCompletion: { result in
        switch result {
        case .success(let items):
          items.forEach {
            print($0)
          }
          
          
        case .failure(let error):
          print(error)
        }
      })
    }
  }
  
}


// MARK: - UITextFieldDelegate protocol
extension LogInViewController: UITextFieldDelegate {
  
  // TODO: Use that method to validate the current text. Validating Text and Managing the Editing Process
  
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    return true
  }
  
}
