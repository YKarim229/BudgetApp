//
//  PickerViewPresentable.swift
//  BudgetApp
//
//  Created by Pawel Milek on 4/20/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import Foundation
import UIKit

protocol PickerViewPresentable: class {
  var presenterViewController: UIViewController? { get set }
  var fadeView: UIView? { get set }
}


// MARK: - Size
extension PickerViewPresentable {
  var viewXPos: CGFloat {
    return (presenterViewController?.view.bounds.origin.x ?? 0)
  }
  
  var viewYPos: CGFloat {
    return (presenterViewController?.view.bounds.origin.y ?? 0)
  }
  
  
  var viewHeight: CGFloat {
    let statusBarHeignt = UIApplication.shared.statusBarFrame.height
    let customTabBarHeight = CGFloat(50)
    return (presenterViewController?.view.bounds.height ?? 0) + statusBarHeignt + customTabBarHeight
  }
  
  var viewWidth: CGFloat {
    return presenterViewController?.view.bounds.width ?? 0
  }
}


// MARK: - Present and dismiss view
extension PickerViewPresentable where Self: UIView {
  
  func present() {
    guard let fadeView = fadeView else { return }
    let pickerYPos = viewHeight - frame.height
    UIApplication.shared.keyWindow!.addSubview(fadeView)
    fadeView.backgroundColor = UIColor.black.withAlphaComponent(0)
    
    UIView.animate(withDuration: 0.25, delay: 0, options: .curveEaseIn, animations: {
      self.frame = CGRect(x: 0, y: pickerYPos, width: self.viewWidth, height: self.frame.height)
      fadeView.backgroundColor = UIColor.black.withAlphaComponent(0.5)
    })
    
    fadeView.addSubview(self)
  }
  
  func dismiss() {
    fadeView?.backgroundColor = UIColor.black.withAlphaComponent(0)
    UIView.animate(withDuration: 0.25, delay: 0, options: .curveEaseIn, animations: {
      self.frame = CGRect(x: 0, y: self.viewHeight, width: self.viewWidth, height: self.frame.height)
    }, completion: { finished in
      self.removeFromSuperview()
      self.fadeView?.removeFromSuperview()
    })
  }
  
}


