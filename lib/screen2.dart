// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new
import 'package:flutter/material.dart';
import 'package:travel_mobile_app/home.dart';
import 'package:travel_mobile_app/screen1.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int bottomNavIndex = 0;
  List<Widget> screens = [const Home(), const Screen1()];

  BottomNavigationBarItem navbar({String label = ' ', IconData? icon2}) {
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Container(
                        width: 300,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Where to?',
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.search),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu_sharp,
                                size: 30,),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.black12.withOpacity(0.1),
                                  padding: const EdgeInsets.all(16),
                                ),
                              ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Ink.image(
                              image: const AssetImage('assets/images/surf.jpg'),
                              fit: BoxFit.cover,
                              height: 450,
                              child: InkWell(onTap: () {}),
                            ),
                            const Positioned(
                              bottom: 80,
                              left: 16,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Epic Surf',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 40,
                                    ),
                                  ),
                                  Text(
                                    'Trips',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 40,
                                    ),
                                  ),
                                  Text(
                                    'Travelers share Their favorite',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'destinations..!',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 10,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  foregroundColor: Colors.black,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 25),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Explore now',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                const Row(
                  children: [
                    Center(
                      child: Text(
                        'Spend A Littel Time in Nature',
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        height: 310,
                        width: 310,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
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
                                        top: 15,
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
                      ),
                      SizedBox(
                        width: 310,
                        height: 310,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
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
                                    top: 15,
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
                      ),
                      SizedBox(
                        width: 310,
                        height: 310,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
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
                                    top: 15,
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
                      ),
                      SizedBox(
                        width: 310,
                        height: 310,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
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
                                    height: 300,
                                    child: InkWell(onTap: () {}),
                                  ),
                                  Positioned(
                                    top: 15,
                                    left: 5,
                                    child: Container(
                                      width: 160.0,
                                      height: 50.0,
                                      decoration: new BoxDecoration(
                                          borderRadius: BorderRadius.circular(20.0),
                                          color: Colors.grey.shade200.withOpacity(0.2)),
                                      child: Center(
                                        child: Text(
                                          "\₹1500/Person",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
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
                                      icon: Center(child: const Icon(Icons.favorite_border, color: Colors.black)),
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        backgroundColor: Colors.grey.shade200.withOpacity(0.5),
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
                      ),
                    ],
                  ),
                ),

                // Add spacing between TextField and Card
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
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
              // case 1:
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => Screen2()),
              //   );
              //   break;
              // Add more cases here for other navbar items
            }
          },
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black45,
          currentIndex: bottomNavIndex,
          items: [
            navbar(label: '', icon2: Icons.home),
            navbar(label: '', icon2: Icons.navigation_outlined),
            navbar(label: '', icon2: Icons.favorite_border_rounded),
            navbar(label: '', icon2: Icons.perm_identity),
          ],
        ),
      ),
    );
  }
}
