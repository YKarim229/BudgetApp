//
//  AlertViewPresenter.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation
import UIKit

final class AlertViewPresenter {
  static let sharedInstance = AlertViewPresenter()
  weak var delegate: AlertViewPresenterDelegate?
  
  private init() {}
}


// MARK: - Present submit Alert
extension AlertViewPresenter {
  
  func presentSubmitAlert(in viewController: UIViewController, title: String, message: String, textFieldConfiguration: ((UITextField) -> ())? = nil) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addTextField(configurationHandler: textFieldConfiguration)
    
    let submitAction = UIAlertAction(title: "Ok", style: .default, handler: { action in
      guard let textField = alert.textFields?.first, textField.text?.isEmpty == false else { return }
      self.delegate?.alertView(self, didSubmit: textField.text!)
    })
    
    let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
    
    alert.addAction(submitAction)
    alert.addAction(cancel)
    viewController.present(alert, animated: true, completion: nil)
  }
  
}


// MARK: - Present Error Alert
extension AlertViewPresenter {
  
  func presentErrorAlert(withMessage msg: String, animated: Bool = true, completion: (() -> Void)? = nil) {
    let alertWindow = UIWindow(frame: UIScreen.main.bounds)
    alertWindow.rootViewController = UIViewController()
    alertWindow.windowLevel = UIWindowLevelAlert + 1;
    alertWindow.makeKeyAndVisible()
    
    let alert = UIAlertController(title: "Error", message: msg, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Ok", style: .default)
    alert.addAction(okAction)
    
    alertWindow.rootViewController?.present(alert, animated: animated, completion: completion)
  }
  
}


// MARK: - Present Popup Alert
extension AlertViewPresenter {
  
  func presentPopupAlert(in viewController: UIViewController, title: String?, message: String?, actionTitles: [String] = ["OK"], actions: [((UIAlertAction) -> ())?] = [nil]) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    
    for (index, title) in actionTitles.enumerated() {
      let action = UIAlertAction(title: title, style: .default, handler: actions[index])
      alert.addAction(action)
    }
    viewController.present(alert, animated: true, completion: nil)
  }
  
}

