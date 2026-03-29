//
//  CryptoPassUITests.swift
//  CryptoPassUITests
//
//  Created by Kristina Mateva on 23.12.24.
//

import XCTest

final class CryptoPassUITests: XCTestCase {

    override func setUpWithError() throws {
        // Винаги спирайте тестовете, ако възникне грешка
        continueAfterFailure = false
    }

    func testLoginFlow() throws {
        let app = XCUIApplication()
        app.launch()
        
        // Проверете дали сме на Login екрана
        XCTAssertTrue(app.textFields["Email"].exists, "Email text field not found")
        XCTAssertTrue(app.secureTextFields["Password"].exists, "Password text field not found")
        XCTAssertTrue(app.buttons["Login"].exists, "Login button not found")
        
        // Въведете данни за вход
        let emailTextField = app.textFields["Email"]
        emailTextField.tap()
        emailTextField.typeText("test@example.com")
        
        let passwordTextField = app.secureTextFields["Password"]
        passwordTextField.tap()
        passwordTextField.typeText("ValidPassword123")
        
        // Натиснете бутона за вход
        app.buttons["Login"].tap()
        
        // Проверете дали MainMenuView се зарежда
        XCTAssertTrue(app.staticTexts["Main Menu"].exists, "Failed to navigate to Main Menu")
    }

    func testAddPasswordFlow() throws {
        let app = XCUIApplication()
        app.launch()
        
        // Предположим, че вече сме логнати
        XCTAssertTrue(app.buttons["Add Password"].exists, "Add Password button not found")
        
        // Отидете на Add Password View
        app.buttons["Add Password"].tap()
        
        // Въведете данни за парола
        let serviceNameField = app.textFields["Service Name"]
        serviceNameField.tap()
        serviceNameField.typeText("Gmail")
        
        let usernameField = app.textFields["Username"]
        usernameField.tap()
        usernameField.typeText("user@gmail.com")
        
        let passwordField = app.secureTextFields["Password"]
        passwordField.tap()
        passwordField.typeText("StrongPassword123")
        
        // Натиснете бутона за запазване
        app.buttons["Save Password"].tap()
        
        // Проверете за успех съобщение
        XCTAssertTrue(app.staticTexts["Password saved successfully!"].exists, "Password save confirmation not found")
    }
}
