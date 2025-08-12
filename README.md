TodoList (SwiftUI + Firebase)
A minimal SwiftUI to-do list app integrated with Firebase Authentication and Cloud Firestore.
It demonstrates basic email/password authentication and real-time CRUD operations for tasks.

✨ Features
User registration and login via Email/Password (Firebase Auth)
Create / edit / delete tasks (CRUD)
Real-time synchronization with Cloud Firestore
Data persistence and offline support

🛠 Tech Stack
Swift, SwiftUI
Firebase: Authentication, Cloud Firestore
Architecture: (specify if MVVM, MVC, etc.)

🚀 Installation & Setup
1. Clone the repository git clone https://github.com/55kt/TodoListFirebase.git
2. Open the project in Xcode (.xcodeproj or .xcworkspace if using packages).
3. Set up Firebase: Go to Firebase Console, create a new project.
Add an iOS app (use your Xcode Bundle ID).
Enable Authentication → Email/Password.
Create a Cloud Firestore database (in production or test mode).
4.Download GoogleService-Info.plist. Add it to your iOS target (check “Add to targets” in Xcode).
5. If using Swift Package Manager: File → Packages → Resolve Package Versions.
6. Run the app (⌘ + R).
