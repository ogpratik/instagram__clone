import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram__clone/responsive/mobile_screen_layout.dart';
import 'package:instagram__clone/responsive/responsive_layout_screen.dart';
import 'package:instagram__clone/responsive/web_screen_layout.dart';
import 'package:instagram__clone/screens/login_screen.dart';
import 'package:instagram__clone/utils/colors.dart';
import 'package:instagram__clone/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyC_fI3MUNSq3RWz5iBexcN2iV2AxO4gGcQ",
          appId: "1:42906542089:web:0e661900202be2ca9bd8d8",
          messagingSenderId: "42906542089",
          projectId: "instagram-clone-dc591",
          storageBucket: "instagram-clone-dc591.appspot.com"),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: SignupScreen(),
    );
  }
}
