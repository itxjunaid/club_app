import 'package:club_app/tabscreen.dart';
import 'package:club_app/winner_screem.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage('assets/Rectangle 5.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: height * 0.35,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/regal-trophy-with-golden-crown-atop-generative-ai 1 1.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(12),
                          right: Radius.circular(12),
                        ),
                      ),
                      child: Container(
                        height: height * 0.35,
                        width: width,
                        color: Color(0xff010044).withOpacity(0.2),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                SizedBox(width: width * 0.21),
                                Text(
                                  "Jam Moheebb",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: width * 0.25),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => WinnerDialog(),
                                      ),
                                    );
                                  },
                                  child: Image(
                                    image: AssetImage('assets/menu 1.png'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.035),
                            Row(
                              children: [
                                SizedBox(width: width * 0.05),
                                CircleAvatar(
                                  radius: 29,
                                  backgroundImage: AssetImage(
                                    'assets/profile_pic.png',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            Row(
                              children: [
                                SizedBox(width: width * 0.05),
                                Text(
                                  "sajid awan",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: width * 0.05),
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
                                SizedBox(width: width * 0.0125),
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
                                Image(image: AssetImage('assets/trophyy.png')),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,

                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 3,
                                    horizontal: 15,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xff9F02FF),
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Vistors',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
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
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Folllowing',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
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
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Fans',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
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
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildTabButton(0, "Honor"),
                        buildTabButton(1, "Relationship"),
                        buildTabButton(2, "Moment"),
                      ],
                    ),
                    SizedBox(height: height * 0.01),

                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          buildTabContainer("Guardian (0)"),
                          buildTabContainer("Relationship Tab"),
                          buildTabContainer("Moment Tab"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 710),
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
      ),
    );
  }

  Widget buildTabButton(int index, String title) {
    bool isSelected = _tabController.index == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _tabController.index = index;
        });
      },
      child: Container(
        height: height * 0.05,
        width: width * 0.3,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1), // White border
          borderRadius: BorderRadius.circular(22),
          gradient:
              isSelected
                  ? LinearGradient(
                    colors: [
                      Color(0xFFFF00FF),
                      Color(0xFF8000FF),
                    ], // Extracted gradient
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  )
                  : null, // No gradient when unselected
          color: isSelected ? null : Colors.transparent, // Inactive tab color
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTabContainer(String title) {
    return Container(
      width: width * 0.9,
      height: height * 0.4,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        // White border
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          buildListItem(title: "Medal", subtitle: "No Medal", trailing: "More"),
          SizedBox(height: 20),
          buildListItem(title: "Vehicle", trailing: "Vehicle"),
          SizedBox(height: 20),
          buildListItem(title: "Frames", trailing: "Store"),
        ],
      ),
    );
  }

  Widget buildListItem({
    required String title,
    String? subtitle,
    required String trailing,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (subtitle != null)
              Text(
                subtitle,
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
          ],
        ),
        Row(
          children: [
            Text(
              trailing,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 5),
            Icon(Icons.chevron_right, color: Colors.white, size: 20),
          ],
        ),
      ],
    );
  }
}
