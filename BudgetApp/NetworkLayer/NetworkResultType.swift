//
//  NetworkResultType.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

enum NetworkResultType<T, E> where E: Error {
  case success(T)
  case failure(E)
}
