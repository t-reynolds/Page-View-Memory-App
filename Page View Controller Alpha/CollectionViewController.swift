//
//  CollectionViewController.swift
//  Page View Controller Alpha
//
//  Created by Robert Reynolds on 7/22/16.
//  Copyright © 2016 Robert Reynolds. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    private let leftAndRightPaddings: CGFloat = 32.0
    private let numberOfItemsPerRow: CGFloat = 3.0
    private let heightAdjustment: CGFloat = 30.0
    
    //data source
    let memories = Memories()
    
    //Contains all relevant identifiers
    private struct Storyboard{
        static let CellIdentifier = "PhotoCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("VIEW DID LOAD LAUNCHED COLLECTION CONTROLLER")
//        let width = (CGRectGetWidth(collectionView!.frame) - leftAndRightPaddings) / numberOfItemsPerRow
//        let layout = collectionViewLayout as! UICollectionViewFlowLayout
//        layout.itemSize = CGSizeMake(width, width + heightAdjustment)
    }
     func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memories.pageSize
    }
     func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Storyboard.CellIdentifier, forIndexPath: indexPath)as! CollectionViewCell
        //print("indexPath: \(indexPath) section: \(indexPath.section) item: \(indexPath.item)")
        cell.memory = memories.memoriesForItemAtIndexPath(indexPath)
        print("debugDescription:  \(cell.memory?.image.debugDescription)")
        print("cell.memory.memoryImageName(): \(cell.memory?.memoryImageName())")

        
        return cell
    }
//    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
     func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
}
