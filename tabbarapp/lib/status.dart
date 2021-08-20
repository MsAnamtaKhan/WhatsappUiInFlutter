import 'package:flutter/material.dart';  



class StatusScreen extends StatefulWidget {
  const StatusScreen() : super();

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _StatusScreenState extends State<StatusScreen> {

  @override
  Widget build(BuildContext context) {
 return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: <Widget>[
                     Icon(
                          Icons.account_circle,
                          size: 64.0,
                        ),
                    Positioned(
                      bottom: 0.0,
                      right: 1.0,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
                title: Text(
                  "My Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tap to add status update"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Viewed updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading:  Icon(
                          Icons.account_circle,
                          size: 64.0,
                        ),
                    title: Text(
                      "Pawan Kumar",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Today, 20:16 PM"),
                    onTap: (){

                    }
                  ),
  Divider(),
                   ListTile(
                    leading:  Icon(
                          Icons.account_circle,
                          size: 64.0,
                        ),
                    title: Text(
                      "ALice",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Today, 10:16 PM"),
                    onTap: (){

                    }
                  ),
                    Divider(),
                   ListTile(
                    leading:  Icon(
                          Icons.account_circle,
                          size: 64.0,
                        ),
                    title: Text(
                      "Steve",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Today, 20:16 AM"),
                    onTap: (){

                    }
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
  