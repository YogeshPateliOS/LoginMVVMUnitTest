//
//  LoginViewModel.swift
//  LoginMVVMUnitTest
//
//  Created by Hemal Patel on 2024-05-25.
//

import Foundation

final class LoginViewModel {
    
    private let helper = ValidationHelper()
    
    func validateLogin(_ email: String?, password: String?) -> ValidationType {
        helper.validateLogin(email, password: password)
    }
    
}
