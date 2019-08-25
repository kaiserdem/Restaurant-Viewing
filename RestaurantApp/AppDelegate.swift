//
//  AppDelegate.swift
//  RestaurantApp
//
//  Created by Kaiserdem on 24.08.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//
// kaiserdem.RestaurantApp

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  let  window = UIWindow()
  let locationService = LocationService()
  let stotyboard = UIStoryboard(name: "Main", bundle: nil)


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    switch locationService.status {
    case .notDetermined, .denied, .restricted:
      let locationViewController = stotyboard.instantiateViewController(withIdentifier: "LocationViewContoller") as? LocationViewController
      locationViewController?.locationService = locationService
      window.rootViewController = locationViewController
    default:
      assertionFailure()
    }
    window.makeKeyAndVisible()
    return true
  }

}

