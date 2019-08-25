//
//  LocationView.swift
//  RestaurantApp
//
//  Created by Kaiserdem on 25.08.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import UIKit


@IBDesignable class LocationView: BaseView {

  @IBOutlet weak var allowButton: UIButton!
  @IBOutlet weak var denyButton: UIButton!

  var didTapAllow: (() -> Void)?
  
  @IBAction func allowAction(_ sender: UIButton) {
    didTapAllow?()
  }
  @IBAction func denyAction(_ sender: UIButton) {
  }
  
}
