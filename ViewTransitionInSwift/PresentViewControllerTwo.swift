//
//  PresentViewControllerTwo.swift
//  ViewTransitionInSwift
//
//  Created by MiaoChao on 16/2/28.
//  Copyright © 2016年 MiaoChao. All rights reserved.
//

import UIKit

class PresentViewControllerTwo: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyanColor()
        
        let dismissBtn = UIButton()
        dismissBtn.frame = CGRectMake(100, 100, 100, 50)
        dismissBtn.setTitle("dismiss", forState: UIControlState.Normal)
        dismissBtn.addTarget(self, action: Selector("dismissBtn:"), forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(dismissBtn)
    }
    
    func dismissBtn(sender:UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
