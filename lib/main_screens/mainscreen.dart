import 'package:driver/constants/app_colors.dart';
import 'package:driver/tabpages/earning_tab.dart';
import 'package:driver/tabpages/home_tab.dart';
import 'package:driver/tabpages/profile_tab.dart';
import 'package:driver/tabpages/rating_tab.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;
  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: color,
      body: IndexedStack(children: const [
        HomeTabpage(),
        EarningTabPage(),
        RatingTabPage(),
        profileTabPage()
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              // backgroundColor: Colors.black,
              icon: Icon(Icons.home_max_rounded),
              label: 'Home'),
          BottomNavigationBarItem(
              // backgroundColor: Colors.black,
              icon: Icon(Icons.credit_card_rounded),
              label: 'My Earn'),
          BottomNavigationBarItem(
              // backgroundColor: Colors.black,
              icon: Icon(Icons.star_border_rounded),
              label: 'Ratings'),
          BottomNavigationBarItem(
              // backgroundColor: Colors.black,
              icon: Icon(
                Icons.person_2_rounded,
              ),
              label: 'Profile')
        ],
        unselectedItemColor: Colors.amber,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,

        backgroundColor: navBarColor,
        //  const Color.fromARGB(255, 187, 77, 77),
        selectedLabelStyle: TextStyle(fontSize: 14),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemClicked,
      ),
      //  Container(
      //   decoration: BoxDecoration(
      //       image: DecorationImage(
      //           image: AssetImage('asset/taxi app2.jpg'), fit: BoxFit.cover)),
      // ),
    );
  }
}
