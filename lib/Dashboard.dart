import 'package:flutter/material.dart';
import 'package:hostel/rooms.dart';
import 'package:hostel/screens/Complains.dart';
import 'package:hostel/screens/Msg_Menu.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dash(),
    );
  }
}

class Dash extends StatefulWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
        ),
        leading: null,
        actions: <Widget>[],
        title: Center(
          child: Text(
            'AppBar',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        backgroundColor: Color(0xff237ACC),
      ),
      body: Column(children: [
        Spacer(),
        Row(
          children: [
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // border radius
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Rooms()),
                );
                // button press action
              },
              child: Text(
                'Room Availabilty',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),

        ///complains
        Row(
          children: [
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // border radius
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Complains()),
                );
                // button press action
              },
              child: Text(
                'Complains',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),

        ///msg menu
        Row(
          children: [
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // border radius
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Msg_Menu()),
                );
                // button press action
              },
              child: Text(
                'Msg Menu',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),

        ///Notice
        Row(
          children: [
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // border radius
                ),
              ),
              onPressed: () {
                // button press action
              },
              child: Text(
                'Notice',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),

        ///direct msg
        Row(
          children: [
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // border radius
                ),
              ),
              onPressed: () {
                // button press action
              },
              child: Text(
                'Direct Msg',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
          ],
        ),
        Spacer(),
      ]),
    );
  }
}
