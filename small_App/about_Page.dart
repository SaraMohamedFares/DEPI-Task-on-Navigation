import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {

  final String image,name;
  const AboutPage({super.key,required this.image,required this.name,
   });

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("About me"),),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green[900]!, Colors.black87],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.image),
                radius: 60,
              ),
              const SizedBox(height: 10,),
              Text(widget.name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),

              Text("Flutter Trainee",style: TextStyle(color: Colors.white70),),
              const SizedBox(height: 16,),
              Divider(),
              const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail,color: Colors.white70,),
                  const SizedBox(width: 16,),
                  Text('sm4649641@gmail.com',style: TextStyle(color: Colors.white70))
                ],
              ),
              const SizedBox(height: 16,),
              Row(
                children: [
                  Spacer(),
                  ElevatedButton(onPressed: (){},
                      child: Row(
                        children: [
                          Icon(Icons.message,color: Colors.green[900],),
                          SizedBox(width: 8,),
                          Text("Message",style: TextStyle(color: Colors.green[900])),
                        ],

                      )
                  ),
                  Spacer(),
                  ElevatedButton(onPressed: (){},
                      child: Row(
                        children: [
                          Icon(Icons.call,color: Colors.green[900]),
                          SizedBox(width: 8,),
                          Text("Call",style: TextStyle(color: Colors.green[900])),
                        ],

                      )
                  ),
                  Spacer(),
                ],
              )
            ],

          ),
        ),
      ),
    );
  }
}
