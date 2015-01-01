//
//  SecondViewController.swift
//  CustomSegues
//
//  Created by Sam Wong on 31/12/2014.
//  Copyright (c) 2014 sam wong. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var message: NSString!
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "showFirstViewController")
        swipeGestureRecognizer.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(swipeGestureRecognizer)
        
        lblMessage.text = message
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func showFirstViewController() {
        self.performSegueWithIdentifier("FIRST_SEGUE_UNWIND", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "FIRST_SEGUE_UNWIND" {
            let firstViewController = segue.destinationViewController as FirstViewController
            firstViewController.lblMessage.text = "You just came back from the 2nd VC"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
