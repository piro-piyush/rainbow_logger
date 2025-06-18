## [0.0.2] - 2025-06-18

### Changed
- Updated README and documentation for better clarity and examples.
- Improved usage instructions for both static and instance logging methods.

---

## [0.0.1] - 2025-06-18

### Added
- Initial release of `rainbow_logger`.
- Support for colorful terminal logging using ANSI escape codes.
- `RainbowLogger` class with customizable prefix, suffix, color, and timestamp options.
- Static methods for:
  - `errorPrint` (❌),
  - `successPrint` (✅),
  - `infoPrint` (ℹ️),
  - `warningPrint` (⚠️),
  - `logPrint` (📝).
- Built-in ANSI color mapping via the `RainbowColors` helper class.
- Works with both Flutter and pure Dart CLI apps.
- Includes example usage and test cases for easy integration and verification.
