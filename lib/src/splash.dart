// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'main.dart';

// class Splash extends StatefulWidget {
//   const Splash({Key? key}) : super(key: key);

//   @override
//   State<Splash> createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(
//       Duration(seconds: 3),
//       () {
//         Navigator.push<MaterialPageRoute>(
//           context,
//           MaterialPageRoute(
//             builder: (context) => const HomePage(
//               title: '',
//             ),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView(children: <Widget>[Image.asset('assets\skpx.png')]));
//   }
// }
