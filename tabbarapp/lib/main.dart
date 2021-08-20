import 'package:flutter/material.dart';
import './notification.dart';
import './chat.dart';
import './call.dart';
import './status.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData(primarySwatch: Colors.deepPurple),

      home: DefaultTabController(  
        length: 4,  
        child: Scaffold(  

          appBar: AppBar(  
             title: new Text("WhatsApp", style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600),),
             actions: <Widget>[
             Padding(
             padding: const EdgeInsets.only(right: 20.0),
             child: Icon(Icons.search),
            ),
             Padding(
             padding: const EdgeInsets.only(right: 16.0),
             child: Icon(Icons.more_vert),
          ),
           ],
             backgroundColor: new Color(0xff075E54),

             bottom: TabBar(
              isScrollable:true,
              indicatorColor: Colors.white,
              tabs: [  
               
                Tab(child: Text("CHATS"),),
                Tab(child: Text("STATUS",)),
                Tab(child: Text("CALLS",)),
                Icon(Icons.notifications),
              
              ])), 
          body:
           TabBarView(  
            children: [
              ChatScreen() ,
              StatusScreen(),
              CallScreen() ,  
              SwitchScreen()  
     
            ],  
          ) 
        ),  
      ),  
    );  
  }  
}