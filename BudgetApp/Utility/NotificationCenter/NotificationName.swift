//
//  NotificationName.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

enum NotificationName: String {
  case showAlertViewMessageNoWirelessNetworkConnected = "ShowAlertViewNoWirelessNetworkConnected"

  var name: Notification.Name {
    return Notification.Name(self.rawValue)
  }
}
