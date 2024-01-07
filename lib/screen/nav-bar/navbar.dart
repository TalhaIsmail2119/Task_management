// import 'package:day26/screen/nav-bar/calender.dart';
// import 'package:day26/screen/nav-bar/my_task.dart';
// import 'package:day26/screen/nav-bar/profile.dart';
// import 'package:day26/screen/nav-bar/project.dart';
// import 'package:day26/widget/common_widget.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:work_1/screen/nav-bar/calender.dart';
import 'package:work_1/screen/nav-bar/my_task.dart';
import 'package:work_1/screen/nav-bar/profile.dart';
import 'package:work_1/screen/nav-bar/project.dart';
import 'package:work_1/widget/common_widget.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({Key? key}) : super(key: key);

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  PageController? pageController =PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Container(
        width: double.infinity,
        child: PageView(
          controller: pageController,

          children: [MyTask(), Calender(), Project(), Profile()],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 90,
        color: cardClr,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            navBarButton(
                img: "assets/task.svg",
                title: "My Task",
                onTap: () {
                  pageController!.jumpToPage(0);
                  setState(() {});
                }),
            navBarButton(
                img: "assets/calender.svg",
                title: "My Task",
                onTap: () {
                  pageController!.jumpToPage(1);
                  setState(() {});
                }),
            navBarButton(
                img: "assets/project.svg",
                title: "My Task",
                onTap: () {
                  pageController!.jumpToPage(2);
                  setState(() {});
                }),
            navBarButton(
                img: "assets/task.svg",
                title: "My Task",
                onTap: () {
                  pageController!.jumpToPage(3);
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }

  InkWell navBarButton({String? img, String? title, VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SvgPicture.asset("$img"),
          SizedBox(
            height: 10,
          ),
          Text(
            "$title",
            style: myStyle(12, textClrLight),
          )
        ],
      ),
    );
  }
}
