# FlutterIntegrationExample
FlutterIntegrationExample is a project that demonstrates how to integrate a Flutter application into existing iOS and Android applications. The project is an aid to an article written here on the same topic. The project has four branches:

- starter - you'll want to check out this branch if you are starting the example project from the beginnng
- part-iii - you'll want to check out this branch if you are picking up on Part III of this series
- part-iv - you'll want to check out this branch if you are picking up on Part IV of this series
- final - the final state of the example project, after having followed all of the steps outlined in the articles
## Requirements
- Flutter installed on your device
- Cocoapods installed on your device
- Xcode installed on your device
- Another IDE besides Xcode (Android Studio recommended)
- An understanding of Swift, Kotlin, and Dart/Flutter
## Setup
To begin with the starter project, first clone this project to your machine. After cloning, cd into the project root and run `flutter create --template module FlutterIntegration_Flutter`. Now, cd into `FlutterIntegration_iOS` and run `pod install`. You should now be able to open up Xcode and launch the iOS project through `FlutterIntegration_iOS/FlutterIntegrationExample.xcworkspace`. You should also be able to open Android Studio and launch the Android project through `FlutterIntegration_Android`.
