//
//  PasswordListViewModel.swift
//  CryptoPass
//
//  Created by Kristina Mateva on 24.12.24.
//


import Foundation

class PasswordListViewModel: ObservableObject {
    @Published var passwords: [PasswordModel] = []
    private let passwordStorage = PasswordStorage()

    func fetchPasswords() {
        // Извличане на пароли от Core Data
        passwords = passwordStorage.loadAll()
    }
}

