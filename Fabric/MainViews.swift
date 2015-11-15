//
//  ViewController.swift
//  Fabric
//
//  Created by Tyler Darby on 11/11/15.
//  Copyright © 2015 NCCA-FBLA. All rights reserved.
//

import UIKit
import Parse

class SplashView: UIViewController {

    @IBOutlet weak var splashImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
	
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
		
        // Move the icon away.
		if (PFUser.currentUser() == nil) {
			UIView.animateWithDuration(1, delay: 0.6, options: [.CurveEaseInOut], animations: {self.splashImage.center.y -= self.view.bounds.height }, completion: {Bool in self.performSegueWithIdentifier("welcomeScreen", sender: self)})
		}
    }
}

/*
	-- WelcomeScreen--

	This is the welcome screen view. This view is defaulted to if there is no existing session/user data stored.
*/

class WelcomeScreen: UIViewController {
    
    @IBAction func CreditsGesture(sender: AnyObject) {
        performSegueWithIdentifier("credits", sender: self)
    }
	
    @IBOutlet weak var WelcomeLabel: UILabel!
    @IBOutlet weak var signUp: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Make the UI Pretty.
        self.WelcomeLabel.font = UIFont(name: "ThirstyScriptExtraboldDemo", size: 24)
        self.signUp.layer.cornerRadius = 10
        self.loginButton.layer.cornerRadius = 10
		
		// Shadows!
        self.loginButton.layer.shadowColor = UIColor.lightGrayColor().CGColor
        self.loginButton.layer.shadowOpacity = 1;
        self.loginButton.layer.shadowRadius = 1;
        self.loginButton.layer.shadowOffset = CGSizeMake(2.0, 2.0);
        self.signUp.layer.shadowColor = UIColor.lightGrayColor().CGColor
        self.signUp.layer.shadowOpacity = 1;
        self.signUp.layer.shadowRadius = 1;
        self.signUp.layer.shadowOffset = CGSizeMake(2.0, 2.0);
        
        UIApplication.sharedApplication().statusBarStyle = .Default
	
		
	}
}
