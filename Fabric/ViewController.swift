//
//  ViewController.swift
//  Fabric
//
//  Created by Tyler Darby on 11/11/15.
//  Copyright © 2015 NCCA-FBLA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var splashImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        // Move the icon away.
        UIView.animateWithDuration(1, delay: 0.6, options: [.CurveEaseInOut], animations: {self.splashImage.center.y -= self.view.bounds.height }, completion: {Bool in self.performSegueWithIdentifier("welcomeScreen", sender: self)})
    }
}

class WelcomeScreen: UIViewController {
    
    
    @IBOutlet weak var WelcomeLabel: UILabel!
    
    @IBOutlet weak var signUp: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Make the UI Pretty.
        self.WelcomeLabel.font = UIFont(name: "ThirstyScriptExtraboldDemo", size: 24)
        self.signUp.layer.cornerRadius = 10
        self.loginButton.layer.cornerRadius = 10
        
        UIApplication.sharedApplication().statusBarStyle = .Default
    
    }
}

