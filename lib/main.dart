import 'package:club_app/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

var height, width;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Color(0xff060479),
                image: DecorationImage(
                  image: AssetImage('assets/Rectangle 5.png'),
                  fit: BoxFit.fill,
                ),
                // gradient: LinearGradient(
                //   colors: [Colors.blue.shade900, Colors.purple.shade900],
                //   begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter,
                // ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(height: height * 0.13),
                            SizedBox(width: width * 0.04),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.white,
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 29,
                                  backgroundImage: AssetImage(
                                    'assets/profile_pic.png',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: width * 0.025),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jam Moheebb",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: height * 0.022,
                                      width: width * 0.1,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/Rectangle 175.png',
                                          ),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Stack(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.male,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                              Text(
                                                "23",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    // Icon(Icons.star, color: Colors.amber, size: 16),
                                    SizedBox(width: width * 0.0125),
                                    Container(
                                      height: height * 0.022,
                                      width: width * 0.1,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),

                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/flag_charm_level_2 1.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: width * 0.05),
                                          Text(
                                            "00",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    SizedBox(width: width * 0.0125),

                                    Container(
                                      height: height * 0.022,
                                      width: width * 0.1,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),

                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/flag_charm_level_1 1.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: width * 0.05),
                                          Text(
                                            "00",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Image(
                                      image: AssetImage('assets/trophyy.png'),
                                    ),
                                  ],
                                ),
                                SizedBox(height: height * 0.007),
                                Container(
                                  height: height * 0.020,
                                  width: width * 0.25,
                                  color: Colors.white,

                                  child: Row(
                                    children: [
                                      Container(
                                        height: height * 0.018,
                                        width: width * 0.05,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/flag_id 1.png',
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        " 151706 ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(width: width * 0.01),

                                      // Image(image: AssetImage('assets/ic_copy 1.png')),
                                      Icon(Icons.file_copy_outlined, size: 14),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(height: height * 0.0125),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 3,
                              horizontal: 15,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff9F02FF),
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.white, width: 1),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Vistors',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '23',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 3,
                              horizontal: 15,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff9F02FF),
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.white, width: 1),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Folllowing',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '21',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 3,
                              horizontal: 15,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff9F02FF),
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.white, width: 1),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Fans',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '12',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.025),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: width * 0.22,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Rectangle 181.png'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: height * 0.0085),
                                Image(
                                  image: AssetImage(
                                    'assets/image-removebg-preview (67) 1.png',
                                  ),
                                ),
                                Text(
                                  'Store',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width * 0.22,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Rectangle 182.png'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: height * 0.035),

                                Text(
                                  'VIP Center',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width * 0.22,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Rectangle 184.png'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: height * 0.035),

                                Text(
                                  'Level',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            width: width * 0.22,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/Rectangle 184 (1).png',
                                ),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: height * 0.035),

                                Text(
                                  'Wallet',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                      SizedBox(height: height * 0.025),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: width * 0.29,
                            padding: EdgeInsets.symmetric(vertical: 33),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Rectangle 191.png'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'assets/microphone (1).png',
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Host Center',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width * 0.29,
                            padding: EdgeInsets.symmetric(vertical: 31),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Rectangle 192.png'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'assets/decoration (1) 1.png',
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Decoraton',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width * 0.29,
                            padding: EdgeInsets.symmetric(vertical: 23),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Rectangle 193.png'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Image(image: AssetImage('assets/happy.png')),

                                Text(
                                  'Members',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.0125),
                      Expanded(
                        child: ListView(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              padding: EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 15,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xff292884),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    // backgroundColor: Colors.red,
                                    backgroundImage: AssetImage(
                                      'assets/Ellipse 96.png',
                                    ),

                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    ),
                                  ),

                                  SizedBox(width: width * 0.025),
                                  Text(
                                    'CP',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              padding: EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 15,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xff292884),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    // backgroundColor: Color(0xff0a6fff),
                                    backgroundImage: AssetImage(
                                      'assets/Ellipse 85.png',
                                    ),

                                    child: Image(
                                      image: AssetImage('assets/exclusive.png'),
                                    ),
                                  ),

                                  SizedBox(width: width * 0.025),
                                  Text(
                                    'Badge',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              padding: EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 15,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xff292884),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    // backgroundColor: Color(0xff31eac3),
                                    backgroundImage: AssetImage(
                                      'assets/Ellipse 95.png',
                                    ),

                                    child: Image(
                                      image: AssetImage('assets/add-group.png'),
                                    ),
                                  ),

                                  SizedBox(width: width * 0.025),
                                  Text(
                                    'Invite Friends',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              padding: EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 15,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xff292884),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                      'assets/Ellipse 97.png',
                                    ),

                                    child: Image(
                                      image: AssetImage(
                                        'assets/setting (3).png',
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: width * 0.025),
                                  Text(
                                    'Settings',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              padding: EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 15,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xff292884),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    // backgroundColor: Colors.purple,
                                    backgroundImage: AssetImage(
                                      'assets/Ellipse 98.png',
                                    ),

                                    child: Image(
                                      image: AssetImage(
                                        'assets/customer-service.png',
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: width * 0.025),
                                  Text(
                                    'Contact Us',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 745),
              child: Container(
                height: height * 0.1,
                width: width,
                color: Colors.amber.withOpacity(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/Group.png'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/hotspot.png'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/compass.png'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/messenger.png'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/user.png'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
