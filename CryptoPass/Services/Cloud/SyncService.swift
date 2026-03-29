//
//  SyncService.swift
//  CryptoPass
//
//  Created by Kristina Mateva on 24.12.24.
//

import Foundation

class SyncService {
    private let passwordStorage = PasswordStorage()

    func syncPasswords() {
        // Извличане на пароли от Core Data
        let passwords = passwordStorage.loadAll()
        
        // Логика за синхронизация с облачните услуги (например Firebase)
        for password in passwords {
            print("Syncing password for service: \(password.serviceName)")
            // Пример: Добавяне към Firebase
            // firebaseService.savePassword(password)
        }
    }
}
