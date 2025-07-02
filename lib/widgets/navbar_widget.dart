import 'package:e_wms_mobile/constants/color.dart';
import 'package:e_wms_mobile/constants/size.dart';
import 'package:e_wms_mobile/main.dart';
import 'package:e_wms_mobile/widgets/locate_widget.dart';
import 'package:flutter/material.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double iconSize = 32;
    final navBarColor = ColorConstant.divider;

    return Container(
      height: AppSizeStyle.naviBarHeight(context),
      width: AppSizeStyle.naviBarWidth(context),
      padding: EdgeInsets.all(5),
      color: navBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LandingPage()),
              );
              print('Tap Home Button');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 2,
              children: [
                Icon(Icons.home_rounded, size: iconSize),
                Text('Home', style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LocateBootom()),
              );
              print('Tap Locate Button');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 2,
              children: [
                Icon(Icons.location_searching, size: iconSize),
                Text('Locate', style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Tap Token Button');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 2,
              children: [
                Icon(Icons.token, size: iconSize),
                Text('Token', style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Tap Redeem');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 2,
              children: [
                Icon(Icons.redeem, size: iconSize),
                Text('Redeem', style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Tap Profile');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 2,
              children: [
                Icon(Icons.person, size: iconSize),
                Text('Profile', style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
