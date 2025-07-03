# Flutter Riverpod User Management App

A simple Flutter application that demonstrates user management using **Riverpod 2.x**, featuring:

## 📱 Features

- View a list of users (fetched from API)
- Add a new user with `name` and `job`
- Pull-to-refresh to reload users
- Error & loading UI states handled
- Clean and modular code structure

## 🛠️ Tech Stack

| Layer             | Tool/Library                  |
|------------------|-------------------------------|
| UI               | Flutter (Material 3)          |
| State Management | Riverpod 2.0+ |
| Networking       | `http` package                |
| JSON Model       | Freezed + `json_serializable` |
| Architecture     | MVVM             |

## 🗂 Folder Structure

```bash
lib/
├── data/
│   ├── api/               # API calls
│   ├── model/             # Freezed models
├── repository/            # Abstraction over APIs
├── presentation/
│   ├── screens/           # UI Screens
│   ├── widgets/           # Reusable Widgets
│   ├── providers/         # Riverpod providers
```

## How To Run This Project Locally

- clone the repo using the link (https://github.com/Amer15/flutter-riverpod-assignment.git)
- navigate to the project and open in VS Code or any other preferred code editor
- open terminal and run `flutter pub get` to install dependencies
- finally run the project on emulator or real device connected to test 
