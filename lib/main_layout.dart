import 'package:e_wms_mobile/constants/color.dart';
import 'package:e_wms_mobile/pages/landing_page.dart';
import 'package:e_wms_mobile/pages/locate_page.dart';
import 'package:e_wms_mobile/pages/profile_page.dart';
import 'package:e_wms_mobile/pages/redeem_page.dart';
import 'package:e_wms_mobile/pages/token_page.dart';
import 'package:e_wms_mobile/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});
  static const route = '/home';

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int currentIndex = 0;
  Widget navigationLink() {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                spacing: 10,
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Good Morning,',
                        style: TextStyle(color: ColorConstant.textPrimary),
                      ),
                      Text(
                        'User Name',
                        style: TextStyle(color: ColorConstant.textPrimary),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(backgroundColor: Colors.black, radius: 16),
                  SizedBox(height: 5),
                  Text(
                    'Token: 0',
                    style: TextStyle(color: ColorConstant.textPrimary),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: navigationLink(),
      bottomNavigationBar: NavBarWidget(
        currentIndex: currentIndex,
        onTabSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
