//
//  AppDelegate.swift
//  CryptoPass
//
//  Created by Kristina Mateva on 23.12.24.
//

#if os(iOS) || os(visionOS)
import UIKit
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        // Конфигуриране на Firebase
        FirebaseApp.configure()
        return true
    }
}
#endif

#if os(macOS)
import AppKit
import FirebaseCore

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ notification: Notification) {
        // Конфигуриране на Firebase
        FirebaseApp.configure()
    }
}
#endif
