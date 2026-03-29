//
//  CryptoPassUITestsLaunchTests.swift
//  CryptoPassUITests
//
//  Created by Kristina Mateva on 23.12.24.
//

import XCTest

final class CryptoPassUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        // Спиране при грешка
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Проверете дали ContentView се зарежда
        XCTAssertTrue(app.staticTexts["Welcome to CryptoPass"].exists, "Welcome screen not found")
        
        // Добавете стъпки след стартиране, ако е необходимо, напр. влизане или навигация.
        let screenshot = app.screenshot()
        let attachment = XCTAttachment(screenshot: screenshot)
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
