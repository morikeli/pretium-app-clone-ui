import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pretium_app_clone/routes.dart';
import 'package:pretium_app_clone/screens/login/login_screen.dart';
import 'package:pretium_app_clone/theme/theme.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const PretiumFinanceApp());

  // whenever your initialization is completed, remove the splash screen:
  FlutterNativeSplash.remove();
}

class PretiumFinanceApp extends StatelessWidget {
  const PretiumFinanceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pretium Finance',
      // darkTheme: PretiumAppTheme.darkTheme,
      theme: PretiumAppTheme.lightTheme,
      home: LoginScreen(),
      initialRoute: '/login',
      routes: routes,
    );
  }
}
