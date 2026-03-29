//
//  PasswordChangeHistoryView.swift
//  CryptoPass
//
//  Created by Kristina Mateva on 24.12.24.
//


import SwiftUI

struct PasswordChangeHistoryView: View {
    var passwordID: UUID // Свързана парола

    var body: some View {
        VStack {
            Text("Change History")
                .font(.largeTitle)
                .padding()

            Text("Password ID: \(passwordID.uuidString)")
                .font(.subheadline)
                .padding()

            // Примерен списък с промени
            List {
                Text("Old password: abc123 → New password: def456")
                Text("Old password: def456 → New password: ghi789")
            }
        }
        .navigationTitle("Change History")
        .padding()
    }
}
