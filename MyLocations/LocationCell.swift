//
//  LocationCell.swift
//  MyLocations
//
//  Created by Tomas Sidenfaden on 5/1/17.
//  Copyright © 2017 Tomas Sidenfaden. All rights reserved.
//

import UIKit

class LocationCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!

    func configure(for location: Location) {
        if location.locationDescription.isEmpty {
            descriptionLabel.text = "(No Description)"
        } else {
            descriptionLabel.text = location.locationDescription
        }
        if let placemark = location.placemark {
            var text = ""
            if let s = placemark.subThoroughfare {
                text += s + " " }
            if let s = placemark.thoroughfare {
                text += s + ", "
            }
            if let s = placemark.locality {
                text += s }
            addressLabel.text = text
        } else {
            addressLabel.text = String(format:
                "Lat: %.8f, Long: %.8f", location.latitude, location.longitude)
        } }
    
}
