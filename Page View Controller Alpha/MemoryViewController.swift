//
//  MemoryViewController.swift
//  Page View Controller Alpha
//
//  Created by Robert Reynolds on 8/3/16.
//  Copyright © 2016 Robert Reynolds. All rights reserved.
//

import UIKit

class MemoryViewController: UIViewController {
    
    
    @IBOutlet weak var memoryImageView: UIImageView!
    
    @IBOutlet weak var composeNote: UIBarButtonItem!
   
    
    var image = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    override func viewWillAppear(animated: Bool){
        memoryImageView.image = image
    }
    
   
    
 
    
}