//
//  WelcomeViews.swift
//
//  --This view controller handles login and loading.
//  --App logic begins here.
//
//  Fabric
//
//  Created by Tyler Darby on 11/11/15.
//  Copyright © 2015 NCCA-FBLA. All rights reserved.
//

import UIKit
import Parse

/*
    -- SplashView --

    This is the animated loading screen that checks session data.
*/

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
    @IBOutlet weak var facebookLoginButton: UIButton!
    @IBOutlet weak var twitterLoginButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Make the UI Pretty.
        
        self.WelcomeLabel.font = UIFont(name: "ThirstyScriptExtraboldDemo", size: 30)
        self.facebookLoginButton.layer.cornerRadius = 25
        self.twitterLoginButton.layer.cornerRadius = 25
        
        
        // Background image.
        let img = UIImage(named: "manhattan")?.tint(UIColor(colorLiteralRed: 221.0/255.0, green: 43.0/255.0, blue: 105/255.0, alpha: 175.0/255.0))
        let imgview = UIImageView(image: img!)
        imgview.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: self.view.bounds.height*(16/9), height: self.view.bounds.height))
        imgview.center = CGPointMake(self.view.bounds.width/2, self.view.bounds.height/2)
        self.view.addSubview(imgview)
        self.view.sendSubviewToBack(imgview)
	
		
	}
    
}
