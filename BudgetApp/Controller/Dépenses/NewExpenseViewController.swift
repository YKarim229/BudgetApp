//
//  NewExpenseViewController.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/4/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class NewExpenseViewController: UIViewController  {
  @IBOutlet weak var categoryPickerView: UIPickerView!
  @IBOutlet weak var currencyPickerView: UIPickerView!
  @IBOutlet weak var dateField: UITextField!
  @IBOutlet weak var registerButton: UIButton!
  
  lazy private var picker: UIDatePicker = {
    let datePicker = UIDatePicker()
    dateField.inputView = datePicker
    datePicker.datePickerMode = .date
    return datePicker
  }()
  
  private var categories: [Category] = {
    let food = Category(identifier: 1, title: "Alimentation")
    let transport = Category(identifier: 2, title: "Transport")
    let communication = Category(identifier: 3, title: "Communication")
    let entertainment = Category(identifier: 4, title: "Divertissement")
    let unexpected = Category(identifier: 5, title: "Imprévus")
    return [food, transport, communication, entertainment, unexpected]
  }()
  
  private var currencies: [Currency] = {
    let currencyXOF = Currency(identifier: 1, symbol: "XOF")
    let currencyGHS = Currency(identifier: 2, symbol: "GHS")
    let currencyNGN = Currency(identifier: 3, symbol: "NGN")
    let currencyEUR = Currency(identifier: 4, symbol: "EUR")
    let currencyUSD = Currency(identifier: 5, symbol: "USD")
    return [currencyXOF, currencyGHS, currencyNGN, currencyEUR, currencyUSD]
  }()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
}


// MARK: - ViewSetupable protocol
extension NewExpenseViewController: ViewSetupable {
  
  func setup() {
    setToolBar()
    assignPickerViewdelegates()
  }
  
}



// MARK: - Set tool bar
private extension NewExpenseViewController {
  
  func setToolBar() {
    let toolBar = UIToolbar()
    toolBar.sizeToFit()
    
    let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
    toolBar.setItems([done], animated: false)
  
    dateField.inputAccessoryView = toolBar
  }
}


// MARK: - Assign picker view delegates
private extension NewExpenseViewController {
  
  func assignPickerViewdelegates() {
    categoryPickerView.dataSource = self
    categoryPickerView.delegate = self
    currencyPickerView.dataSource = self
    currencyPickerView.delegate = self
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
    return (pickerView == self.categoryPickerView ? categories.count : currencies.count)
  }
  
}


// MARK: - UIPickerViewDelegate delegate
extension NewExpenseViewController: UIPickerViewDelegate  {
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return (pickerView == self.categoryPickerView ? categories[row].title : currencies[row].symbol)
  }
  
}


