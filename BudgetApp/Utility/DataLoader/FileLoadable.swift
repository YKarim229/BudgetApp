//
//  FileLoadable.swift
//  BudgetApp
//
//  Created by Pawel Milek on 22/05/2018.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation

protocol FileLoadable: class {
  static func loadFile(with name: String) throws -> Data
  static func decode<T>(data: Data, for type: T.Type, decodeCompletion: (FileLoaderResultType<T, DecoderError>) -> ()) where T: Decodable
}
