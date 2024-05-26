//
//  ValidationType.swift
//  LoginMVVMUnitTest
//
//  Created by Hemal Patel on 2024-05-25.
//

import Foundation

enum ValidationType: String {
    case emptyEmail = "Email cannot be empty"
    case emptyPassword = "Password cannot be empty"
    case lengthPassword = "Password should be more then 8 characters"
    case success = "Success"
}
