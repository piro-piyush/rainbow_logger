part of 'rainbow_logger.dart';

class RainbowColors {
  static const Color error = Colors.redAccent;
  static const Color success = Colors.green;
  static const Color info = Colors.blueAccent;
  static const Color warning = Colors.orange;
  static const Color log = Colors.white;

  static const Color red = Colors.red;
  static const Color redAccent = Colors.redAccent;
  static const Color green = Colors.green;
  static const Color greenAccent = Colors.greenAccent;
  static const Color blue = Colors.blue;
  static const Color blueAccent = Colors.blueAccent;
  static const Color yellow = Colors.yellow;
  static const Color yellowAccent = Colors.yellowAccent;
  static const Color orangeAccent = Colors.orangeAccent;
  static const Color pink = Colors.pink;
  static const Color pinkAccent = Colors.pinkAccent;
  static const Color purple = Colors.purple;
  static const Color purpleAccent = Colors.purpleAccent;
  static const Color cyan = Colors.cyan;
  static const Color cyanAccent = Colors.cyanAccent;
  static const Color amber = Colors.amber;
  static const Color amberAccent = Colors.amberAccent;
  static const Color indigo = Colors.indigo;
  static const Color indigoAccent = Colors.indigoAccent;
  static const Color teal = Colors.teal;
  static const Color tealAccent = Colors.tealAccent;
  static const Color lime = Colors.lime;
  static const Color limeAccent = Colors.limeAccent;
  static const Color brown = Colors.brown;
  static const Color blueGrey = Colors.blueGrey;
  static const Color grey = Colors.grey;
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  static String toAnsi(Color color) {
    if (color == red || color == redAccent || color == error) return '\x1B[31m';
    if (color == green || color == greenAccent || color == success) return '\x1B[32m';
    if (color == yellow || color == yellowAccent || color == amber || color == amberAccent || color == lime || color == limeAccent || color == warning) return '\x1B[33m';
    if (color == blue || color == blueAccent || color == indigo || color == indigoAccent || color == info) return '\x1B[34m';
    if (color == purple || color == purpleAccent || color == pink || color == pinkAccent) return '\x1B[35m';
    if (color == cyan || color == cyanAccent || color == teal || color == tealAccent) return '\x1B[36m';
    if (color == white || color == grey || color == blueGrey || color == brown || color == log) return '\x1B[37m';
    if (color == black) return '\x1B[30m';
    return '\x1B[0m';
  }
}
