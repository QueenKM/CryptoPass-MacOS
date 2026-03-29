//
//  UserProfileViewModel.swift
//  CryptoPass
//
//  Created by Kristina Mateva on 24.12.24.
//


import Foundation

class UserProfileViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var name: String?
    @Published var isPremiumUser: Bool = false

    func loadProfile() {
        // Заредете профила на потребителя от локално съхранение или Firebase
    }

    func updateProfile(name: String?) {
        self.name = name
        // Актуализирайте профила локално или в облака
    }
}
