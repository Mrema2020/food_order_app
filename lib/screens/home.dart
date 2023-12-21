import 'package:fancy_bottom_navigation_plus/fancy_bottom_navigation_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/home/menu.dart';
import 'package:food_order_app/widgets/colors.dart';
import 'package:food_order_app/home/dashboard.dart';

import '../widgets/size_config.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  Widget? _getpage(int page) {
    print("Tatizo ${SizeConfig.textMultiplier}");
    switch (page) {
      case 0:
        return const DashboardPage();
      case 1:
        return const MenuScreen();
      case 2:
        return Center(
          child: Text("Welcome to $page page"),
        );
      case 3:
        return Center(
          child: Text("Welcome to $page page"),
        );
      case 4:
        return Center(
          child: Text("Welcome to $page page"),
        );
      default:
        const DashboardPage();
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getpage(_selectedIndex),
      bottomNavigationBar: FancyBottomNavigationPlus(
        circleColor: AppColors.secondaryColor,
        barBackgroundColor: Colors.white,
        tabs: [
          TabData(icon: const Icon(Icons.home), title: "Home"),
          TabData(icon: const Icon(Icons.menu), title: "Menu"),
          TabData(icon: const Icon(Icons.gps_fixed), title: "Track Order"),
          TabData(icon: const Icon(Icons.favorite), title: "Favorite"),
          TabData(icon: const Icon(Icons.more_horiz), title: "More"),
        ],
        onTabChangedListener: (position) {
          setState(() {
            _selectedIndex = position;
          });
        },
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Tab Content'),
    );
  }
}

class OrderTab extends StatelessWidget {
  const OrderTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Order Tab Content'),
    );
  }
}

class TrackOrderTab extends StatelessWidget {
  const TrackOrderTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Track Order Tab Content'),
    );
  }
}

class MoreTab extends StatelessWidget {
  const MoreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('More Tab Content'),
    );
  }
}
