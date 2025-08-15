import 'package:e_wms_mobile/pages/landing_page.dart';
import 'package:e_wms_mobile/pages/locate_page.dart';
import 'package:e_wms_mobile/pages/profile_page.dart';
import 'package:e_wms_mobile/pages/redeem_page.dart';
import 'package:e_wms_mobile/pages/token_page.dart';
import 'package:flutter/material.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('data'), backgroundColor: Colors.red),
      body: () {
        if (currentIndex == 0) {
          return Center(child: LandingPage());
        } else if (currentIndex == 1) {
          return Center(child: LocateBinPage());
        } else if (currentIndex == 2) {
          return Center(child: TokenGeneratePage());
        } else if (currentIndex == 3) {
          return Center(child: RedeemPage());
        } else {
          return Center(child: ProfilePage());
        }
      }(),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home_filled), label: 'Home'),
          NavigationDestination(
            icon: Icon(Icons.my_location_outlined),
            label: 'Locate',
          ),
          NavigationDestination(
            icon: Icon(Icons.token_outlined),
            label: 'Token',
          ),
          NavigationDestination(
            icon: Icon(Icons.redeem_outlined),
            label: 'Redeem',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
