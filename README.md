# Using APIs in Flutter

[![License: CC BY-NC](https://img.shields.io/badge/License-CC%20BY--NC-lightgrey.svg)](http://creativecommons.org/licenses/by-nc/4.0/)
[![Flutter](https://img.shields.io/badge/Flutter-Channel%20master%2C%203.10.0--18.0.pre.13-blue)](https://flutter.dev/docs/development/tools/sdk/releases)
[![Android](https://img.shields.io/badge/Android%20SDK-31.0.0--rc2-red)](https://developer.android.com/studio/releases/sdk-tools)
[![Xcode](https://img.shields.io/badge/Xcode-13.4.1-red)](https://developer.apple.com/xcode/)
[![Chrome](https://img.shields.io/badge/Chrome-Ready-green)](https://www.google.com/chrome/)
[![Android Studio](https://img.shields.io/badge/Android%20Studio-2021.2-green)](https://developer.android.com/studio)
[![VS Code](https://img.shields.io/badge/VS%20Code-1.78.2-green)](https://code.visualstudio.com/)

---

A Flutter app that demonstrates how to call and fetch data from an API. The app is compatible with Android, iOS, MacOS, and web platforms.

---

## Features

- [x] Model-View-Controler (MVC) Architecture
- [x] Call an API
- [x] Use query parameters

---

## Screenshots

![Home Screen](assets/Screenshot1.png)
![All Users Screen](assets/Screenshot2.png)
![Active Users Screen](assets/Screenshot3.png)

---

## Getting Started

Before getting started, add the following lines in the file: `./using_apis_in_flutter/macos/Runner/Release.entitlements`

```html
<dict>
  . . .
  <!-- Add this line -->
  <key>com.apple.security.network.client</key>
  <true />
  . . .
</dict>
```

Also, add the following lines in the file: `./using_apis_in_flutter/macos/Runner/DebugProfile.entitlements`

```html
<dict>
  . . .
  <!-- Add this line -->
  <key>com.apple.security.network.client</key>
  <true />
  . . .
</dict>
```

To get started with the app, follow these steps:

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/NiteshMethani/using_apis_in_flutter.git
   ```

2. Navigate to the project directory:

   ```bash
   cd using_apis_in_flutter
   ```

3. Install the dependencies:

   ```bash
   flutter pub get
   ```

4. Run the app:

   ```bash
   flutter run
   ```

---

## License

This project is licensed under the Creative Commons Attribution-NonCommercial 4.0 International License. This means that you are free to share and adapt the code in this repository under the following conditions:

- Attribution: You must give appropriate credit to the original author by providing a link to the original repository and indicating any changes you made.
- Non-Commercial: **You may not use the code for commercial purposes without obtaining explicit permission from the author.** Commercial purposes include, but are not limited to, selling the code, using it in a commercial product, or incorporating it into a project that generates revenue.

If you are interested in using this code for commercial purposes or have any other inquiries, please contact the author. Permission may be granted on a case-by-case basis, and in some cases, a royalty or licensing fee may be required.

To view a copy of the license, visit [http://creativecommons.org/licenses/by-nc/4.0/](http://creativecommons.org/licenses/by-nc/4.0/).

---

## Disclaimer

The assets used in this app, including images and videos, are sourced from publicly available platforms and are not owned by the authors.

By using this app, you acknowledge and agree that:

1. The assets used in this app are not the intellectual property of the authors.
2. Authors does not claim any ownership or rights over these assets.
3. The use of these assets in this app is solely for demonstration and educational purposes.
4. Author is not liable for any copyright infringements or legal violations arising from the use of these assets.
5. If you intend to use or redistribute these assets, you are responsible for obtaining the necessary permissions and complying with the respective copyright holders' terms and conditions.

Please note that authors does not endorse, validate, or take responsibility for the accuracy, legality, or appropriateness of the assets used in this app. Any concerns or inquiries regarding the assets should be directed to the original creators or copyright holders.

---
