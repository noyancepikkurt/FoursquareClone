//
//  PlaceModel.swift
//  FourSquareClone
//
//  Created by Noyan Çepikkurt on 29.09.2022.
//

import Foundation
import UIKit

class PlaceModel {
    
    static let sharedInstance = PlaceModel()
    
    var placeName = ""
    var placeType = ""
    var placeAtmosphere = ""
    var placeImage = UIImage()
    
    private init(){}
    
    
}
