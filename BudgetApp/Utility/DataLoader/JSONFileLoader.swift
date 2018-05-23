//
//  JSONFileLoader.swift
//  BudgetApp
//
//  Created by Pawel Milek on 22/05/2018.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

final class JSONFileLoader: FileLoadable {
  
  static func loadFile(with name: String) throws -> Data {
    guard let path = Bundle.main.path(forResource: name, ofType: "json") else {
      throw FileLoaderError.fileNotFound(name: name)
    }
    
    do {
      let pathURL = URL(fileURLWithPath: path)
      let data = try Data(contentsOf: pathURL)
      return data
      
    } catch {
      throw FileLoaderError.dataNotAvailable
    }
  }
  
  
  static func decode<T>(data: Data, for type: T.Type, decodeCompletion: (FileLoaderResultType<T, DecoderError>) -> ()) where T: Decodable {
    do {
      let decodedData = try JSONDecoder().decode(T.self, from: data)
      decodeCompletion(.success(decodedData))
      
    } catch let error {
      decodeCompletion(.failure(DecoderError.dataNotAvailable(error)))
    }
  }
  
}
