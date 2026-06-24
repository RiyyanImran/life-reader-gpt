# LifeReaderGPT Mobile

Flutter mobile app matching the LifeReaderGPT web design — dark futuristic AI theme with glassmorphism, neon glows, and all 9 screens.

## Requirements

- [Flutter SDK](https://docs.flutter.dev/get-started/install) 3.x+
- Android Studio / Xcode (for emulators) or a physical device

## Run the app

```bash
cd mobile
flutter pub get
flutter run
```

### Android emulator
```bash
flutter emulators
flutter emulators --launch <emulator_id>
flutter run
```

### iOS simulator (Mac only)
```bash
open -a Simulator
flutter run
```

### Chrome (web preview)
```bash
flutter run -d chrome
```

## Screens

| Route | Screen |
|-------|--------|
| `/` | Home — hero cards, features, privacy, CTA |
| `/how-it-works` | 6-step timeline |
| `/sample-reading` | Sample readings + \$5 unlock |
| `/questions` | Question categories |
| `/success-stories` | Testimonials |
| `/disclaimer` | Legal disclaimer |
| `/my-readings` | Reading history |
| `/reading-results` | Accordion insights |
| `/questions-answers` | Chat-style Q&A |

## Design

- Background: `#050816`
- Cards: `#0A1025` with glass blur
- Primary purple: `#8B5CF6`
- Inter font via `google_fonts`
- Animated particle background
- Drawer navigation (hamburger menu)

## Project structure

```
lib/
  core/theme/     # Colors & theme
  data/           # Mock data
  screens/        # All pages
  widgets/        # Reusable UI components
  app.dart        # Router
  main.dart       # Entry point
```

## Build release

```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# iOS (Mac only)
flutter build ios --release
```
