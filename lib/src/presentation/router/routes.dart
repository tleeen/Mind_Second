import '../features/game/game_screen.dart';
import '../features/lose/lose_screen.dart';
import '../features/start/start_screen.dart';

final routes = {
        "/" : (context) => const StartScreen(),
        "/game" : (context) => const GameScreen(),
        "/lose" : (context) => const LoseScreen()
    };