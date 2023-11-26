import 'package:flutter_node_store/welcome/welcome_screen.dart';

class AppRouter {
  
  // Router Map Key
  static const String welcome = 'welcome';
 
  // Router Map
   // Router Map
  static get routes => {
    welcome: (context) => const WelcomeScreen(),
  };

}