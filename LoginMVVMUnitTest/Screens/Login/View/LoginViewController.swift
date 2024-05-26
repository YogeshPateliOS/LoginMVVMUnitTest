//
//  LoginViewController.swift
//  LoginMVVMUnitTest
//
//  Created by Hemal Patel on 2024-05-25.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    private let viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        let type = viewModel.validateLogin(emailField.text, password: passwordField.text)
        showAlert(type.rawValue)
    }

}
