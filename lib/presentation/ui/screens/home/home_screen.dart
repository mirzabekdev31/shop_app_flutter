import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_flutter/presentation/ui/screens/home/pages/backet_page.dart';
import 'package:shop_app_flutter/presentation/ui/screens/home/pages/home_page.dart';
import 'package:shop_app_flutter/presentation/ui/screens/home/pages/like_page.dart';
import 'package:shop_app_flutter/presentation/ui/screens/home/pages/profile_page.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="home_screen";
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;

  int _currentTab = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          HomePage(),
          LikePage(),
          BacketPage(),
          ProfilePage()
        ],
        onPageChanged: (int index) {
          setState(() {
            _currentTab = index;
          });
        },
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: (int index) {
          _currentTab = index;
          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
        },
        currentIndex: _currentTab,
        activeColor: Colors.yellow,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}