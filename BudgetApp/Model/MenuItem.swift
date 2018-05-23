//
//  MenuItem.swift
//  BudgetApp
//
//  Created by Pawel Milek on 22/05/2018.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation
import UIKit

struct MenuItem {
  var image: UIImage?
  var title: String
}


// MARK: - Decodable protocol
extension MenuItem: Decodable {
  
  enum CodingKeys: String, CodingKey {
    case image
    case title
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    
    let imageName: String = try container.decode(String.self, forKey: .image)
    let image = UIImage(named: imageName)
    let title: String = try container.decode(String.self, forKey: .title)
    
    self.init(image: image, title: title)
  }
  
}
