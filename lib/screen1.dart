// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travel_mobile_app/home.dart';
import 'package:travel_mobile_app/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() =>
    _Screen1State();
}
class _Screen1State extends State<Screen1> {
  int bottomNavIndex =0;
  List<Widget> screens = [const Home(),const Screen1()];

  BottomNavigationBarItem Navbar({String label = ' ', IconData? icon2}) {
    return BottomNavigationBarItem(
      icon: Icon(icon2),
      label: label,
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Row(
                       children: [
                         Padding(
                           padding:  EdgeInsets.only(top: 20),
                           child: Text('Find Your',
                            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                                               ),

                         ),
                       ],
                     ),
                    Row(
                      children: [
                        Text('Favorite Place',
                          style:TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        ),

                      ],
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          _buildButton('INDIA'),
                          _buildButton('USA'),
                          _buildButton('RUSSIA'),
                          _buildButton('CANADA'),
                          _buildButton('DUBAI'),
                          _buildButton('BALI'),
                        ],
                      ),
                    )
                  ],),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Ink.image(
                          image: const AssetImage('assets/images/taj.jpg'),
                          fit: BoxFit.cover,
                          height: 300,
                          child: InkWell(onTap: () {}),
                        ),
                        Positioned(
                          top: 10,
                          left: 5,
                          child: Container(
                            width: 160.0,
                            height: 60.0,
                            decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                color: Colors.black12.withOpacity(0.2)),
                            child: Center(
                              child: Text(
                                "\₹1000/Person",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),

                        ),
                        Positioned(
                          top: 10,
                          right: 16,
                          child: IconButton(
                            onPressed: () {},
                            icon: Center(child: const Icon(Icons.favorite_border, color: Colors.white,size: 25)),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.black12.withOpacity(0.2),
                              padding: const EdgeInsets.all(20),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 16,
                          left: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'India',
                                style: TextStyle(

                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),

                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Icon(Icons.location_on_outlined,color: Colors.white70),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Taj Mahal',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 16,
                          right: 16,
                          child: IconButton(
                            onPressed: () {},
                            icon: Center(child: const Icon(Icons.arrow_outward, color: Colors.black)),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.green,
                              padding: const EdgeInsets.all(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Ink.image(
                          image: const AssetImage('assets/images/mountain1.jpg'),
                          fit: BoxFit.cover,
                          height: 300,
                          child: InkWell(onTap: () {}),
                        ),
                        Positioned(
                          top: 10,
                          left: 5,
                          child: Container(
                            width: 160.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                color: Colors.black12.withOpacity(0.2)),
                            child: Center(
                              child: Text(
                                "\₹500/Person",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),

                        ),
                        Positioned(
                          top: 10,
                          right: 16,
                          child: IconButton(
                            onPressed: () {},
                            icon: Center(child: const Icon(Icons.favorite_border, color: Colors.white,size: 25)),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.black12.withOpacity(0.2),
                              padding: const EdgeInsets.all(16),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 16,
                          left: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Padar',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                ),
                              ),
                              Text(
                                'Island',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Icon(Icons.location_on_outlined,color: Colors.white70),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Komodo National Park',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 16,
                          right: 16,
                            child: IconButton(
                              onPressed: () {},
                              icon: Center(child: const Icon(Icons.arrow_outward, color: Colors.black)),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor: Colors.green,
                                padding: const EdgeInsets.all(16),
                              ),
                            ),

                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Ink.image(
                          image: const AssetImage('assets/images/Los_Angles.jpg'),
                          fit: BoxFit.cover,
                          height: 300,
                          child: InkWell(onTap: () {}),
                        ),
                        Positioned(
                          top: 10,
                          left: 5,
                          child: Container(
                            width: 160.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                color: Colors.black12.withOpacity(0.2)),
                            child: Center(
                              child: Text(
                                "\₹2000/Person",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),

                        ),
                        Positioned(
                          top: 10,
                          right: 16,
                          child: IconButton(
                            onPressed: () {},
                            icon: Center(child: const Icon(Icons.favorite_border, color: Colors.white,size: 25)),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.black12.withOpacity(0.2),
                              padding: const EdgeInsets.all(16),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 16,
                          left: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'USA',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Icon(Icons.location_on_outlined,color: Colors.white70),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Los Angles',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 16,
                          right: 16,
                          child: IconButton(
                            onPressed: () {},
                            icon: Center(child: const Icon(Icons.arrow_outward, color: Colors.black)),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.green,
                              padding: const EdgeInsets.all(16),
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Ink.image(
                          image: const AssetImage('assets/images/forest.jpg'),
                          fit: BoxFit.cover,
                          height: 240,
                          child: InkWell(onTap: () {}),
                        ),
                        Positioned(
                          top: 10,
                          left: 5,
                          child: Container(
                            width: 160.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                color: Colors.black12.withOpacity(0.2)),
                            child: Center(
                              child: Text(
                                "\₹1500/Person",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),

                        ),
                        Positioned(
                          top: 10,
                          right: 16,
                          child: IconButton(
                            onPressed: () {},
                            icon: Center(child: const Icon(Icons.favorite_border, color: Colors.white,size: 25)),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.black12.withOpacity(0.2),
                              padding: const EdgeInsets.all(16),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 16,
                          left: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Africa',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Icon(Icons.location_on_outlined,color: Colors.white70),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Madagascar',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 16,
                          right: 16,
                          child: IconButton(
                            onPressed: () {},
                            icon: Center(child: const Icon(Icons.arrow_outward, color: Colors.black)),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.green,
                              padding: const EdgeInsets.all(16),
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ]),
              ),
          ], ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          onTap: (value){
            setState(() {
              bottomNavIndex = value;
            });
            switch (value) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen1()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen2()),
                );
                break;

            }
          },
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black45,
          currentIndex: bottomNavIndex,
          items: [
            Navbar(label: '',icon2: Icons.home),
            Navbar(label: '',icon2: Icons.navigation_outlined),
            Navbar(label: '',icon2: Icons.favorite_border_rounded),
            Navbar(label: '',icon2: Icons.perm_identity),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String name) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // primary: Colors.white, // background color
          // onPrimary: Colors.black,
          side: const BorderSide(color: Colors.black, width: 2), // text color
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50), // border radius
          ),
        ),
        onPressed: () {},
        child: Text(
          name,
          style: const TextStyle(color: Colors.black,fontSize: 20),
        ),
      ),
    );
  }
  
}
