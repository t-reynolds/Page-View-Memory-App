//
//  BarButtonNoteItem.swift
//  Page View Controller Alpha
//
//  Created by Robert Reynolds on 8/4/16.
//  Copyright © 2016 Robert Reynolds. All rights reserved.
//

import UIKit

class BarButtonNoteItem: UIBarButtonItem {
    
    var memory : Memory? {
        didSet{
            updateNote()
        }
    }
    func updateNote(){
        print("Updating note")
    }
    
}
