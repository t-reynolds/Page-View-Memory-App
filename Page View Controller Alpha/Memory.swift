//
//  Memory.swift
//  Page View Controller Alpha
//
//  Created by Robert Reynolds on 7/11/16.
//  Copyright © 2016 Robert Reynolds. All rights reserved.
//

import UIKit

class Memory {
    
    private var image: UIImage
    private var tags : [String]
    private var note : String
    private var date : String
    
    
    init(tags: [String], image: UIImage, note: String, date: String){
        self.tags = tags
        self.image = image
        self.note = note
        self.date = date
    }
    init(memory : Memory){
        self.tags = memory.getTags()
        self.image = memory.getImage()
        self.note = memory.getNote()
        self.date = memory.getDate()
    }
    init(){
        self.tags = [""]
        self.image = UIImage()
        self.note = ""
        self.date = ""
    }
    func memoryImageName() -> String{
        return self.note
    }
    func getImage()-> UIImage{
        return self.image
    }
    func getTags() -> [String]{
        return self.tags
    }
    func getNote() ->String{
        return self.note
    }
    func getDate() ->String{
        return self.date
    }
    func editNote(note : String){
        self.note = note
    }
    func editTags(tags : [String]){
        self.tags = tags
    }
    
}
