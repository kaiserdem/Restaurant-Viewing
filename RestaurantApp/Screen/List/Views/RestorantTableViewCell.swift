//
//  RestorantTableViewCell.swift
//  RestaurantApp
//
//  Created by Kaiserdem on 25.08.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import UIKit

class RestorantTableViewCell: UITableViewCell {

  @IBOutlet weak var restarantImageView: UIImageView!
  @IBOutlet weak var makerImageView: UIImageView!
  @IBOutlet weak var restorantNameLabel: UILabel!
  @IBOutlet weak var locationLabel: UILabel!
  

  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
