//
//  UserProfile.swift
//  CryptoPass
//
//  Created by Kristina Mateva on 24.12.24.
//


import Foundation

struct UserProfileModel: Codable {
    var id: UUID = UUID()
    var email: String                  // Имейл на потребителя
    var name: String?                  // Име на потребителя (по избор)
    var profilePictureURL: String?     // URL към профилната снимка
    var isPremiumUser: Bool = false    // Статус на премиум потребител
}
