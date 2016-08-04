//
//  CollectionViewCell.swift
//  Page View Controller Alpha
//
//  Created by Robert Reynolds on 7/22/16.
//  Copyright © 2016 Robert Reynolds. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var memory : Memory?{
        didSet{
            updateUI()
        }
    }
    func updateUI(){
        imageView.image = memory?.getImage()
    }
}
