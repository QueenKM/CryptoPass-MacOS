# CryptoPass for macOS

SwiftUI password manager project for macOS with Core Data persistence, encryption-oriented services, authentication flows, and a clean Xcode project layout prepared for public portfolio review.

### Features :
- [x] Authentication flow
- [x] Password list and detail screens
- [x] Add password flow
- [x] Core Data persistence
- [x] Encryption service layer
- [x] Biometric service integration
- [x] Firebase service integration hooks
- [x] Unit tests
- [x] UI tests

# Quick View
#### Authentication + Password Management
Portfolio source snapshot includes SwiftUI screens for login, registration, password listing, password details, and add-password flows.

#### Core Data + Services
The project includes Core Data entities, a persistence stack, encryption utilities, sync-oriented services, and profile storage logic.

#### Test Coverage
The repository includes unit tests for services and view models, plus UI test targets in the Xcode project.

# Project Structure
- `CryptoPass/` contains the SwiftUI app source, models, services, view models, views, and assets.
- `CryptoPassTests/` contains unit tests.
- `CryptoPassUITests/` contains UI test targets.
- `CryptoPass.xcodeproj/` contains the Xcode project and Swift Package Manager resolution files.

# Local setup
1. Open `CryptoPass.xcodeproj` in Xcode.
2. Copy `CryptoPass/GoogleService-Info.example.plist` to `CryptoPass/GoogleService-Info.plist`.
3. Replace the placeholder Firebase values with your own configuration.
4. Select the `CryptoPass` scheme.
5. Build or run from Xcode.

# Notes
- The real `GoogleService-Info.plist` is intentionally excluded from this public repository.
- A sample config file is included as `CryptoPass/GoogleService-Info.example.plist`.
- The checked-in Core Data classes are used with manual model code generation.
- The project was validated with an unsigned macOS build in Xcode 26.4.
- Running the app with signing enabled may still require a valid Apple development certificate and team configuration.

# License
This repository is available under the MIT license. See the `LICENSE` file for details.
