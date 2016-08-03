//
//  Memories.swift
//  Page View Controller Alpha
//
//  Created by Robert Reynolds on 7/12/16.
//  Copyright © 2016 Robert Reynolds. All rights reserved.
//

import UIKit

class Memories
{
    private var memories = [Memory]()
    private var tags = [String]()
    private let PAGESIZE = 9
//    private let curr_page : Int
    
    
    var pageSize: Int {
        return PAGESIZE
    }
    
    var numberOfMemories: Int {
        return memories.count
    }
    var numberOfTags: Int{
        return tags.count
    }
    var numberOfSections: Int{
        return memories.count / PAGESIZE
    }
    
//    var currentPage: Int{
//        return curr_page
//    }
//    
    init()
    {
//        self.curr_page = curr_page
        self.memories = createMemories()
        self.tags = gatherTags()
        
    }
    
    func createMemories() -> [Memory]{
        var newMemories = [Memory]()
        var i = 1
        while(UIImage(named: "0\(i)") != nil)
        {
            
            let newMemory = Memory(tag: [""], image: (UIImage(named: "0\(i)"))!, note: "0\(i).jpg", date: "now")
            newMemories.append(newMemory)
//            print("jpg index: \(i)")
            i += 1
        
        }
        //If empty PhotoCell, fill with blank template
        if(i % PAGESIZE > 0 ){
            
            let j = i % PAGESIZE
            let k = PAGESIZE - j
            
            for j in 0...k{
                newMemories.append(Memory(tag: [""], image: (UIImage(named : "Blank"))!, note: "Blank_Template_\(j)", date: "Unfilled"))
            }
            
        }
        //if empty set entirely, create blank page
//        else if(i == 0){
//            for j in 0...PAGESIZE-1{
//                newMemories.append(Memory(tag: [""], image: (UIImage(named : "Blank"))!, note: "Blank_Template_\(j)", date: "Unfilled"))
//            }
//        }
        
        return newMemories
    }
    
    func gatherTags() -> [String]{
        
        return ["s"]
    }
    func memoriesForItemAtIndexPath(indexPath: NSIndexPath) -> Memory? {
        //        print("indexPath.length: \(indexPath.length)")
        //        print("indexPath.section: \(indexPath.section)")
        //        print("indexSectionCompensation = \(PAGESIZE) * \(indexPath.section)")
        let index = PAGESIZE * (indexPath.section) + indexPath.item
        //        print("index: \(index)")
        //        print("memory Description: \(memories[index].memoryImageName())")
        
        //print("indexPath.item in Memories: \(indexPath.item)")
        return memories[index]
        
        
    }
    
}
