//
//  ViewController.swift
//  AniFun
//
//  Created by Chatterjee, Snigdhaman on 31/12/15.
//  Copyright © 2015 Chatterjee, Snigdhaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pikaPika: UIImageView!
    var timer = NSTimer()
    var count = 1
    var state = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button(sender: AnyObject) {
        
        if state {
            timer.invalidate()
            state = false
        }
        else {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.2, target: self, selector: Selector("updateImage"), userInfo: nil, repeats: true)
            state = true
        }
    }

    func updateImage() {
        
        if count == 2 {
            count = 1
        }
        else if count == 1 {
            count = 2
        }
        pikaPika.image = UIImage(named: "pika\(count)")
        
    }
    
    
    
   /* override func viewDidLayoutSubviews() {
        
        pikaPika.center = CGPointMake(pikaPika.center.x - 200, pikaPika.center.y)
        pikaPika.alpha = 0
        //pikaPika.frame = CGRectMake(-200, pikaPika.center.y - 200, 0, 0)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        UIView.animateWithDuration(5) { () -> Void in
            
            self.pikaPika.center = CGPointMake(self.pikaPika.center.x + 200, self.pikaPika.center.y)
            self.pikaPika.alpha = 1
            //self.pikaPika.frame = CGRectMake(self.pikaPika.center.x+300, self.pikaPika.center.y - 200, 200, 200)
            
        }
        
    } */


}

