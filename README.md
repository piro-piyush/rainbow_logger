# 🌈 RainbowLogger

**RainbowLogger** is a colorful and expressive logger for Flutter and Dart apps.  
It adds clarity and visual appeal to your console output using emoji, colors, and timestamps —
perfect for stylish and structured debugging!

---

## ✨ Features

- ✅ Predefined log types: `error`, `success`, `info`, `warning`, `log`
- 🎨 ANSI terminal coloring mapped from Flutter `Color`s
- 🕒 Optional timestamps for better log tracing
- 🧩 Custom prefix, suffix, and color
- 🔁 Reusable logger instances with configurable settings
- 💻 Works with both Flutter and pure Dart CLI apps

---

## 🚀 Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  rainbow_logger: ^1.0.0
```

Then run:

```bash
flutter pub get
```

---

## 📦 Import

```dart
import 'package:rainbow_logger/rainbow_logger.dart';
```

---

## 🧪 Usage

### 🔹 Quick Static Logging

```dart
RainbowLogger.errorPrint("Something went wrong!");
RainbowLogger.successPrint("Operation completed successfully.");
RainbowLogger.infoPrint("User has entered the dashboard.");
RainbowLogger.warningPrint("This is just a warning.");
RainbowLogger.logPrint("Custom colored log",color: Colors.purple,prefix: "💡",suffix: "✔️",showTimestamp:true,);
```

### 🔸 Reusable Logger Instance

```dart
final logger = RainbowLogger(prefix: "🚀",suffix: "✅",color: Colors.cyan,showTimestamp: true,);
logger.print("Reusable logger in action!");
```

---

## 📘 Output Example (Styled)

```
[12:00:01] ❌ Something went wrong!
[12:00:01] ✅ Operation completed successfully.
[12:00:01] ℹ️ User has entered the dashboard.
[12:00:01] ⚠️ This is just a warning.
[12:00:01] 💡 Custom colored log ✔️
[12:00:01] 🚀 Reusable logger in action! ✅
```

> ✅ **Note:** ANSI colors appear correctly in terminals and IDE consoles like VS Code, IntelliJ, or
> Android Studio.

---

## 📁 File Structure

- `lib/rainbow_logger.dart` – Core logger class with static and instance logging
- `lib/rainbow_colors.dart` – Helper class for color-to-ANSI mapping

---

## 🧠 Why Use RainbowLogger?

- Easier debugging with structured and colorful logs
- Visual cues for better log scanning and error detection
- Simple to use and lightweight
- Fully customizable with emoji, colors, and timestamps

---

## 📄 License

MIT License © 2025 [Piyush Kumar](https://github.com/piro-piyush)

---

## 💡 Contributions

Pull requests are welcome!  
Feel free to open issues or suggest improvements.

---
