//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Dmitry Pavlov on 03.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var loggedUsernameLabel: UILabel!
    
    var loggedUsername: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        loggedUsernameLabel.text = "Hi, \(loggedUsername!)! 👋🏻"
    }

}
