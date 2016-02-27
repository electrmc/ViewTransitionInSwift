//
//  InteractiveViewControllerOne.swift
//  ViewTransitionInSwift
//
//  Created by MiaoChao on 16/2/28.
//  Copyright © 2016年 MiaoChao. All rights reserved.
//

import UIKit

class InteractiveViewControllerOne: UIViewController {
    
    lazy var transitionDelegate:InteractiveTransitioningDelegate = InteractiveTransitioningDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "interactiveView"
        view.backgroundColor = UIColor.lightGrayColor()
        
        let presentBtn = UIButton()
        presentBtn.frame = CGRectMake(100, 200, 100, 50)
        presentBtn.setTitle("present", forState: UIControlState.Normal)
        presentBtn.addTarget(self, action:Selector("presentBtn:"), forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(presentBtn)
    }

    func presentBtn(sender:UIButton) {
        let presentVC: InteractiveViewControllerTwo = InteractiveViewControllerTwo()
        transitionDelegate.gestureRecognizer = nil
        transitionDelegate.targetEdge = UIRectEdge.Right
        presentVC.transitioningDelegate = transitionDelegate
        self.presentViewController(presentVC, animated:true, completion:nil)
    }
}
