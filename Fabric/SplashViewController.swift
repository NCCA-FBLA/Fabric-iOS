//
//  WelcomeViews.swift
//  Fabric
//
//  Created by Tyler Darby on 11/11/15.
//  Copyright © 2015 NCCA-FBLA. All rights reserved.
//

import UIKit
import Parse

class SplashViewController: UIViewController {
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
            // FIXME: Broken no matter which segue you choose.
            UIView.animateWithDuration(1, delay: 0.6, options: [.CurveEaseInOut], animations: {self.splashImage.center.y -= self.view.bounds.height }, completion: {Bool in self.performSegueWithIdentifier("showFromSplash", sender: self)})
		 }

    }
}


