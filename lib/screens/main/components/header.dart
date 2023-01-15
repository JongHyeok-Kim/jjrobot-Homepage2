import 'package:flutter/material.dart';

// import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:news/controllers/MenuController.dart';
import 'package:news/responsive.dart';

import '../../../constants.dart';
import 'socal.dart';
import 'web_menu.dart';

class Header extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            _controller.openOrCloseDrawer();
                          },
                        ),
                      Image.asset(
                        "assets/images/JJ ROBOT Logo.png",
                        width: 80,
                        height: 80,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "(주) JJ ROBOT",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),
                      Spacer(),
                      // Socal
                      Socal(),
                    ],
                  ),
                  SizedBox(height: kDefaultPadding * 2),
                  Text(
                    "The Fully Automated ROBOT",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultPadding),
                    child: Text(
                      "자동화 산업 로봇, 4차 산업 혁명."
                      "\n인간이 하기 힘든 일들."
                      "\n인간이 하기 싫은 일들."
                      "\n점점 높아져만 가는 인건비."
                      "\n점점 생산율 증가, 대량 생산 시 불량율 증가",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        // fontFamily: 'Raleway',
                        height: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultPadding),
                    child: Text(
                      "Double CEO : 김종혁 (Kim Jong Hyeok)\nemail : jjrobot.hyeok@gmail.com"
                      "\n\nDouble CEO : 김종빈 (Kim Jong Been)\nemail : jjrobot.been@gmail.com"
                      "\n\nSecond CEO : 강민승 (Kang Min Seoung)\nemail : jjrobot.seoung@gmail.com"
                      "\n\nManager : 이재섭 (Lee Jae Seob)\nemail : jjrobot.seob@gmail.com"
                      "\n\nGlobal CEO : 조선희 (SenKi Cho)\nemail : jjrobot.senki@gmail.com",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        // fontFamily: 'Raleway',
                        height: 1.5,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "Career List",
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                          SizedBox(width: kDefaultPadding / 2),
                          Icon(
                            Icons.arrow_circle_down,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (Responsive.isDesktop(context))
                    SizedBox(height: kDefaultPadding),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
