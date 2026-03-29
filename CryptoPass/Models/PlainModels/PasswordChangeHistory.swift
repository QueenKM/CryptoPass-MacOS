//
//  PasswordChangeHistory.swift
//  CryptoPass
//
//  Created by Kristina Mateva on 24.12.24.
//


import Foundation

struct PasswordChangeHistoryModel: Identifiable, Codable {
    var id: UUID = UUID()
    var passwordID: UUID               // Свързана парола
    var oldPassword: String            // Стара шифрована парола
    var newPassword: String            // Нова шифрована парола
    var changeDate: Date = Date()      // Дата на промяна
}
