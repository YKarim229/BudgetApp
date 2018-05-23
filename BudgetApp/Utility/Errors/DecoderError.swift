//
//  DecoderError.swift
//  BudgetApp
//
//  Created by Pawel Milek on 22/05/2018.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

enum DecoderError: Error {
  case dataNotAvailable(Error)
}
