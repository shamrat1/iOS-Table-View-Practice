//
//  Repice.swift
//  Table View Practice
//
//  Created by Leads Computer on 12/11/19.
//

import Foundation
import UIKit

class Recipe {
    var image : String
    var title : String
    var description : String
    
    init(title: String , productImage: String , description: String) {
        self.title = title
        self.image = productImage
        self.description = description
    }
}
