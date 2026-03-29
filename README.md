# CryptoPass for macOS

SwiftUI password manager project for macOS with Core Data persistence, encryption-oriented services, authentication flows, and a clean Xcode project layout prepared for public portfolio review.

### Features :
- [x] Login and registration flow
- [x] Password list and detail views
- [x] Add password workflow
- [x] Core Data storage
- [x] Encryption services
- [x] Biometric authentication hooks
- [x] Firebase integration layer
- [x] Unit tests
- [x] UI tests

# Quick View
#### Login + Password Management
The project includes SwiftUI screens for login, registration, password listing, password details, and add-password workflows.

#### Core Data + Services
The codebase includes Core Data entities, a persistence stack, encryption utilities, sync-related services, and profile storage logic.

#### Test Coverage
The repository includes unit tests for services and view models, along with a dedicated UI test target.

#### Screenshots
You can add app screenshots or short GIFs here later to match the presentation style of the original fork more closely.

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
