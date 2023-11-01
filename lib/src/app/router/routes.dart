import '../../pages/game/ui/game.dart';
import '../../pages/lose/ui/lose.dart';
import '../../pages/start/ui/start.dart';

final routes = {
        "/" : (context) => const StartScreen(),
        "/game" : (context) => const GameScreen(),
        "/lose" : (context) => const LoseScreen()
    };