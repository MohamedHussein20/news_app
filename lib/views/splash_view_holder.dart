// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/widgets.dart';
// import 'package:news_app/views/home_view.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen>
//     with SingleTickerProviderStateMixin {
//   @override
//   void initState() {
//     super.initState();
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
//     Future.delayed(const Duration(seconds: 3), () {
//       Navigator.of(context)
//           .pushReplacement(MaterialPageRoute(builder: (_) => const HomeView()));
//     });
//   }

//   @override
//   void dispose() {
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
//         overlays: SystemUiOverlay.values);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         decoration: const BoxDecoration(
//             gradient: LinearGradient(
//           colors: [Colors.blue, Colors.purple],
//           begin: Alignment.topRight,
//           end: Alignment.bottomLeft,
//         )),
//         child: const Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.newspaper_sharp,
//               size: 80,
//               color: Colors.white,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "News",
//                   style: TextStyle(
//                       fontStyle: FontStyle.italic,
//                       color: Colors.black,
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   " Cloud",
//                   style: TextStyle(
//                       fontStyle: FontStyle.italic,
//                       color: Colors.orange,
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Text(
//               "Developed By Mohamed Hussein",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontStyle: FontStyle.normal,
//                 fontSize: 15,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
