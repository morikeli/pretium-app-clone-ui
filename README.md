# Pretium Mobile Clone App

## Mobile app screenshots
| Splash screen | Onboarding scrren |
| ------------------------- | ------------------------- |
| ![Screenshot from 2025-05-13 23-01-13](https://github.com/user-attachments/assets/cf6dde0c-c503-483e-931e-9d84b5039222) | ![Screenshot_20250512-213127](https://github.com/user-attachments/assets/f3983e1d-4c40-4f65-80b9-5bbcbb6e4277) |
| | |
| Login | Signup |
| ![Screenshot_20250512-213207](https://github.com/user-attachments/assets/82925b5b-a735-4704-b787-107001d89151) | ![Screenshot_20250512-213216](https://github.com/user-attachments/assets/87fb7be0-c9c4-44d4-9e53-d8faf5386280) |
| | |
| | |
| Forgot password | OTP screen |
| ![Screenshot from 2025-05-13 13-24-57](https://github.com/user-attachments/assets/6178c3a4-48f0-4300-9b5b-cb23c2b38347) | ![Screenshot from 2025-05-13 22-59-50](https://github.com/user-attachments/assets/86ab646e-7684-4408-995b-8692d74e8108) |
| | |
| | |
| Reset password | |
| ![Screenshot from 2025-05-13 13-45-25](https://github.com/user-attachments/assets/4a7b9294-927e-4c89-940b-378466ee0da0) | |
| | |

## Overview
The **Pretium Clone App** is a streamlined mobile application developed with Flutter, replicating the core user authentication flow found in the original Pretium app. It offers a clean and responsive UI, following modern design principles and ensuring a smooth user experience.  

### Core features
1. Onboarding Screens
    - Three-step onboarding experience introducing the app's purpose.
    - Implemented with the smooth_page_indicator package for elegant page indicators.
    - DRY and maintainable layout using controller-driven logic and reusable UI components.

2. User Authentication
    - **Login Screen**
    
      Secure and responsive form with validation and password visibility toggle.

    - **Signup Screen**
      
      Includes input validation, custom password fields, and terms & conditions acceptance logic with toast notifications (via toastification).

3. Password Management
    - **Forgot Password**
      
      Users can request a reset code with proper email validation and modal dialog confirmation.

    - **OTP Verification**
      
      Dedicated screen for entering the OTP code sent to the user’s email.

    - Reset Password
    
      Allows users to securely enter and confirm a new password. Includes validation to ensure password match.

### Tech Stack
- Framework: Flutter
- State Management: StatefulWidget (can be upgraded to Provider, GetX, etc.)
- Notifications: toastification for in-app toasts
- Form Validation: Custom validators and built-in Form widgets
- Reusable Components: DRY codebase with shared CustomTextField, validators, dialogs

### Status

This is a frontend-only clone focusing on the user interface and flow. Backend integration, persistent auth, and user data management can be added to make it fully functional.

## Developer instructions
---
**NOTE**: 
* To run this project, you **MUST** install Flutter SDK on your machine. Refer to [Flutter's documentation](https://docs.flutter.dev/get-started/install) and follow a step-by-step guide on how you can install Flutter SDK on your OS.

* Make sure you have installed Android Studio or a text editor of your choice - VS Code or XCode.

* Make sure your machine supports virtualization - required to run an emulator. If it doesn't, don't worry, you can install `scrcpy` on your machine or use Android Studio's `mirror device` feature.

**Scrcpy Installation guide** 
* [Install scrcpy on Windows](https://github.com/Genymobile/scrcpy/blob/master/doc/windows.md)
* [Install scrcpy on Linux](https://github.com/Genymobile/scrcpy/blob/master/doc/linux.md)
* [Install scrcpy on MacOS](https://github.com/Genymobile/scrcpy/blob/master/doc/macos.md)

---


#### Installation guide for developers

1. Git clone

Clone this repository by opening your terminal/CMD and change the current working directory to Desktop - use `cd Desktop` command.
```bash
    $ cd Desktop
    $ git clone https://github.com/morikeli/pretium-app-clone-ui.git
```

2. Open the cloned repository on your text editor and run this command:
```bash
    $ flutter run
```
3. Make sure you have a very strong internet connection so that the necessary gradle files can be downloaded. These files are necessary to build the project `apk` file.

---
**Keep in mind**:
* When building the application for the first time, it may take 10 - 15 minutes to finish the installation and build process.
* When running the application using the `flutter run` command, it may take atleast a minute to install the build files on a physical device.
---


## Contributor expectations
Incase of a bug or you wish to make a contribution, create a new branch using the git command `git checkout -b <name of your branch>` and create a pull request. Wait for review.

You can also open an issue using the `Issues` tab. The reported issue will be reviewed and a solution may be provided.


## Request
Don't forget to star the repo 🌟😉


## Known issues
The app is still under development. More features will be added with time.
