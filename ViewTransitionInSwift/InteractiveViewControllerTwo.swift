//
//  InteractiveViewControllerTwo.swift
//  ViewTransitionInSwift
//
//  Created by MiaoChao on 16/2/28.
//  Copyright © 2016年 MiaoChao. All rights reserved.
//

import UIKit

class InteractiveViewControllerTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyanColor()
        
        let dismissBtn = UIButton()
        dismissBtn.frame = CGRectMake(100, 200, 100, 50)
        dismissBtn.setTitle("dismiss", forState: UIControlState.Normal)
        dismissBtn.addTarget(self, action: Selector("dismissBtn:"), forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(dismissBtn)
        
        let gesture: UIScreenEdgePanGestureRecognizer = UIScreenEdgePanGestureRecognizer()
        gesture.edges = UIRectEdge.Left
        gesture.addTarget(self, action: Selector("gestureRecognizeDidUpdate:"))
        view.addGestureRecognizer(gesture)
    }

    func gestureRecognizeDidUpdate(gesture:UIScreenEdgePanGestureRecognizer) {
        if gesture.state == UIGestureRecognizerState.Began {
            if let transitionDelegate = self.transitioningDelegate as? InteractiveTransitioningDelegate {
                if gesture.isKindOfClass(UIScreenEdgePanGestureRecognizer) {
                    transitionDelegate.gestureRecognizer = gesture
                } else {
                    transitionDelegate.gestureRecognizer = nil
                }
                transitionDelegate.targetEdge = UIRectEdge.Left
            }
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    func dismissBtn(sender:UIButton) {
        if let transitionDelegate = self.transitioningDelegate as? InteractiveTransitioningDelegate {
            transitionDelegate.gestureRecognizer = nil
            transitionDelegate.targetEdge = UIRectEdge.Left
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
