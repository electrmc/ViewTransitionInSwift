//
//  InteractiveTransitioningDelegate.swift
//  ViewTransitionInSwift
//
//  Created by MiaoChao on 16/2/28.
//  Copyright © 2016年 MiaoChao. All rights reserved.
//

import UIKit

class InteractiveTransitioningDelegate: NSObject,UIViewControllerTransitioningDelegate {
    
    var gestureRecognizer: UIScreenEdgePanGestureRecognizer? = nil
    var targetEdge: UIRectEdge = .None
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return InteractiveAnimator(targetEdge: targetEdge)
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return InteractiveAnimator(targetEdge: targetEdge)
    }
    
    func interactionControllerForPresentation(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        if let gestureRecognizer = self.gestureRecognizer {
            return PercentDrivenInteractiveTransition(gestureRecognizer: gestureRecognizer, edgeForDragging: targetEdge)
        }
        return nil
    }
    
    func interactionControllerForDismissal(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        if let gestureRecognizer = self.gestureRecognizer {
            return PercentDrivenInteractiveTransition(gestureRecognizer: gestureRecognizer, edgeForDragging: targetEdge)
        }
        return nil
    }

}
