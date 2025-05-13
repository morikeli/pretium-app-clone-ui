import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pretium_app_clone/routes.dart';
import 'package:pretium_app_clone/screens/login/login_screen.dart';

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
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: LoginScreen(),
      initialRoute: '/login',
      routes: routes,
    );
  }
}
