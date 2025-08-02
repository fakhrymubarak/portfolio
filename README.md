# Fakhry Mubarak - Portfolio

A modern, responsive portfolio website built with Flutter Web showcasing Fakhry Mubarak's professional experience, projects, and skills as an Android Developer.

## 🚀 Live Demo

[Portfolio Website](https://fakhrymubarak.github.io/flutter-multiplatform/pages)

## 📱 Features

- **Responsive Design**: Optimized for desktop, tablet, and mobile devices
- **Modern UI**: Clean, professional design with smooth scrolling and animations
- **Multi-platform**: Built with Flutter for web, Android, and iOS compatibility
- **Interactive Sections**: 
  - Introduction with personal branding
  - Project showcase with detailed descriptions
  - Professional experience timeline
  - Contact information and social links
- **Performance Optimized**: Fast loading with optimized assets and smooth scrolling behavior

## 🛠️ Tech Stack

### Core Framework
- **Flutter**: 3.6.0+ (Multi-platform development)
- **Dart**: ^3.6.0

### State Management
- **Provider**: ^6.1.2 (State management and dependency injection)

### UI & Styling
- **Google Fonts**: ^6.2.1 (Typography)
- **Flutter SVG**: ^2.0.16 (Vector graphics support)
- **Material Design**: Built-in Flutter widgets

### Utilities
- **URL Launcher**: ^6.3.1 (External link handling)

### Development Tools
- **Flutter Lints**: ^5.0.0 (Code quality and best practices)

## 📁 Project Structure

```
lib/
├── core/
│   └── ui/
│       ├── scroll/
│       │   └── smooth_scroll_behaviour.dart
│       └── text/
│           └── gradient_text_widget.dart
├── themes/
│   ├── resources/
│   │   ├── assets.dart
│   │   ├── resource.dart
│   │   └── strings.dart
│   ├── styles/
│   │   ├── app_colors.dart
│   │   ├── app_themes.dart
│   │   └── text_styles.dart
│   ├── themes.dart
│   └── values/
│       └── app_size.dart
├── ui/
│   ├── model/
│   │   ├── experience_section_ui.dart
│   │   ├── footer_section_ui.dart
│   │   ├── home_section_ui.dart
│   │   ├── navigation_bar_section_ui.dart
│   │   └── project_section.dart
│   └── pages/
│       └── dashboard/
│           ├── components/
│           │   └── custom_background_section_widget.dart
│           ├── portfolio_web_page_v1.dart
│           └── sections/
│               ├── experience/
│               ├── footer/
│               ├── intro/
│               └── projects/
└── utils/
    ├── constant.dart
    └── ui_utils.dart
```

## 🎯 Key Sections

### 1. Introduction Section
- Personal greeting and name highlighting
- Professional title and description
- Profile image
- Tech stack showcase with icons

### 2. Projects Section
Showcases major projects including:
- **MyTelkomsel**: Android app with 100M+ downloads
- **Alkhairaat**: Educational platform
- **Chakra Loyalty**: Rewards system
- **HRESS CRM**: Employee self-service app
- **Lifelog**: Personal journaling app

### 3. Experience Section
Professional timeline including:
- **PHINCON**: Android Developer for MyTelkomsel (2023-Present)
- **Bangkit Academy**: Mobile Development Instructor (2024)
- **PT. Cakra Radha Mustika**: Software Engineer (2022-2023)

### 4. Footer Section
Contact information and social media links

## 🚀 Getting Started

### Prerequisites
- Flutter SDK 3.6.0 or higher
- Dart SDK 3.6.0 or higher

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/fakhrymubarak/flutter-multiplatform.git
   cd flutter-multiplatform
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   # For web development
   flutter run -d chrome
   
   # For Android
   flutter run -d android
   
   # For iOS
   flutter run -d ios
   ```

### Building for Production

```bash
# Build for web
flutter build web

# Build for Android
flutter build apk

# Build for iOS
flutter build ios
```

## 🎨 Design Features

- **Responsive Layout**: Adapts to different screen sizes
- **Smooth Scrolling**: Custom scroll behavior for better UX
- **Gradient Text**: Eye-catching text effects
- **Professional Color Scheme**: Consistent branding
- **Optimized Assets**: Multi-resolution images for different devices

## 📱 Platform Support

- ✅ **Web**: Fully responsive with PWA capabilities
- ✅ **Android**: Native Android app
- ✅ **iOS**: Native iOS app

## 🔧 Configuration

### Assets
The project includes:
- Multi-resolution images (1.5x, 2x, 3x, 4x)
- SVG icons for light and dark themes
- Background images and project screenshots

### Themes
- Light and dark theme support
- Custom color schemes
- Typography with Google Fonts
- Responsive sizing utilities

## 🤝 Contributing

This is a personal portfolio project, but suggestions and feedback are welcome!

## 📄 License

This project is private and not intended for distribution.

## 👨‍💻 About the Developer

**Fakhry Mubarak** is an Android Developer with 3+ years of experience in mobile app development. Specialized in Kotlin, Java, and Flutter, with expertise in building scalable applications following clean architecture principles and SOLID design patterns.

### Key Skills
- **Mobile Development**: Android (Kotlin/Java), Flutter
- **Architecture**: Clean Architecture, MVVM, MVP
- **Tools**: Android Studio, VS Code, Git
- **Platforms**: Google Play Store, Web Development

---

*Built with ❤️ using Flutter*