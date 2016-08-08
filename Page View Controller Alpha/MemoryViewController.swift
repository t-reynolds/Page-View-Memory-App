//
//  MemoryViewController.swift
//  Page View Controller Alpha
//
//  Created by Robert Reynolds on 8/3/16.
//  Copyright © 2016 Robert Reynolds. All rights reserved.
//

import UIKit

class MemoryViewController: UIViewController {
    
    
    @IBOutlet weak var NoteItem: BarButtonNoteItem!
    @IBOutlet weak var memoryImageView: UIImageView!
    
   
    var memory = Memory()
    
    var image = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Inside MemoryViewController")
      
    }
    override func viewWillAppear(animated: Bool){
        print("Declaring Image To Be Shown")
         //memoryImageView.image = image
        declareImage()
        buildNoteItem()
    }
        func retainMemory(memory: Memory){
        print("Declaring Memory")
        self.memory = Memory(memory: memory)
    }
    func declareImage(){
        print(memory.memoryImageName())
        memoryImageView.image = memory.getImage()
    }
    func buildNoteItem(){
        NoteItem.memory = memory
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showNote" {
            let noteVC = segue.destinationViewController as! NotesViewController
            let noteItem = sender as! BarButtonNoteItem
            noteVC.retainMemory(noteItem.memory!)
            
        }
    }
    
 
    
}