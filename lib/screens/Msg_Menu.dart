import 'package:flutter/material.dart';
import 'package:hostel/screens/Notice.dart';

class Msg_Menu extends StatelessWidget {
  const Msg_Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Msgmenuu(),
    );
  }
}

class Msgmenuu extends StatefulWidget {
  const Msgmenuu({Key? key}) : super(key: key);

  @override
  State<Msgmenuu> createState() => _MsgmenuuState();
}

class _MsgmenuuState extends State<Msgmenuu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0), // Set the height of the AppBar
          child: AppBar(
            backgroundColor: Colors.blueAccent,
            centerTitle: true,
            title: Text(
              'Message Menu',
              style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Column(
          children: [
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
                      MaterialPageRoute(builder: (context) => Notice()),
                    );
                    // button press action
                  },
                  child: Text(
                    'Notice',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
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
                    'Direct Message',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
          ],
        ));
  }
}
