//
//  MainViewController.swift
//  Fabric
//
//  Created by James Parsons on 1/19/16.
//  Copyright © 2016 NCCA-FBLA. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    @IBOutlet weak var menuButtonItem: UIBarButtonItem!
    @IBOutlet weak var searchButtonItem: UIBarButtonItem!
    @IBOutlet weak var refreshButtonItem: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.barTintColor = UIColor(red: 233.0/255.0, green: 30.0/255.0, blue: 99.0/255.0, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
