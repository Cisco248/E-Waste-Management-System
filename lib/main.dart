import 'package:flutter/material.dart';
import 'package:e_wms_mobile/themes/theme.dart';
import 'widgets/export_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Waste Management System',
      themeMode: ThemeMode.system,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      home: BottomSection(title: 'waste'),
    );
  }
}

class BottomSection extends StatefulWidget {
  const BottomSection({super.key, required this.title});
  final String title;

  @override
  State<BottomSection> createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      left: true,
      right: true,
      minimum: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentGeometry.xy(-1, 0),
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
      ),
    );
  }
}
