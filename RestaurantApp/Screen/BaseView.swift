//
//  BaseView.swift
//  RestaurantApp
//
//  Created by Kaiserdem on 25.08.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import UIKit

@IBDesignable class BaseView: UIView {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.configure()
  }
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    self.configure()
  }
  func configure() {
    
  }
 
}
