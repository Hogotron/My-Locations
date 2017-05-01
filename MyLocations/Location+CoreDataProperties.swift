//
//  Location+CoreDataProperties.swift
//  MyLocations
//
//  Created by Tomas Sidenfaden on 4/28/17.
//  Copyright © 2017 Tomas Sidenfaden. All rights reserved.
//

import Foundation
import CoreData
import CoreLocation

extension Location {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location");
    }

    @NSManaged var latitude: Double
    @NSManaged var longitude: Double
    @NSManaged var date: Date
    @NSManaged var locationDescription: String
    @NSManaged var category: String
    @NSManaged var placemark: CLPlacemark?

}
