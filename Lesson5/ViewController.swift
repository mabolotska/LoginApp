//
//  ViewController.swift
//  Lesson5
//
//  Created by Maryna Bolotska on 07/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    var text = "Hello"
    
    @IBOutlet weak var loginLabel: UITextField!
    
    
    @IBOutlet weak var passwordLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func loginButton(_ sender: UIButton) {
        guard let username = loginLabel.text, !username.isEmpty, username == "User" else {
            showAlert(title: "Hello", text: "Username is wrong")
                return
            }

            guard let password = passwordLabel.text, !password.isEmpty else {
                // show an error message to the user that password is required
                return
            }

            if password == "123" && username == "User" {
                performSegue(withIdentifier: "toSecond", sender: self)
                
            } else {
                showAlert(title: "Hello", text: "Wrong password")
            }
        
    }
    
    @IBAction func forgotLoginButton(_ sender: UIButton) {
       showAlert(title: "Hello", text: "Your login is User")
    }
    
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        showAlert(title: "Hello", message: "Your password is 123")
    }
    
    func showAlert(title: String, text: String) {
        let alert = UIAlertController(title: title, message: text, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
   
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {}
}

extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "ok", style: .default) { _ in
            self.loginLabel.text = "User"
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
