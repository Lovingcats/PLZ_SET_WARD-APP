import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plz_set_ward_app/screens/bottombar/champion.dart';
import 'package:plz_set_ward_app/screens/bottombar/combination.dart';
import 'package:plz_set_ward_app/screens/bottombar/community.dart';
import 'package:plz_set_ward_app/screens/bottombar/profile.dart';
import 'package:plz_set_ward_app/screens/bottombar/search.dart';

import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(378, 844),
      builder: (BuildContext context, Widget? child) => const MaterialApp(
          title: '와드좀 박아라', debugShowCheckedModeBanner: false, home: MyPage()),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final TextEditingController _searchController = TextEditingController();
  dynamic selected;
  var heart = false;
  PageController controller = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        //바텀바 코드
        length: 5,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBody: true,
          bottomNavigationBar: StylishBottomBar(
            items: [
              AnimatedBarItems(
                  icon: Icon(
                    Icons.search,
                    size: 23.w,
                  ),
                  selectedIcon: Icon(
                    Icons.search,
                    size: 23.w,
                  ),
                  selectedColor: const Color(0xffFFA030),
                  backgroundColor: const Color(0xffB7B7B7),
                  title: Text(
                    '검색',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  )),
              AnimatedBarItems(
                  icon: Icon(
                    Icons.emoji_events,
                    size: 23.w,
                  ),
                  selectedIcon: Icon(
                    Icons.emoji_events,
                    size: 23.w,
                  ),
                  selectedColor: const Color(0xffFFA030),
                  backgroundColor: const Color(0xffB7B7B7),
                  title: Text(
                    '챔피언',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  )),
              AnimatedBarItems(
                  icon: Icon(
                    Icons.supervised_user_circle,
                    size: 23.w,
                  ),
                  selectedIcon: Icon(
                    Icons.supervised_user_circle,
                    size: 23.w,
                  ),
                  selectedColor: const Color(0xffFFA030),
                  backgroundColor: const Color(0xffB7B7B7),
                  title: Text(
                    '조힙',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  )),
              AnimatedBarItems(
                  icon: Icon(
                    Icons.people,
                    size: 23.w,
                  ),
                  selectedIcon: Icon(
                    Icons.people,
                    size: 23.w,
                  ),
                  selectedColor: const Color(0xffFFA030),
                  backgroundColor: const Color(0xffB7B7B7),
                  title: Text(
                    '커뮤니티',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  )),
              AnimatedBarItems(
                  icon: Icon(
                    Icons.account_circle,
                    size: 23.w,
                  ),
                  selectedIcon: Icon(
                    Icons.account_circle,
                    size: 23.w,
                  ),
                  selectedColor: const Color(0xffFFA030),
                  backgroundColor: const Color(0xffB7B7B7),
                  title: Text(
                    '프로필',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  )),
            ],
            iconStyle: IconStyle.Default,
            hasNotch: true,
            // fabLocation: StylishBarFabLocation.end,
            opacity: 0.3,
            currentIndex: selected ?? 0,
            onTap: (index) {
              controller.jumpToPage(index!);
              setState(() {
                selected = index;
              });
            },
          ),
          body: SafeArea(
            child: PageView(
              controller: controller,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: ((value) {
                if (value == 0) {
                  setState(() {
                    selected = 0;
                  });
                } else if (value == 1) {
                  setState(() {
                    selected = 1;
                  });
                } else if (value == 2) {
                  setState(() {
                    selected = 2;
                  });
                }
              }),
              children: const [
                Search(),
                Champion(),
                Combination(),
                Community(),
                Profile()
              ],
            ),
          ),
        ));
  }
}
