import 'package:flutter/material.dart';
import 'package:woibelajar/core/constant.dart';
import 'package:provider/provider.dart';
import 'package:woibelajar/providers/timer_provider.dart';
import 'package:woibelajar/screens/auth/sign_in_screen.dart';
import 'package:woibelajar/screens/auth/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TimerProvider()), 
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Woi Belajar',
        theme: ThemeData(
          scaffoldBackgroundColor: bgColor,
          primaryColor: primaryBlue,
          fontFamily: 'Poppins',
        ),
        initialRoute: '/signup',
        routes: {
          '/signup': (context) => const SignUpScreen(),
          '/signin': (context) => const SignInScreen(),
        },
      ),

    );
  }
}




