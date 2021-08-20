import 'package:flutter/material.dart';  



class CallScreen extends StatefulWidget {
  const CallScreen() : super();

  @override
  State<CallScreen> createState() => _CallScreenState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _CallScreenState extends State<CallScreen> {

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
            itemBuilder: (context, position) {
              CallItemModel callItemModel = CallHelper.getCallItem(position);

              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          size: 64.0,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          callItemModel.name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.0),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Text(
                                        callItemModel.dateTime,
                                        style: TextStyle(
                                            color: Colors.black45, fontSize: 16.0),
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(Icons.call, color: Color(0xff075E54),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                ],
              );
            },
            itemCount: CallHelper.itemCount,);
          
         
    }
}
  

class CallHelper {

  static var callList = [CallItemModel("Alice", "Today, 3:39 PM"), CallItemModel("John", "Today, 4:41 PM")];

  static CallItemModel getCallItem(int position) {
    return callList[position];
  }

  static var itemCount = callList.length;

}

class CallItemModel {

  String name;
  String dateTime;

  CallItemModel(this.name, this.dateTime);

}
