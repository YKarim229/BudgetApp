//
//  FileLoaderError.swift
//  DigitalPictureFrame
//
//  Created by Pawel Milek
//  Copyright © 2017 Pawel Milek. All rights reserved.
//

import Foundation

enum FileLoaderError: ErrorHandleable {
  case fileNotFound(name: String)
  case dataNotAvailable
  case unsupportedError
}



// MARK: - ErrorHandleable protocol
extension FileLoaderError {
  
  var description: String {
    switch self {
    case .fileNotFound(_):
      return "File Not Found"
      
    case .dataNotAvailable:
      return "Data Not Available"
      
    case .unsupportedError:
      return "Unsupported Error"
    }
  }
  
}
