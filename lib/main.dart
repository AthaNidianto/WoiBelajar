import 'package:flutter/material.dart';
import 'package:woibelajar/core/constant.dart';
import 'package:provider/provider.dart';
import 'package:woibelajar/providers/timer_provider.dart';
import 'package:woibelajar/routes/app_routes.dart';

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
      child: MaterialApp.router(
        routerConfig: appRoute,
        debugShowCheckedModeBanner: false,
        title: 'Woi Belajar',
        theme: ThemeData(
          scaffoldBackgroundColor: bgColor,
          primaryColor: primaryBlue,
          fontFamily: 'Poppins',
        ),
      ),

    );
  }
}




