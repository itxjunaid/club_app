import 'package:club_app/main.dart';
import 'package:flutter/material.dart';

class Tabscreen extends StatefulWidget {
  const Tabscreen({super.key});

  @override
  State<Tabscreen> createState() => _TabscreenState();
}

class _TabscreenState extends State<Tabscreen>
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
    return Scaffold(
      backgroundColor: Color(0xFF060479), // Dark blue background
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Separate containers for each tab button
            buildTabButton(0, "Honor"),
            SizedBox(height: 10),
            buildTabButton(1, "Relationship"),
            SizedBox(height: 10),
            buildTabButton(2, "Moment"),
            SizedBox(height: 20),

            // Tab Bar View (Content for each tab)
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  buildTabContainer("Honor Tab"),
                  buildTabContainer("Relationship Tab"),
                  buildTabContainer("Moment Tab"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Individual tab button inside a separate bordered container
  Widget buildTabButton(int index, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _tabController.index = index;
        });
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2), // White border
          borderRadius: BorderRadius.circular(25),
          color:
              _tabController.index == index
                  ? Colors
                      .purple // Active tab color
                  : Colors.transparent, // Inactive tab color
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // Container for each tab's content
  Widget buildTabContainer(String title) {
    return Container(
      width: width * 0.9,
      height: height * 0.4,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2), // White border
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
