import 'package:flutter/material.dart';
import 'package:messenger_app/config/theme/app_theme.dart';
import 'package:messenger_app/data/services/service_locator.dart';
import 'package:messenger_app/presentation/screens/auth/login_screen.dart';
import 'package:messenger_app/router/app_router.dart';

void main() async {
  await setupServiceLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  
    return MaterialApp( 
      title: 'Messenger App',
      navigatorKey: getIt<AppRouter>().navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: LoginScreen(),
    );
  }
}
