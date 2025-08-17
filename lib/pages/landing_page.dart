import 'package:e_wms_mobile/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:e_wms_mobile/widgets/card_large.dart';
import 'package:e_wms_mobile/widgets/card_medium.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});
  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        fit: StackFit.passthrough,
        children: [
          Align(alignment: Alignment.bottomCenter, child: LandingBottom()),
        ],
      ),
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
          topEnd: Radius.circular(50),
          topStart: Radius.circular(50),
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentGeometry.xy(-0.9, 1),
                child: Text('Goal', style: TextStyle(fontSize: 20)),
              ),
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
              Align(
                alignment: AlignmentGeometry.directional(-0.9, 1),
                child: Text('News', style: TextStyle(fontSize: 20)),
              ),
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
              Align(
                alignment: AlignmentGeometry.directional(-0.9, 1),
                child: Text('Announcement', style: TextStyle(fontSize: 20)),
              ),
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
