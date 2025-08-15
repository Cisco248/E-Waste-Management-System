import 'package:e_wms_mobile/constants/color.dart';
import 'package:e_wms_mobile/constants/size.dart';
import 'package:flutter/material.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizeStyle.naviBarHeight(context),
      width: AppSizeStyle.naviBarWidth(context),
      padding: EdgeInsets.all(5),
      color: ColorConstant.divider,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 2,
              children: [
                Icon(Icons.home_rounded, size: IconSize.size_32),
                Text("Home", style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/locate');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 2,
              children: [
                Icon(Icons.location_searching, size: IconSize.size_32),
                Text('Locate', style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/token');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 2,
              children: [
                Icon(Icons.token, size: IconSize.size_32),
                Text('Token', style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/redeem');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 2,
              children: [
                Icon(Icons.redeem, size: IconSize.size_32),
                Text('Redeem', style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 2,
              children: [
                Icon(Icons.person, size: IconSize.size_32),
                Text('Profile', style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
