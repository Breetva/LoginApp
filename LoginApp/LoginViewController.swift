//
//  ViewController.swift
//  LoginApp
//
//  Created by Dmitry Pavlov on 03.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTF.autocorrectionType = .no
        passwordTF.isSecureTextEntry = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.loggedUsername = usernameTF.text!
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super .touchesBegan(touches, with: event)
//    }
    
    @IBAction func loginButtonPressed() {
        if usernameTF.text == "user" && passwordTF.text == "password" {
            return
        } else {
            showAlert(with: "Invalid login or password",
                      and: "Please, enter correct login or password")
        }
    }
    
    @IBAction func promptUsernamePressed() {
        showAlert(with: "Oops!", and: "Your name is 'user' 😉")
    }
    
    @IBAction func promptPasswordPressed() {
        showAlert(with: "Oops!",
                  and: "Your password is 'password' 😉")
    }
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let confirmButton = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(confirmButton)
        present(alert, animated: true)
    }
    
}

