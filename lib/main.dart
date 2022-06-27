import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utills/routes.dart';

// void main() {
//   runApp(const LessonApp());
// }

// class LessonApp extends StatelessWidget {
//   const LessonApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // theme: ThemeData(
//       //   textTheme: GoogleFonts.robotoTextTheme(),
//       //   primaryTextTheme: GoogleFonts.robotoTextTheme(),
//       //   accentTextTheme: GoogleFonts.robotoTextTheme()
//       // ),
//       onGenerateRoute: (settings) => Routes.generateRoute(settings),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_1/subscript_info_page/widgets/line_dash.dart';
import 'package:flutter_application_1/utills/constans.dart';
import 'package:flutter_application_1/subscript_info_page/widgets/border_button.dart';
import 'package:flutter_application_1/subscript_info_page/widgets/my_clipper.dart';

void main() {
  runApp(MaterialApp(home: SubscriptInfoPage()));
}

class SubscriptInfoPage extends StatelessWidget {
  bool _switchValue = false;
  SubscriptInfoPage({Key? key}) : super(key: key);
  final Color textColorWhite = const Color(0xffffffff);
  final Color textColor1 = const Color(0xffA2A2B5);
  final LinearGradient _gradient = const LinearGradient(
      colors: [Colors.white24, Colors.transparent],
      transform: GradientRotation(45));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
          style: kTextStyle(color: const Color(0xffA2A2B5), size: 16),
        ),
        leading: Image.asset(
          'assets/vectors.png',
          height: 24,
          width: 12,
        ),
        backgroundColor: Color(0xff000000),
      ),
      backgroundColor: Color(0xff000000),
      body: ListView(
        padding: EdgeInsets.all(25),
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(36),
                child: Image.asset(
                  'assets/image.png',
                  width: 72,
                  height: 72,
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              Text(
                'John Doe',
                style: kTextStyle(
                    color: Colors.white, size: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'j.doe@gmail.com',
                style: kTextStyle(color: Color(0xffA2A2B5), size: 12),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff30303d))),
                    onPressed: () {},
                    child: Text(
                      'Edit profile',
                      style: kTextStyle(
                          color: Colors.white,
                          size: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              _itemText("General"),
              // TextButton(onPressed: onPressed, child: child),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: Color(0xff4E4E61),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 320,
                child: Column(
                  children: [
                    _itemButton('assets/FaceID.png', "Security", "FaceID"),
                    _itemSwitchButton('assets/iCloud.png', "iCloud Sync"),
                  ],
                ),
              ),
              _itemText("My subscriptions"),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: Color(0xff4E4E61),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 320,
                child: Column(
                  children: [
                    _itemButton('assets/sorting.png', "Sorting", "Date"),
                    _itemButton('assets/chart.png', "Summary", "Average"),
                    _itemButton(
                        'assets/money.png', "Default currency", "USD (\$)"),
                  ],
                ),
              ),
              _itemText("Appearance"),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: Color(0xff4E4E61),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 320,
                child: Column(
                  children: [
                    _itemButton('assets/app_icon.png', "App icon", "Default"),
                    _itemButton('assets/light_theme.png', "Theme", "Dark"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _itemText(String text) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: kTextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
  }

  Container _itemButton(String src, String text1, String text2) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            src,
            height: 15,
            width: 15,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text1,
            style: kTextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 100,
          ),
          Text(
            text2,
            style:
                kTextStyle(color: Color.fromARGB(96, 247, 244, 244), size: 12),
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/Vector.png',
            height: 12,
            width: 6,
          ),
        ],
      ),
    );
  }

  Container _itemSwitchButton(String src, String text1) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            src,
            height: 15,
            width: 15,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text1,
            style: kTextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 100,
          ),
          CupertinoSwitch(
            value: _switchValue, onChanged: (bool value) {  },
          ),
        ],
      ),
    );
  }
}
