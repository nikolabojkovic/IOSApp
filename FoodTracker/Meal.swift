//
//  Meal.swift
//  FootTracker
//
//  Created by Nikola Bojkovic on 12/19/17.
//  Copyright © 2017 Nikola Bojkovic. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        // Initialization should fail if there is no name or if the rating is negative.
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // The rating must be between 0 and 5 inclusively
        guard (rating>=0) && (rating<=5) else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
        
    }
}