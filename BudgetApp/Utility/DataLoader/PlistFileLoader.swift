//
//  PlistFileLoader.swift
//  BudgetApp
//
//  Created by Pawel Milek on 22/05/2018.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

final class PlistFileLoader: FileLoadable {
  
  static func loadFile(with name: String) throws -> Data {
    guard let url = Bundle.main.url(forResource: name, withExtension: "plist") else {
      throw FileLoaderError.fileNotFound(name: name)
    }
    
    do {
      let data = try Data(contentsOf: url)
      return data
      
    } catch {
      throw FileLoaderError.dataNotAvailable
    }
  }
  
  static func decode<T>(data: Data, for type: T.Type, decodeCompletion: (FileLoaderResultType<T, DecoderError>) -> ()) where T: Decodable {
    do {
      let decoder = PropertyListDecoder()
      let decodedData = try decoder.decode(T.self, from: data)
      decodeCompletion(.success(decodedData))
      
    } catch let error {
      decodeCompletion(.failure(DecoderError.dataNotAvailable(error)))
    }
  }
}
