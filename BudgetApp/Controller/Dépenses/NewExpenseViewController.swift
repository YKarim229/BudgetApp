//
//  NewExpenseViewController.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/4/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class NewExpenseViewController: UIViewController  {
  @IBOutlet weak var dateField: UITextField!
  
  let picker = UIDatePicker()
  private let dataSource =  ["Alimentation", "Transport", "Communication", "Divertissement", "Imprévus"] // dataSource = Catégories !
  private let currency =    ["XOF", "GHS", "NGN", "EUR", "USD"] //currency = Devises !
  
  @IBOutlet weak var pickerView: UIPickerView! // Catégories
  @IBOutlet weak var pickerView2: UIPickerView! // Currency
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
}


// MARK: - ViewSetupable protocol
extension NewExpenseViewController: ViewSetupable {
  
  func setup() {
    pickerView.dataSource = self
    pickerView.delegate = self
    pickerView2.dataSource = self
    pickerView2.delegate = self
    
    createDatePicker()
  }
  
}


// MARK: - Create DatePicker
private extension NewExpenseViewController {
  
  func createDatePicker() {
    let toolBar = UIToolbar()
    toolBar.sizeToFit()
    
    let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
    toolBar.setItems([done], animated: false)
    
    dateField.inputAccessoryView = toolBar
    dateField.inputView = picker
    picker.datePickerMode = .date
  }

}


// MARK: - DatePicker target-action
extension NewExpenseViewController {
  
  @objc func  donePressed() {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .none
    let dateString = formatter.string(from: picker.date)
    
    dateField.text = "\(dateString)"
    self.view.endEditing(true)
  }
  
}


// MARK: - UIPickerViewDataSource delegate
extension NewExpenseViewController: UIPickerViewDataSource  {
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return (pickerView == self.pickerView ? dataSource.count : currency.count)
  }
  
}


// MARK: - UIPickerViewDelegate delegate
extension NewExpenseViewController: UIPickerViewDelegate  {
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return (pickerView == self.pickerView ? dataSource[row] : currency[row])
  }
  
}


