//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Dmitry Pavlov on 03.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var loggedUser = ""
    
    private let primaryColor = UIColor(
        red: 43/255,
        green: 155/255,
        blue: 255/255,
        alpha: 1
    )
    
    private let secondaryColor = UIColor(
        red: 43/255,
        green: 255/255,
        blue: 136/255,
        alpha: 1
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVertivalGradientLayer(topColor: primaryColor,
                                      bottomColor: secondaryColor)
        welcomeLabel.text = "Welcome, \(loggedUser)!"
    }

}

// MARK: - Set background gradient
extension UIView {
    func addVertivalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
