//
//  AlphaPageViewController.swift
//  Page View Controller Alpha
//
//  Created by Robert Reynolds on 7/21/16.
//  Copyright © 2016 Robert Reynolds. All rights reserved.
//

import UIKit

class AlphaPageViewController: UIPageViewController {
    //Current Index
    var currentIndex = 0
    //data source
    
    
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [self.newColoredViewController("Green"),
                self.newColoredViewController("Red"),
                self.newColoredViewController("Blue")]
    }()
    
    private func newColoredViewController(color: String) -> UIViewController {
        print("Current Index: \(currentIndex)")
//        let memories = Memories(curr_page: currentIndex)
//        let newView = CollectionViewController(memories: memories)
//        addChildViewController(newView)
        
        return UIStoryboard(name: "Main", bundle: nil) .
            instantiateViewControllerWithIdentifier("\(color)ViewController")
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .Forward,
                               animated: true,
                               completion: nil)
            }
        
    }
    
}
    extension AlphaPageViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    
    func pageViewController(pageViewController: UIPageViewController,
                            viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.indexOf(viewController) else {
            return nil
        }

        let previousIndex = viewControllerIndex - 1
        currentIndex = viewControllerIndex
        //print("Current Index: \(currentIndex)")
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        return orderedViewControllers[previousIndex]
//        return newView
    }
    func pageViewController(pageViewController: UIPageViewController,
                            viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.indexOf(viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        currentIndex = viewControllerIndex
        //print(currentIndex)
        let orderedViewControllersCount = orderedViewControllers.count
        
        guard orderedViewControllersCount != nextIndex else {
            return nil
        }
        
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
//        return newView
    }
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
            return orderedViewControllers.count
    }
        
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
            guard let firstViewController = viewControllers?.first,
            firstViewControllerIndex = orderedViewControllers.indexOf(firstViewController) else {
            return 0
        }
            print(firstViewControllerIndex)
        return firstViewControllerIndex
    }
    
}
    