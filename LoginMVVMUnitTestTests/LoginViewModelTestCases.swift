//
//  LoginViewModelTestCases.swift
//  LoginMVVMUnitTestTests
//
//  Created by Hemal Patel on 2024-05-25.
//

import XCTest
@testable import LoginMVVMUnitTest

final class LoginViewModelTestCases: XCTestCase {

    var viewModel: LoginViewModel?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
       viewModel = LoginViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        viewModel = nil
    }
    
    func testInvalidEmail() {
        guard let viewModel else {
            XCTFail("View Model cannot be nil")
            return
        }
        
        let type = viewModel.validateLogin("", password: "")
        XCTAssertEqual(type, .emptyEmail, "Email should be empty")
        XCTAssertEqual(type.rawValue, "Email cannot be empty")
    }
    
    func testInvalidPassword() {
        guard let viewModel else {
            XCTFail("View Model cannot be nil")
            return
        }
        let type = viewModel.validateLogin("yogesh@gmail.com", password: "")
        XCTAssertEqual(type, .emptyPassword, "Password should be empty")
        XCTAssertTrue(type == .emptyPassword, "Password should be empty")
        
       /// XCTAssertFalse(<#T##expression: Bool##Bool#>, <#T##message: String##String#>)
       /// XCTAssertNil(<#T##expression: Any?##Any?#>, <#T##message: String##String#>)
       // XCTAssertNotNil(<#T##expression: Any?##Any?#>, <#T##message: String##String#>)
        
        // Length Of Password
        let type1 = viewModel.validateLogin("yogesh@gmail.com", password: "1234")
        XCTAssertEqual(type1, .lengthPassword, "Password should be more then 8 characters")
        XCTAssert(type1 == .lengthPassword) // TRUE
    }
    
    func testLoginSuccess() {
        guard let viewModel else {
            XCTFail("View Model cannot be nil")
            return
        }
        
        let type = viewModel.validateLogin("yogesh@gmail.com", password: "123456789")
        XCTAssertEqual(type, .success, "Login successful")
    }

}
