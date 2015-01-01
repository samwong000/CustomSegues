//
//  FirstCustomSegueUnwind.swift
//  CustomSegues
//
//  Created by Sam Wong on 31/12/2014.
//  Copyright (c) 2014 sam wong. All rights reserved.
//

import UIKit

class FirstCustomSegueUnwind: UIStoryboardSegue {
   
    override func perform() {
        var secondVCView = self.sourceViewController.view as UIView!
        var firstVCView = self.sourceViewController.view as UIView!
        
        let screenHeight = UIScreen.mainScreen().bounds.size.height
        
        let window = UIApplication.sharedApplication().keyWindow
        window?.insertSubview(firstVCView, aboveSubview: secondVCView)
        
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            firstVCView.frame = CGRectOffset(firstVCView.frame, 0.0, screenHeight)
            secondVCView.frame = CGRectOffset(secondVCView.frame, 0.0, screenHeight)
        }) { (Finished) -> Void in
            self.sourceViewController.dismissViewControllerAnimated(false, completion: nil)
        }
    }
}
