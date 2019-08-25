//
//  DetailsFoodView.swift
//  RestaurantApp
//
//  Created by Kaiserdem on 25.08.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import UIKit
import MapKit

@IBDesignable class DetailsFoodView: BaseView {
  
  @IBOutlet weak var collectionView: UICollectionView!
  @IBOutlet weak var pageControll: UIPageControl!
  @IBOutlet weak var priceLabel: UILabel!
  @IBOutlet weak var hoursLabel: UILabel!
  @IBOutlet weak var locationLabel: UILabel!
  @IBOutlet weak var retingsLabel: UILabel!
  @IBOutlet weak var mapView: MKMapView!
  
  @IBAction func headerControl(_ sender: UIPageControl) {
    
  }
}
