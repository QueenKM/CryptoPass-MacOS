//
//  AddPasswordViewModel.swift
//  CryptoPass
//
//  Created by Kristina Mateva on 24.12.24.
//

import SwiftUI

struct AddPasswordView: View {
    @StateObject private var viewModel = AddPasswordViewModel()

    var body: some View {
        VStack {
            // Поле за името на услугата
            TextField("Service Name", text: $viewModel.serviceName)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)

            // Поле за потребителско име
            TextField("Username", text: $viewModel.username)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)

            // Поле за парола
            SecureField("Password", text: $viewModel.password)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)

            // Избор на категория
            Picker("Category", selection: $viewModel.selectedCategory) {
                ForEach(PasswordCategory.allCases, id: \.self) { category in
                    Text(category.rawValue).tag(category)
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)

            // Записване на паролата
            Button("Save Password") {
                viewModel.savePassword()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)

            // Показване на съобщение за успех или грешка
            if !viewModel.successMessage.isEmpty || !viewModel.errorMessage.isEmpty {
                Text(!viewModel.successMessage.isEmpty ? viewModel.successMessage : viewModel.errorMessage)
                    .foregroundColor(!viewModel.successMessage.isEmpty ? .green : .red)
                    .padding()
            }
        }
        .padding()
    }
}
