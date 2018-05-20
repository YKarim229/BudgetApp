//
//  SegueIdentifierType.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

enum SegueIdentifierType: String {
  case revealMenu = "RevealMenuSegue"
  case newExpense = "NewExpenseSegue"
  case expensesDashboard = "ExpensesDashboardSegue"
  case expenses = "ExpensesSegue"
  case budget = "BudgetSegue"
  case thresholds = "ThresholdsSegue"
  case configuration = "ConfigurationSegue"
  case signOut = "SignOutSegue"
  case logIn = "LogInSegue"
  case register = "RegisterSegue"
  case createAccount = "createAccountSegue"
  
  case notifications = "NotificationsSegue"
  case myAccount = "MyAccountsSegue"
}
