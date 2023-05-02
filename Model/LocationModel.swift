//
//  LocationModel.swift
//  Africa
//
//  Created by Hassan Assiry on 03/04/2023.
//

import Foundation
import MapKit

struct NationalParkLocation : Codable , Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    // computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
}
