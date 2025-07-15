# ⚡ EV Charger Mobile App

<div align="center">
  <img src="https://img.shields.io/badge/Flutter-3.24.x-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter">
  <img src="https://img.shields.io/badge/Dart-3.5.x-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart">
  <img src="https://img.shields.io/badge/Riverpod-2.5.x-5DB85B?style=for-the-badge&logo=flutter&logoColor=white" alt="Riverpod">
  <img src="https://img.shields.io/badge/Android-Only-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android">
  <img src="https://img.shields.io/badge/Google Maps-API-4285F4?style=for-the-badge&logo=googlemaps&logoColor=white" alt="Google Maps">
  <img src="https://img.shields.io/badge/Gradle-8.7-02303A?style=for-the-badge&logo=gradle&logoColor=white" alt="Gradle">
</div>

<div align="center">
  <h3>🔋 Find • Charge • Journey</h3>
  <p><em>Your ultimate companion for electric vehicle charging</em></p>
</div>

---

## 🌟 About The Project

**EV Charger** is a beautifully crafted Android mobile application that transforms the electric vehicle charging experience. With an intuitive user interface and powerful features, we make finding and accessing charging stations effortless and enjoyable.

> 🚗 **"Empowering sustainable transportation, one charge at a time"**

### 🎯 What Makes Us Special

- **🎨 Friendly User Interface**: Clean, modern design with smooth animations
- **🔍 Smart Search**: Intelligent search system for charging stations
- **📱 Android Optimized**: Built specifically for Android devices
- **🏗️ Riverpod Architecture**: Robust state management for seamless performance

---

## ✨ Features That Drive Excellence

### � Core Charging Features
- **⚡ Station Discovery**: Find nearby charging stations with real-time availability
- **🔍 Advanced Search**: Search stations by name, location, or charging type
- **🎛️ Smart Filters**: Filter by power level, connector type, pricing, and amenities
- **� Precise Location**: GPS-powered location services with detailed station info

### 🗺️ Navigation & Planning
- **🗺️ Interactive Maps**: Seamless Google Maps integration with custom markers
- **�️ Route Planning**: Optimize your journey with strategic charging stops
- **📍 Real-time Navigation**: Turn-by-turn directions to your selected station

### � Personalized Experience
- **💖 Favorite Locations**: Mark and save your most-used charging stations
- **📚 Search History**: Access your previous searches and frequently visited stations
- **👤 User Accounts**: Secure account management with personalized preferences
- **📊 Usage Analytics**: Track your charging patterns and statistics

### 🔧 Additional Features
- **🔔 Smart Notifications**: Get alerts for charging completion and availability
- **📱 Offline Support**: Access saved locations even without internet
- **🌙 Dark Mode**: Eye-friendly interface for day and night usage

---

## 🛠️ Technology Stack

### 📱 Frontend Architecture
- **[Flutter 3.24.x](https://flutter.dev/)** - Cross-platform UI framework
- **[Dart 3.5.x](https://dart.dev/)** - Modern programming language
- **[Riverpod 2.5.x](https://riverpod.dev/)** - Reactive state management

### 🌐 Integration & Services
- **[Google Maps API](https://developers.google.com/maps)** - Interactive mapping and navigation
- **[Geolocator](https://pub.dev/packages/geolocator)** - Location services
- **[HTTP](https://pub.dev/packages/http)** - API communication

### 🔧 Development Tools
- **[Gradle 8.7](https://gradle.org/)** - Build automation
- **[Android Studio](https://developer.android.com/studio)** - IDE
- **[Git](https://git-scm.com/)** - Version control

### 📦 Key Dependencies
```yaml
dependencies:
  flutter: ^3.24.0
  riverpod: ^2.5.1
  flutter_riverpod: ^2.5.1
  google_maps_flutter: ^2.5.0
  geolocator: ^10.1.0
  shared_preferences: ^2.2.2
  http: ^1.1.0
```

---

## 🚀 Getting Started

### 📋 Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter SDK** (3.24.x or higher)
- **Android Studio** or **VS Code**
- **Android SDK** (API level 21 or higher)
- **JDK 11** or higher
- **Git**

### 🔧 Installation

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/ev_charger.git
cd ev_charger
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Set up Google Maps API**
   - Get an API key from [Google Cloud Console](https://console.cloud.google.com/)
   - Add the API key to `android/app/src/main/AndroidManifest.xml`

4. **Run the app**
```bash
flutter run
```

---

## 🏗️ Architecture Overview

This app follows the **Riverpod Architecture** pattern for clean, maintainable, and testable code:

```
lib/
├── main.dart                 # App entry point
├── config/                   # App configuration
├── features/                 # Feature modules
│   ├── auth/                # Authentication
│   ├── stations/            # Station management
│   ├── maps/                # Map integration
│   ├── favorites/           # Favorite stations
│   └── profile/             # User profile
├── repositories/            # Data layer
├── shared/                  # Shared components
│   ├── models/              # Data models
│   ├── services/            # API services
│   ├── utils/               # Utilities
│   └── widgets/             # Reusable widgets
└── routes/                  # Navigation
```

### 🔄 State Management Flow
```
UI Layer → Riverpod Providers → Repository → API/Local Storage
```

---

## 📱 Screenshots

<div align="center">
  <img src="assets/screenshots/home_screen.png" width="200" alt="Home Screen">
  <img src="assets/screenshots/map_view.png" width="200" alt="Map View">
  <img src="assets/screenshots/station_details.png" width="200" alt="Station Details">
  <img src="assets/screenshots/favorites.png" width="200" alt="Favorites">
</div>

---

## 🧪 Testing

Run the test suite:

```bash
# Unit tests
flutter test

# Integration tests
flutter test integration_test/
```

---

## 📈 Performance

- **Fast startup**: < 2 seconds cold start
- **Smooth animations**: 60 FPS on most devices
- **Memory efficient**: Optimized for low-end Android devices
- **Battery friendly**: Background location updates optimized

---

## 🤝 Contributing

We welcome contributions! Please follow these steps:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Commit** your changes (`git commit -m 'Add some amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing-feature`)
5. **Open** a Pull Request

### 📋 Development Guidelines

- Follow [Flutter style guide](https://docs.flutter.dev/development/tools/formatting)
- Write tests for new features
- Update documentation as needed
- Use conventional commits

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👥 Team

<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="https://github.com/denda0duong.png" width="100px;" alt=""/>
        <br />
        <sub><b>Your Name</b></sub>
        <br />
        <a href="https://github.com/denda0duong">👨‍💻</a>
      </td>
    </tr>
  </table>
</div>

---

## 🙏 Acknowledgments

- [Flutter Team](https://flutter.dev/community) for the amazing framework
- [Riverpod Community](https://riverpod.dev/) for excellent state management
- [Google Maps](https://developers.google.com/maps) for mapping services
- [Open Source Community](https://opensource.org/) for inspiration

---

<!-- ## 📞 Support

- 📧 Email: support@evcharger.com -->
<!-- - 💬 Discord: [Join our community](https://discord.gg/evcharger)
- 📱 Twitter: [@EVChargerApp](https://twitter.com/EVChargerApp) -->

<!-- --- -->

<div align="center">
  <p>Made with ❤️ by the EV Charger Team</p>
  <p>⚡ Charging the future, one app at a time ⚡</p>
</div>