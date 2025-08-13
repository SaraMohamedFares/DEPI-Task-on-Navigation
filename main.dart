import 'package:depi/burger.dart';
import 'package:depi/categories.dart';
import 'package:depi/gestureLayout.dart';
import 'package:depi/home_Page.dart';
import 'package:depi/layout.dart';
import 'package:depi/login.dart';
import 'package:depi/musicPlayer.dart';
import 'package:depi/photoGallary.dart';
import 'package:depi/products.dart';
import 'package:depi/profile.dart';
import 'package:depi/profileCard.dart';
import 'package:depi/small_App/advanced_Bottom_Navbar.dart';
import 'package:depi/swap_Puzzle.dart';
import 'package:depi/taskTracker.dart';
import 'package:depi/transformGesture.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: AdvancedBottomNavbar(
        isDark: isDark,
        onThemeToggle: () {
          setState(() {
            isDark = !isDark;
          });
        },
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int pid = 0;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     setPid ();
//   }
//
//   void incrementPid() {
//     setState(() {
//       pid+=50;
//     });
//   }
//
//
//
//   void setPid  () async{
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     final int? Pid1 = prefs.getInt('Pid');
//     setState(() {
//       pid=Pid1??0;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Your Current Pid'),
//         backgroundColor: Colors.teal,
//         foregroundColor: Colors.white,
//       ),
//       body: Center(
//         child: Column(
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('Maximum Pid:',style: TextStyle(fontSize: 30),),
//             Text(
//               '\$ $pid',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             // ElevatedButton(
//             //   onPressed: incrementPid,
//             //   child: Text('Increment Pid'),
//             //
//             // )
//             FloatingActionButton(onPressed: () async {
//               setState(()  {
//                 pid+=50;
//               });
//               final SharedPreferences prefs = await SharedPreferences.getInstance();
//               await prefs.setInt('Pid', pid);
//
//             },
//               child: const Icon(Icons.add),
//             )
//
//           ],
//
//         ),
//       ),
//
//       // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
