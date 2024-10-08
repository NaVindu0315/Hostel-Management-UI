import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hostel/screens/Complains.dart';
import 'package:hostel/screens/Directmsg.dart';
import 'package:hostel/screens/Msg_Menu.dart';

class Warden extends StatelessWidget {
  final String username;
  const Warden({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(username: username),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String username;
  const MyHomePage({Key? key, required this.username}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text('Hello ${widget.username} !',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.black)),
                  subtitle: Text('WELCOME!!',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.black)),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/user.JPG'),
                  ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(200))),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard('Room \n Allocation', Icons.room,
                      Colors.deepOrange, context),
                  itemDashboard('Check \n Attendance', Icons.back_hand,
                      Colors.green, context),
                  itemDashboard('Check \n Requests', Icons.request_page,
                      Colors.purple, context),
                  itemDashboard('Complains', Icons.handyman_outlined,
                      Colors.brown, context),
                  itemDashboard('Notifications', Icons.notifications,
                      Colors.indigo, context),
                  itemDashboard(
                      'Messages', Icons.message, Colors.teal, context),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.blueAccent,
        color: Colors.blueAccent,
        animationDuration: Duration(milliseconds: 300),
        items: const [
          Icon(Icons.home, size: 26, color: Colors.white),
          Icon(Icons.back_hand, size: 26, color: Colors.white),
          Icon(Icons.request_page, size: 26, color: Colors.white),
          Icon(Icons.handyman_outlined, size: 26, color: Colors.white),
          Icon(Icons.notifications, size: 26, color: Colors.white),
          Icon(Icons.message, size: 26, color: Colors.white),
        ],
        onTap: (index) {
          // Handle navigation based on the selected index
          switch (index) {
            case 0:
              // Navigate to Home
              break;
            case 1:
              // Navigate to another page
              break;
            case 2:
              // Navigate to requests page
              break;
            case 3:
              // Navigate to tools page
              break;
            case 4:
              // Navigate to notifications page
              break;
            case 5:
              // Navigate to messages page
              break;
          }
        },
      ),
    );
  }

  Widget itemDashboard(String title, IconData iconData, Color background,
          BuildContext context) =>
      InkWell(
        onTap: () {
          if (title == 'Room \n Allocation') {
            /*  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RoomAllocation()),
            );*/
          } else if (title == 'Notifications') {
            /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Notifications()),
            );*/
          } else if (title == 'Check \n Requests') {
            // Navigate to SeeRequests screen
            /*  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SeeRequests()),
            );*/
          } else if (title == 'Complains') {
            // Navigate to Complains screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Complains()),
            );
          } else if (title == 'Messages') {
            // Navigate to Messages screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Msg_Menu()),
            );
          } else if (title == 'Check \n Attendance') {
            // Navigate to SeeAttendance screen
            /*   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SeeAttendance()),
            );*/
          } else {
            // Handle other navigation or actions if needed
          }
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 5),
                    color: Theme.of(context).primaryColor.withOpacity(.2),
                    spreadRadius: 2,
                    blurRadius: 5)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: background,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(iconData, color: Colors.white)),
              const SizedBox(height: 8),
              Text(title.toUpperCase(),
                  style: Theme.of(context).textTheme.titleMedium)
            ],
          ),
        ),
      );
}
