import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'sidebar_container.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Members",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5),
          Container(
            child: Text("CEO : JongHyeok Kim - jjrobot.hyeok@gmail.com"),
          ),
          SizedBox(height: 15),
          Container(
            child: Text("CEO : JongBeen Kim - jjrobot.been@gmail.com"),
          ),
          SizedBox(height: 15),
          Container(
            child: Text("Second CEO : MinSeong Kang - jjrobot.seoung@gmail.com"),
          ),
          // Category(
          //   title: 'CEO : JongHyeok Kim (jjrobot.hyeok@gmail.com)',
          //   numOfItems: 1,
          //   press: () {},
          // ),
          // Category(
          //   title: 'Augmented reality',
          //   numOfItems: 4,
          //   press: () {},
          // ),
          // Category(
          //   title: 'Development',
          //   numOfItems: 10,
          //   press: () {},
          // ),
          // Category(
          //   title: 'Flutter UI',
          //   numOfItems: 18,
          //   press: () {},
          // ),
          // Category(
          //   title: 'Technology',
          //   numOfItems: 12,
          //   press: () {},
          // ),
          // Category(
          //   title: 'UI/UX Design',
          //   numOfItems: 8,
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback press;
  const Category({
    Key? key,
    required this.title,
    required this.numOfItems,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: () {},
        child: Text.rich(
          TextSpan(
            text: title,
            style: TextStyle(color: kDarkBlackColor),
            children: [
              TextSpan(
                text: " ($numOfItems)",
                style: TextStyle(color: kBodyTextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
