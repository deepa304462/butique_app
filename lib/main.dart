
import 'package:butique_app/screens/add_new_customer.dart';
import 'package:butique_app/pdf_create_ui.dart';
import 'package:butique_app/providers/my_provider.dart';
import 'package:butique_app/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import 'screens/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAJqSrVZct4T2fIPgKyKOGxZBhfSLh1UZQ",
          appId: "1:199360755371:web:0c86169a98f0cc341529ee",
          messagingSenderId: "199360755371",
          storageBucket: 'butique-app.appspot.com',
          projectId: "butique-app"));
  runApp(ChangeNotifierProvider(
    create: (context) => MyModel(),
    child: const MyApp(),
  ),);

}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}



