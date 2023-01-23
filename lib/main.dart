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
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: null,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 91.h, bottom: 56.h),
                child: Text(
                  "WITH.GG",
                  style: TextStyle(
                      fontSize: 36.sp,
                      color: const Color(0xffFFB35A),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 39.w, right: 39.w),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(
                        width: 0.w,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(
                        color: const Color(0xffAEAEAE), fontSize: 15.sp),
                    hintText: "챔피언, 소환사명 검색",
                    contentPadding: const EdgeInsets.all(0),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 23.h,
                      color: const Color(0xffAEAEAE),
                    ),
                    fillColor: const Color(0xffF2F2F2),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
