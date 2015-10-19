//
//  ViewController.swift
//  Modules
//
//  Created by Yuchao Chen on 15/10/19.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBAction func PopUpBtn(sender: UIButton) {
        self.performSegueWithIdentifier("poptonew", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "poptonew" {
            let vc = segue.destinationViewController
            let controller = vc.popoverPresentationController
            
            
            
            if controller != nil {
                controller?.delegate = self
                controller?.popoverLayoutMargins  = UIEdgeInsetsMake(200, 200, 0, 0)
                
            }
            
        }
    
    }

    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
}

