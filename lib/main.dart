import 'package:flutter/material.dart';
import 'package:messageme_app/screens/chat_screen.dart';
import 'package:messageme_app/screens/registeration_screen.dart';
import 'package:messageme_app/screens/signin_screen.dart';
import 'package:messageme_app/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MessageMe app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        primarySwatch: Colors.blue,

        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),

          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),

        useMaterial3: true,
      ),

      initialRoute: WelcomeScreen.scrrenRoute,

      routes: {
        WelcomeScreen.scrrenRoute:(context) => WelcomeScreen(),
        SignInScreen.screenRoute:(context) => SignInScreen(),
        RegistrationScreen.screenRoute:(context) => RegistrationScreen(),
        ChatScrren.screenRoute:(context) => ChatScrren(),


      },


    );
  }
}