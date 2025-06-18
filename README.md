
# 🌈 RainbowLogger

[![Pub Version](https://img.shields.io/pub/v/rainbow_logger)](https://pub.dev/packages/rainbow_logger)
[![GitHub Repo stars](https://img.shields.io/github/stars/piro-piyush/rainbow_logger)](https://github.com/piro-piyush/rainbow_logger/stargazers)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

**RainbowLogger** is a vibrant and expressive logger for **Flutter** and **Dart CLI** applications.  
It enhances your debugging experience with visually distinct logs using emoji, colors, timestamps, and customization.

---

## ✨ Features

- ✅ Predefined log types: `error`, `success`, `info`, `warning`, `log`
- 🎨 ANSI terminal coloring mapped from Flutter `Color`s
- 🕒 Optional timestamps for clear traceability
- 💬 Emoji-based log labeling for instant recognition
- 🧩 Customizable prefix, suffix, and color
- 🔁 Reusable logger instances for consistent usage across files
- 💻 Works seamlessly in **Flutter**, **Dart CLI**, **VS Code**, **Android Studio**, and **IntelliJ**

---

## 🚀 Getting Started

### 📦 Installation

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  rainbow_logger: ^1.0.0
```

Then run:

```bash
flutter pub get
```

### 🔌 Import It

```dart
import 'package:rainbow_logger/rainbow_logger.dart';
```

---

## 🧪 Usage

### 🔹 Static Logging

Use predefined static methods for quick logging:

```dart
RainbowLogger.errorPrint("❌ Something went wrong!");
RainbowLogger.successPrint("✅ Operation completed successfully.");
RainbowLogger.infoPrint("ℹ️ User has entered the dashboard.");
RainbowLogger.warningPrint("⚠️ This is just a warning.");
RainbowLogger.logPrint(
  "💡 Custom colored log",
  color: Colors.purple,
  prefix: "💡",
  suffix: "✔️",
  showTimestamp: true,
);
```

### 🔸 Reusable Logger Instance

Create a custom logger with consistent behavior:

```dart
final logger = RainbowLogger(
  prefix: "🚀",
  suffix: "✅",
  color: Colors.cyan,
  showTimestamp: true,
);

logger.print("Reusable logger in action!");
```

---

## 🎯 Output Example

```
[12:00:01] ❌ Something went wrong!
[12:00:01] ✅ Operation completed successfully.
[12:00:01] ℹ️ User has entered the dashboard.
[12:00:01] ⚠️ This is just a warning.
[12:00:01] 💡 Custom colored log ✔️
[12:00:01] 🚀 Reusable logger in action! ✅
```

> ✅ **Note**: ANSI terminal colors render correctly in popular editors and consoles.

---

## 📁 File Structure

```
rainbow_logger/
├── lib/
│   ├── rainbow_logger.dart        # Core logger class
│   └── rainbow_colors.dart        # Color-to-ANSI mapping logic
├── test/
│   └── rainbow_logger_test.dart   # Test cases
├── README.md                      # You're reading it
├── CHANGELOG.md                   # Version updates
├── LICENSE                        # MIT License
└── pubspec.yaml                   # Package metadata
```

---

## 🧠 Why Choose RainbowLogger?

- 👀 **Visual Clarity**: Color-coded and emoji-marked logs improve readability.
- ⏱ **Traceability**: Timestamps make debugging across events much easier.
- 🧩 **Customization**: Full control over how your logs appear.
- 💡 **Lightweight & Simple**: No dependencies outside Flutter SDK.
- 🔄 **Reusable Configs**: Define logger instances with consistent formats.

---

## 🔗 See Also

Here are some similar or related packages you may want to explore:

- [logger](https://pub.dev/packages/logger) – A structured logger with pretty print and trees
- [ansicolor](https://pub.dev/packages/ansicolor) – For terminal ANSI styling
- [chalkdart](https://pub.dev/packages/chalkdart) – Chainable terminal styling, inspired by JavaScript's Chalk

---

## 🛠️ Contributing

Pull requests are warmly welcome!  
You can help improve:

- Logger output formatting
- Color configuration logic
- CLI utility extensions
- Documentation enhancements

Feel free to [open issues](https://github.com/piro-piyush/rainbow_logger/issues) or submit PRs!

---

## 📄 License

MIT License © 2025 [Piyush Kumar](https://github.com/piro-piyush)

---

## ☕ Support

If you found this package helpful, consider giving it a ⭐ on [GitHub](https://github.com/piro-piyush/rainbow_logger)!

---

Happy Logging! 🌈
