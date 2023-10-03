import 'package:app_chat_ui/config/app_flavor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'config/enviroment_config.dart';
import 'config/flavor_config.dart';
import 'screens/welcome/welcome_screen.dart';
import 'theme.dart';

// 1
Future<void> main() async {
  // 2
  WidgetsFlutterBinding.ensureInitialized();
  // final package = await const MethodChannel('app_chat_ui')
  //     .invokeMethod<String>("getPackage");
  // print(package);
  // 3

  debugPrint('APP_NAME: ${EnvironmentConfig.appName}');
  debugPrint('APP_SUFFIX: ${EnvironmentConfig.appSuffix}');
  final appFlavor = await FlavorConfig().getFlavor();
  debugPrint('ApiUrl: ${appFlavor?.apiURL}');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Flutter Way',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.light,
      home: const WelcomeScreen(),
    );
  }
}
