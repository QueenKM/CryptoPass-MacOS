//
//  Password.swift
//  CryptoPass
//
//  Created by Kristina Mateva on 24.12.24.
//

import Foundation

struct PasswordModel: Identifiable, Codable {
    var id: UUID = UUID()               // Уникален идентификатор
    var serviceName: String             // Име на услугата (напр. Gmail)
    var username: String                // Потребителско име
    var encryptedPassword: String       // Шифрована парола
    var category: PasswordCategory      // Категория (напр. Работа, Лични)
    var createdDate: Date = Date()      // Дата на създаване
    var notes: String?                  // Допълнителни бележки (по избор)
}

