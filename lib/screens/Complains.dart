import 'package:flutter/material.dart';

class Complains extends StatelessWidget {
  const Complains({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Complainss(),
    );
  }
}

class Complainss extends StatefulWidget {
  const Complainss({Key? key}) : super(key: key);

  @override
  State<Complainss> createState() => _ComplainssState();
}

class _ComplainssState extends State<Complainss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // Set the height of the AppBar
        child: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          title: Text(
            'Room Availability',
            style: TextStyle(
              fontFamily: 'RobotoMono',
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
