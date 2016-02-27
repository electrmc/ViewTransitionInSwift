//
//  PresentTransitioningDelegate.swift
//  ViewTransitionInSwift
//
//  Created by MiaoChao on 16/2/28.
//  Copyright © 2016年 MiaoChao. All rights reserved.
//

import UIKit

class PresentTransitioningDelegate: NSObject,UIViewControllerTransitioningDelegate {
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return PresentAnimator()
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return PresentAnimator()
    }
}
