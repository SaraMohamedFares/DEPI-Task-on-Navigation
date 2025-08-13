import 'package:depi/small_App/about_Page.dart';
import 'package:depi/small_App/calls_Page.dart';
import 'package:depi/small_App/camera_Page.dart';
import 'package:depi/small_App/chats_Page.dart';
import 'package:depi/small_App/home_Page.dart';
import 'package:flutter/material.dart';

class AdvancedBottomNavbar extends StatefulWidget {
  final bool isDark;
  final VoidCallback onThemeToggle;

  const AdvancedBottomNavbar({
    super.key,
    required this.isDark,
    required this.onThemeToggle,
  });

  @override
  State<AdvancedBottomNavbar> createState() => _AdvancedBottomNavbarState();
}

class _AdvancedBottomNavbarState extends State<AdvancedBottomNavbar> {

  int _index=0;
  final List<Widget> pages=[
    CallsPage(),
    CameraPage(),
    ChatsPage(),
  ];
  final List titles=[ "Calls", "Camera","Chats"];
  bool isDark = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("${titles[_index]}"),
        actions: [
          IconButton(
            icon: Icon(
              widget.isDark ? Icons.wb_sunny : Icons.nights_stay,
            ),
            onPressed: widget.onThemeToggle,
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 40,),
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.green[900]!, Colors.green[600]!],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
              ),
              ),
                child: Row(
              children: [
                Spacer(),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Me.jpg'),
                  radius: 40,
                ),
                Spacer(),
                Text("Sara Fares",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                Spacer(flex: 2,),

              ],
            )
            ),

            SizedBox(height: 20,),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },

              child: Row(
                children: [
                  Spacer(),
                  Icon(Icons.home,size: 20,),
                  Spacer(),
                  Text("Home",style: TextStyle(fontSize: 20,),),
                  Spacer(flex: 7,),

                ],
              ),
            ),

            SizedBox(height: 30,),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutPage(image:'assets/images/Me.jpg',name:'Sara Fares')));

              },
              child: Row(
                children: [
                  Spacer(),
                  Icon(Icons.info,size: 20),
                  Spacer(),
                  Text("About",style: TextStyle(fontSize: 20),),
                  Spacer(flex: 7,),

                ],
              ),
            ),

            SizedBox(height: 30,),

            GestureDetector(
              onTap: (){
                Navigator.pop(context);

              },
              child: Row(
                children: [
                  Spacer(),
                  Icon(Icons.arrow_circle_left,size: 20,),
                  Spacer(),
                  Text("Go back",style: TextStyle(fontSize: 20,),),
                  Spacer(flex: 7,),

                ],
              ),
            ),

          ],
        ) ,
      ),
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _index=index;
          });
        },
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.call),label: "Calls"),
            BottomNavigationBarItem(icon: Icon(Icons.camera_alt),label: "Camera"),
            BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chats"),
          ]
      ),
    );
  }
}
