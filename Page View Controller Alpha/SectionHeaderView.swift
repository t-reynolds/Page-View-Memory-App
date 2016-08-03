//
//  SectionHeaderView.swift
//  Page View Controller Alpha
//
//  Created by Robert Reynolds on 8/2/16.
//  Copyright © 2016 Robert Reynolds. All rights reserved.
//

import UIKit

class SectionHeaderView: UICollectionReusableView {
    
    @IBOutlet weak var sectionLabel: UILabel!
    var memory: Memory? {
        didSet{
            sectionLabel.text = memory?.date.uppercaseString
        }
    }
}
