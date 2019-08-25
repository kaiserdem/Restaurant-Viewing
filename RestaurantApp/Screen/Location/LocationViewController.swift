//
//  LocationViewController.swift
//  RestaurantApp
//
//  Created by Kaiserdem on 25.08.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {

  @IBOutlet weak var locationView: LocationView!

  var locationService: LocationService?
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      locationView.didTapAllow = { [weak self] in
        self?.locationService?.requestLocationAuthorization()
      }

      locationService?.didChangeStatus = { [weak self] success in
        if success {
          self?.locationService?.getLocation()
        }
      }
      
      locationService?.newLocation = { [weak self] result in
        switch result {
        case .success(let location):
          print(location)
        case .failure(let error):
          assertionFailure("Error getting the users location \(error)")
        }
      }
  }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
