//
//  CollectionViewController.swift
//  Page View Controller Alpha
//
//  Created by Robert Reynolds on 7/22/16.
//  Copyright © 2016 Robert Reynolds. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    //data source
    let memories = Memories()
    
    //Contains all relevant identifiers
    private struct Storyboard{
        static let CellIdentifier = "PhotoCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Inside CollectionViewController")
        
    }
     func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memories.pageSize
    }
     func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Storyboard.CellIdentifier, forIndexPath: indexPath)as! CollectionViewCell
        //print("indexPath: \(indexPath) section: \(indexPath.section) item: \(indexPath.item)")
        cell.memory = memories.memoriesForItemAtIndexPath(indexPath)
       // print("debugDescriaption:  \(cell.memory?.image.debugDescription)")
        //print("cell.memory.memoryImageName(): \(cell.memory?.memoryImageName())")

        
        return cell
    }
//    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
//        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Storyboard.CellIdentifier, forIndexPath: indexPath)as! CollectionViewCell
//        cell.memory = memories.memoriesForItemAtIndexPath(indexPath)
//        performSegueWithIdentifier("showMemoryImage", sender: cell)
//    }
     func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return memories.numberOfSections
    }
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
    {
        let headerView = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "SectionHeaderView", forIndexPath: indexPath) as! SectionHeaderView
        
        if let memory = memories.memoriesForItemAtIndexPath(indexPath) {
            headerView.memory = memory
        }
        
        
        return headerView
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showImage" {
            let zoomVC = segue.destinationViewController as! MemoryViewController
            let indexPath = sender?.indexPath
            print("index Path \(indexPath)")
            let cell = sender as! CollectionViewCell
           print( cell.memory!.memoryImageName())
            //zoomVC.image = cell.imageView.image!
            zoomVC.retainMemory(cell.memory!)
            
        }
    }
    

}
