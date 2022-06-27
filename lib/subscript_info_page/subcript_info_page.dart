import 'package:flutter/material.dart';
import 'package:flutter_application_1/utills/constans.dart';
import 'package:flutter_application_1/subscript_info_page/widgets/border_button.dart';
import 'package:flutter_application_1/subscript_info_page/widgets/line_dash.dart';
import 'package:flutter_application_1/subscript_info_page/widgets/ticket_clipper.dart';

class SubscriptInfoPage extends StatelessWidget {
  const SubscriptInfoPage({Key? key}) : super(key: key);

  final Color textColor1 = const Color(0xffA2A2B5);
  final LinearGradient _gradient = const LinearGradient(
      colors: [Colors.white24, Colors.transparent],
      transform: GradientRotation(45));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E0E12),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: ClipPath(
            clipper: TicketClipper(),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xff353542),
                  borderRadius: BorderRadius.circular(24)),
              child: LayoutBuilder(
                builder: ((context, constraints) => Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      splashRadius: 20,
                                      icon: Image.asset(
                                        'assets/ic_arrow_down.png',
                                        height: 24,
                                        width: 24,
                                      )),
                                  Text(
                                    'Subscription info',
                                    style:
                                        kTextStyle(color: textColor1, size: 16),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'assets/ic_trash.png',
                                        height: 24,
                                        width: 24,
                                      )),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 25),
                                child: Image.asset(
                                  'assets/spotify_logo.png',
                                  height: 106,
                                  width: 106,
                                ),
                              ),
                              Text(
                                'Spotify',
                                style: kTextStyle(
                                    size: 32, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '\$5.99',
                                style: kTextStyle(
                                    size: 20,
                                    color: textColor1,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: constraints.maxHeight / 2.2),
                          child: ListView(
                            children: [
                              const LineDash(
                                color: Color(0xff0E0E12),
                              ),
                              Container(
                                width: double.infinity,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 30),
                                child: UnicornOutlineButton(
                                  gradient: _gradient,
                                  strokeWidth: 1,
                                  radius: 16,
                                  onPressed: () {},
                                  bgColor: const Color(0xff30303d),
                                  child: Column(
                                    children: [
                                      _itemButton("Category", "Spotify"),
                                      _itemButton("Description", "Music app"),
                                      _itemButton("Category", "Enterteintment"),
                                      _itemButton(
                                          "First payment", "08.01.2022"),
                                      _itemButton("Reminder", "Never"),
                                      _itemButton("Currency", "USD (\$)"),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(20.0),
                                alignment: Alignment.center,
                                width: 288,
                                height: 48,
                                decoration:  BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Color(0xff30303d),
                                ),
                                  child: Text(
                                "Save",
                                style: kTextStyle(
                                    color: Colors.white,
                                    size: 14),
                              ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding _itemButton(String text1, String text2) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
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
              style: kTextStyle(
                  color: Color.fromARGB(96, 247, 244, 244), size: 12),
            ),
            const SizedBox(width: 10,),
            Image.asset(
              'assets/Vector.png',
              height: 12,
              width: 6,
            )
          ],
        ),
      ),
    );
  }
}
