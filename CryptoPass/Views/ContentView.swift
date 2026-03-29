//
//  ContentView.swift
//  CryptoPass
//
//  Created by Kristina Mateva on 23.12.24.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoggedIn: Bool = false // Проверка за влизане
    @State private var showBiometricPrompt: Bool = false // За FaceID/TouchID
    
    var body: some View {
        NavigationView {
            if isLoggedIn {
                MainMenuView()
            } else {
                VStack {
                    Text("Welcome to CryptoPass")
                        .font(.largeTitle)
                        .padding()
                    
                    // Логика за FaceID/TouchID
                    if showBiometricPrompt {
                        Button(action: authenticateWithBiometrics) {
                            HStack {
                                Image(systemName: "faceid")
                                Text("Login with FaceID")
                            }
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                        }
                        .padding()
                    }
                    
                    // Бутони за вход и регистрация
                    NavigationLink(destination: LoginView()) {
                        Text("Login")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .cornerRadius(8)
                    }
                    .padding()
                    
                    NavigationLink(destination: RegisterView()) {
                        Text("Register")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.orange)
                            .cornerRadius(8)
                    }
                    .padding()
                }
                .padding()
                .onAppear {
                    checkBiometricAvailability()
                }
            }
        }
    }
    
    // Проверка за наличност на FaceID/TouchID
    private func checkBiometricAvailability() {
        let biometricService = BiometricService()
        biometricService.authenticateUser { success, error in
            DispatchQueue.main.async {
                if success {
                    isLoggedIn = true
                } else {
                    showBiometricPrompt = true
                }
            }
        }
    }
    
    // Аутентикация с FaceID/TouchID
    private func authenticateWithBiometrics() {
        let biometricService = BiometricService()
        biometricService.authenticateUser { success, error in
            DispatchQueue.main.async {
                if success {
                    isLoggedIn = true
                } else {
                    // Можете да добавите съобщение за грешка
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
