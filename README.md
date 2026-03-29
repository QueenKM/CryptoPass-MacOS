# CryptoPass MacOS

CryptoPass MacOS is a SwiftUI password manager project snapshot structured for portfolio use. It includes the app source, Core Data model, tests, and Xcode project files in a clean public repository layout.

## What is included

- SwiftUI app source under `CryptoPass/`
- Core Data entities and model files
- Unit tests in `CryptoPassTests/`
- UI tests in `CryptoPassUITests/`
- Xcode project files in `CryptoPass.xcodeproj`

## Notes

- The checked-in Core Data classes are used with manual model code generation.
- The real `GoogleService-Info.plist` is intentionally excluded from this public repository.
- A sample config file is included as `CryptoPass/GoogleService-Info.example.plist`.

## Local setup

1. Open `CryptoPass.xcodeproj` in Xcode.
2. Copy `CryptoPass/GoogleService-Info.example.plist` to `CryptoPass/GoogleService-Info.plist`.
3. Replace the placeholder Firebase values with your own project configuration.
4. Select the `CryptoPass` scheme.
5. Build or run from Xcode.

## Build note

This project was validated with an unsigned macOS build in Xcode 26.4. Running on a signed target may still require a valid Apple development certificate and team configuration.
