//
//  Memory.swift
//  Page View Controller Alpha
//
//  Created by Robert Reynolds on 7/11/16.
//  Copyright © 2016 Robert Reynolds. All rights reserved.
//

import UIKit

class Memory {
    
    var image: UIImage
    var tag : [String]
    var note : String
    var date : String
    
    
    init(tag: [String], image: UIImage, note: String, date: String){
        self.tag = tag
        self.image = image
        self.note = note
        self.date = date
    }
    func memoryImageName() -> String{
        return self.note
    }
    
}
