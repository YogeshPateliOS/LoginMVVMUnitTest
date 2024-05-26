//
//  AlertController+UIViewController.swift
//  LoginMVVMUnitTest
//
//  Created by Hemal Patel on 2024-05-25.
//

import UIKit

extension UIViewController {
    
    func showAlert(_ message: String) {
        let alertController = UIAlertController(
            title: "Alert",
            message: message,
            preferredStyle: .alert
        )
        let ok = UIAlertAction(title: "Okay", style: .default)
        alertController.addAction(ok)
        present(alertController, animated: true)
    }
    
}
