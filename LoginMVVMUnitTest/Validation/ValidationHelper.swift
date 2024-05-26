//
//  ValidationHelper.swift
//  LoginMVVMUnitTest
//
//  Created by Hemal Patel on 2024-05-25.
//

import Foundation

final class ValidationHelper {
    
    func validateEmail(_ email: String?) -> ValidationType {
        guard let email, !email.isEmpty else {
            return .emptyEmail
        }
        
        return .success
    }
    
    func validatePassword(_ password: String?) -> ValidationType {
        guard let password, !password.isEmpty else {
            return .emptyPassword
        }
        
        guard password.count > 8 else {
            return .lengthPassword
        }
        
        return .success
    }
    
    func validateLogin(_ email: String?, password: String?) -> ValidationType {
        let emailType = validateEmail(email)
        let passwordType = validatePassword(password)
        
        if emailType != .success {
            return emailType
        }else if passwordType != .success {
            return passwordType
        }else {
            return .success
        }
    }
}
