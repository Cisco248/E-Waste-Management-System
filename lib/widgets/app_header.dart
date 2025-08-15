import 'dart:async';
import 'package:e_wms_mobile/constants/size.dart';
import 'package:e_wms_mobile/constants/text.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatefulWidget {
  final String userName;
  final int tokenValue;
  final ImageProvider img;

  const AppHeader({
    super.key,
    required this.userName,
    required this.tokenValue,
    required this.img,
  });

  @override
  State<AppHeader> createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader> {
  late Timer timer;

  String setGreeting() {
    var time = DateTime.now().hour;

    if (time >= 5 && time <= 12) {
      return appGreeting.firstWhere(
        (g) => g.containsKey('Morning'),
      )['Morning']!;
    } else if (time >= 12 && time < 17) {
      return appGreeting.firstWhere(
        (g) => g.containsKey('Afternoon'),
      )['Afternoon']!;
    } else if (time >= 17 && time < 21) {
      return appGreeting.firstWhere(
        (g) => g.containsKey('Evening'),
      )['Evening']!;
    } else {
      return appGreeting.firstWhere((g) => g.containsKey('Night'))['Night']!;
    }
  }

  @override
  void initState() {
    setGreeting();
    timer = Timer.periodic(const Duration(hours: 1), (_) {
      setState(() {
        setGreeting();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizeStyle.headerBarHeight(context),
      width: AppSizeStyle.headerBarWidth(context),
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
                  image: DecorationImage(image: widget.img, fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(setGreeting()), Text(widget.userName)],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundColor: Colors.white, radius: 16),
              SizedBox(height: 5),
              Text(widget.tokenValue.toString()),
            ],
          ),
        ],
      ),
    );
  }
}

class LandingTop extends StatelessWidget {
  const LandingTop({
    super.key,
    required this.userName,
    required this.tokenValue,
  });

  final String userName;
  final int tokenValue;

  @override
  Widget build(BuildContext context) {
    String setGreeting() {
      var time = DateTime.now().hour;

      if (time >= 5 && time <= 12) {
        return appGreeting.firstWhere(
          (g) => g.containsKey('Morning'),
        )['Morning']!;
      } else if (time >= 12 && time < 17) {
        return appGreeting.firstWhere(
          (g) => g.containsKey('Afternoon'),
        )['Afternoon']!;
      } else if (time >= 17 && time < 21) {
        return appGreeting.firstWhere(
          (g) => g.containsKey('Evening'),
        )['Evening']!;
      } else {
        return appGreeting.firstWhere((g) => g.containsKey('Night'))['Night']!;
      }
    }

    return SizedBox(
      height: AppSizeStyle.headerBarHeight(context),
      width: AppSizeStyle.headerBarWidth(context),
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
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(setGreeting()), Text(userName)],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundColor: Colors.white, radius: 16),
              SizedBox(height: 5),
              Text(tokenValue.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
