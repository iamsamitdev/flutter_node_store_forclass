import 'package:flutter/material.dart';
import 'package:flutter_node_store/app_router.dart';
import 'package:logger/logger.dart';

// Logger
final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 1,
    colors: true,
    printEmojis: true,
    printTime: false,
  )
);

// Test Logger
void testLogger() {
  logger.t('Verbose log');
  logger.d('Debug log');
  logger.i('Info log');
  logger.w('Warning log');
  logger.e('Error log');
  logger.f('What a terrible failure log');
}

void main() {

  // Test Logger
  testLogger();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRouter.welcome,
      routes: AppRouter.routes,
    );
  }
}


