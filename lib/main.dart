import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plz_set_ward_app/common/common.dart';
import 'package:plz_set_ward_app/screens/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return ScreenUtilInit(
      designSize: const Size(414, 736),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 220.h,
            ),
            Image.asset(
              "images/tier.jfif",
              scale: 1.3.r,
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "바텀 듀오 뭐하실건가요?",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "With.GG ",
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w600,
                      color: CommonColor.orange),
                ),
                Text(
                  "에서 확인해보세요!",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 130.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 60.w, right: 60.w),
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => const MyPage()));

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Loading()));
                },
                // ignore: sort_child_properties_last
                child: Text(
                  "보러가기",
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: CommonColor.orange,
                      fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 45.h),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.0, color: CommonColor.orange),
                      borderRadius: BorderRadius.circular(20.h)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
