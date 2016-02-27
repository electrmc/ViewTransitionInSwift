//
//  PresentViewControllerOne.swift
//  ViewTransitionInSwift
//
//  Created by MiaoChao on 16/2/28.
//  Copyright © 2016年 MiaoChao. All rights reserved.
//

import UIKit

class PresentViewControllerOne: UIViewController {
    
    lazy var transitionDelegate:PresentTransitioningDelegate = PresentTransitioningDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "presentView"
        view.backgroundColor = UIColor.lightGrayColor()
        
        let presentBtn = UIButton()
        presentBtn.frame = CGRectMake(100, 100, 100, 50)
        presentBtn.setTitle("present", forState: UIControlState.Normal)
        presentBtn.addTarget(self, action:Selector("presentBtn:"), forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(presentBtn)
    }
    
    func presentBtn(sender:UIButton) {
        let presentVC: PresentViewControllerTwo = PresentViewControllerTwo()
        presentVC.transitioningDelegate = transitionDelegate
        self.presentViewController(presentVC, animated:true, completion:nil)
    }

}
