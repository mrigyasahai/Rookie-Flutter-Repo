# Dicee App

## Overview
- **Project Name:** Dicee
- **Description:** A simple Flutter app that simulates rolling two dice.

## Features
- Displays two dice images side by side.
- Rolls both dice to show new random values between 1 and 6 when either dice is tapped.
- Red background with matching app bar.

## Screenshots
- Demo video:

https://github.com/user-attachments/assets/5bff8d7b-71f1-4729-b643-f577859602fb

## Technologies Used
- **Framework:** Flutter
- **Language:** Dart

## Components
1. **Main Application (`main.dart`):**
   - Sets up the app with a `MaterialApp` and a `Scaffold`.
   - Defines the background color and app bar.

2. **DicePage Widget:**
   - A `StatefulWidget` managing the dice state.
   - Contains two dice images that change when tapped.

3. **State Management:**
   - Uses `setState` to update the UI when dice values change.

4. **Random Dice Roll:**
   - Utilizes the `Random` class to generate new dice values.

## How to Run
1. Clone the repository.
2. Run `flutter pub get` to install dependencies.
3. Use `flutter run` to start the app on an emulator or physical device.

## Assets
- Dice images are located in the `images/` directory.


