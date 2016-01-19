//
//  SignInViewController.swift
//  Fabric
//
//  Created by James Parsons on 1/12/16.
//  Copyright © 2016 NCCA-FBLA. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var twitterButton: UIButton!
    @IBOutlet weak var appLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the app nme font.
        self.appLabel.font = UIFont(name: "ThirstyScriptExtraboldDemo", size: 30)
        // Set the corner radius on the buttons.
        self.facebookButton.layer.cornerRadius = 5.0
        self.twitterButton.layer.cornerRadius = 5.0

        // Set up the background image.
        // Credit to Tyler for this beauty.
        let img = UIImage(named: "manhattan")?.tint(UIColor(colorLiteralRed: 221.0/255.0, green: 43.0/255.0, blue: 105/255.0, alpha: 175.0/255.0))
        let imageView = UIImageView(image: img!)
        imageView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: self.view.bounds.height*(16/9), height: self.view.bounds.height))
        imageView.center = CGPointMake(self.view.bounds.width/2, self.view.bounds.height/2)
        
        self.view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // TEMPORARY: Just go on to the next view.
    @IBAction func temporary(sender: UIButton) {
        performSegueWithIdentifier("showFromSignIn", sender: nil)
    }
    
}
