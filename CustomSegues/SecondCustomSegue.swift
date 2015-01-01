//
//  SecondCustomSegue.swift
//  CustomSegues
//
//  Created by Sam Wong on 31/12/2014.
//  Copyright (c) 2014 sam wong. All rights reserved.
//

import UIKit

class SecondCustomSegue: UIStoryboardSegue {
   override func perform() {
        var firstVCView = sourceViewController.view as UIView!
        var thirdVCView = destinationViewController.view as UIView!
    
        let window = UIApplication.sharedApplication().keyWindow
        window?.insertSubview(firstVCView, aboveSubview: thirdVCView)
    
        thirdVCView.transform = CGAffineTransformScale(thirdVCView.transform, 0.001, 0.001)
    
//    TransformScale(thirdVCView.transform, 0.001, 0.001)

    
    }
}
