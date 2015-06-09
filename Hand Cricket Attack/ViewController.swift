//
//  ViewController.swift
//  Hand Cricket Attack
//
//  Created by KARTHIK on 5/26/15.
//  Copyright (c) 2015 sam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    
     override func supportedInterfaceOrientations() -> Int {
    return Int(UIInterfaceOrientationMask.Portrait.toRaw())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func toplayviewpressed(sender: AnyObject) {
        let playview = self.storyboard?.instantiateViewControllerWithIdentifier("playview") as playViewController
        self.navigationController?.pushViewController(playview, animated: true)
        
    }
    
   
    
    @IBAction func tohelpviewpressed(sender: AnyObject) {
        let helpview = self.storyboard?.instantiateViewControllerWithIdentifier("helpview") as HelpViewController
        self.navigationController?.pushViewController(helpview, animated: true)
        
    }
    
    
    @IBAction func toruleviewpressed(sender: AnyObject) {
        let ruleview = self.storyboard?.instantiateViewControllerWithIdentifier("ruleview") as RuleViewController
        self.navigationController?.pushViewController(ruleview, animated: true)
        
    }
    
    @IBAction func toaboutviewpressed(sender: AnyObject) {
        let aboutview = self.storyboard?.instantiateViewControllerWithIdentifier("aboutview") as AboutViewController
        self.navigationController?.pushViewController(aboutview, animated: true)
        
    }

    
}


