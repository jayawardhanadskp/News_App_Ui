import 'package:flutter/material.dart';

import 'screens/01.dart';
import 'screens/02.dart';
import 'screens/03.dart';
import 'screens/04.dart';
import 'screens/05.dart';
import 'screens/06.dart';
import 'screens/07.dart';
import 'screens/08.dart';
import 'screens/09.dart';
import 'screens/10.dart';
import 'screens/11.dart';
import 'screens/12.dart';
import 'screens/13.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: signInGoogle(),
    );
  }
}

// 1 FirstPage
// 2 SecondPage
// 3 SignIn
// 4 SignUp
// 5 signInGoogle
// 6 ForgetPass
// 7 Verification
// 8 UpdatePass
// 9 Terms
//10 Search
//11 News
//12 NewPostPage
//13 Profile
