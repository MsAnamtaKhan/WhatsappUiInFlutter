import 'package:flutter/material.dart';  



class SwitchScreen extends StatefulWidget {
  const SwitchScreen() : super();

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _SwitchScreenState extends State<SwitchScreen> {
bool isSwitched = false;
var textValue = 'Notifications is OFF';  
 void toggleSwitch(bool value) {  
  
    if(isSwitched == false)  
    {  
      setState(() {  
        isSwitched = true;  
        textValue = 'Notifications is ON';  
      });  
      print('Notifications is ON');  
    }  
    else  
    {  
      setState(() {  
        isSwitched = false;  
        textValue = 'Notifications is OFF';  
      });  
      print('Notifications is OFF');  
    }  
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      children:[
       
        new Row(
            mainAxisAlignment:MainAxisAlignment.start,
          children: [
          Padding(
            padding: EdgeInsets.fromLTRB(40,80,0,0),
          child:Icon(Icons.notifications,size: 40,color: Color(0xff075E54),)),
          Padding(
            padding: EdgeInsets.fromLTRB(10,80,0,0),
            child:Text('Notifications',style: TextStyle(fontSize: 20),)),
            Padding(
              padding: EdgeInsets.fromLTRB(70,80,0,0),
        child:Switch(
            value: isSwitched,
             onChanged: toggleSwitch, 
            activeColor: Colors.deepPurple,  
            activeTrackColor: Colors.yellow,  
            inactiveThumbColor: Colors.green,  
            inactiveTrackColor: Colors.grey, 
          )),  
        ]),
        Padding(
          padding: EdgeInsets.fromLTRB(20,10,50,0),
          child:Text('$textValue', style: TextStyle(fontSize: 15),))
      ]
    );
    }
}
