//
//  FlashLightViewController.swift
//  Flashlight
//
//  Created by Chad Watts on 6/27/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class FlashLightViewController: UIViewController {
    
    @IBOutlet weak var onOffButton: UIButton!
    
    var isOn: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func OnButtonTapped(sender: AnyObject) {
        
        if isOn {
            
            self.isOn = false
            
            self.onOffButton.setTitle("on", forState: .Normal)
            self.onOffButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.view.backgroundColor = UIColor.blackColor()
            
        } else {
            
            if isOn {
                
                self.isOn = true
                
                self.onOffButton.setTitle("off", forState: .Normal)
                self.onOffButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
                self.view.backgroundColor = UIColor.whiteColor()
            }
        }
        
    }
    
}
