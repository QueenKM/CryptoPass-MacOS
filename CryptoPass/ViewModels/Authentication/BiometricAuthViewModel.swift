//
//  BiometricAuthViewModel.swift
//  CryptoPass
//
//  Created by Kristina Mateva on 24.12.24.
//


import Foundation

class BiometricAuthViewModel: ObservableObject {
    @Published var isAuthenticated: Bool = false
    private let biometricService = BiometricService()

    func authenticateUser() {
        biometricService.authenticateUser { [weak self] success, error in
            DispatchQueue.main.async {
                if success {
                    self?.isAuthenticated = true
                } else {
                    self?.isAuthenticated = false
                }
            }
        }
    }
}
