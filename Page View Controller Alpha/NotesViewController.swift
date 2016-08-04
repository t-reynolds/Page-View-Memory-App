//
//  NotesViewController.swift
//  Page View Controller Alpha
//
//  Created by Robert Reynolds on 8/4/16.
//  Copyright © 2016 Robert Reynolds. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController {

    @IBOutlet weak var SaveNote: UIBarButtonItem!
    @IBOutlet weak var NoteView: UITextView!
    
    private var memory = Memory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(animated: Bool){
        print("Declaring Note To Be Shown")
        //memoryImageView.image = image
        setNote()
    }
    func retainMemory(memory: Memory){
        self.memory = memory
    }
    func setNote(){
        self.NoteView.text = self.memory.getNote()

    }
    
}
