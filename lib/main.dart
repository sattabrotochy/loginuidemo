import 'package:api_login_denmo/constants/constants.dart';
import 'package:api_login_denmo/ui/homepage.dart';
import 'package:api_login_denmo/ui/signin.dart';
import 'package:api_login_denmo/ui/signup.dart';
import 'package:api_login_denmo/ui/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(primaryColor: Colors.orange[200]),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) =>  SplashScreen(),
        SIGN_IN: (BuildContext context) =>  SignInPage(),
        SIGN_UP: (BuildContext context) =>  SignUpScreen(),
        Home_page:(BuildContext context)=> HomePage(),
      },
      initialRoute: SPLASH_SCREEN,
    );
  }
}



