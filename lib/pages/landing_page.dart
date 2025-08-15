import 'package:e_wms_mobile/constants/size.dart';
import 'package:e_wms_mobile/widgets/app_header.dart';
import 'package:e_wms_mobile/widgets/card_large.dart';
import 'package:e_wms_mobile/widgets/card_medium.dart';
import 'package:e_wms_mobile/widgets/navbar_widget.dart';
import 'package:e_wms_mobile/widgets/text_divider_widget.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        fit: StackFit.passthrough,
        children: [
          AppHeader(
            userName: 'Cisco248',
            tokenValue: 12,
            img: AssetImage('lib/images/ravi.jpg'),
          ),
          Align(alignment: Alignment.bottomCenter, child: LandingBottom()),
        ],
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}

class LandingBottom extends StatefulWidget {
  const LandingBottom({super.key});

  @override
  State<LandingBottom> createState() => _LandingBottomState();
}

class _LandingBottomState extends State<LandingBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, right: 16, left: 16),
      clipBehavior: Clip.hardEdge,
      height: AppSizeStyle.landingBottomHeight(context),
      width: AppSizeStyle.landingBottomWidth(context),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(30),
          topStart: Radius.circular(30),
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextDividerWidget(text: 'Goal'),
              Column(
                spacing: 0,
                children: [
                  CardMedium(
                    img: AssetImage('lib/images/ravi.jpg'),
                    title: 'Card One',
                    description: 'Description Two',
                  ),
                  CardMedium(
                    img: AssetImage('lib/images/ravi.jpg'),
                    title: 'Card One',
                    description: 'Description Two',
                  ),
                ],
              ),
              TextDividerWidget(text: 'News'),
              Column(
                spacing: 0,
                children: [
                  CardMedium(
                    img: AssetImage('lib/images/ravi.jpg'),
                    title: 'Card One',
                    description: 'Description Two',
                  ),
                  CardMedium(
                    img: AssetImage('lib/images/ravi.jpg'),
                    title: 'Card One',
                    description: 'Description Two',
                  ),
                ],
              ),
              TextDividerWidget(text: 'Announcement'),
              Column(
                spacing: 0,
                children: [
                  CardLarge(
                    img: AssetImage('lib/images/ravi.jpg'),
                    title: 'Card Title One',
                    description: 'Card Description One',
                  ),
                  CardLarge(
                    img: AssetImage('lib/images/ravi.jpg'),
                    title: 'Card Title One',
                    description: 'Card Description One',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
