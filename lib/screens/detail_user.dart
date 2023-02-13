import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailUser extends StatefulWidget {
  const DetailUser({super.key});

  @override
  State<DetailUser> createState() => _DetailUserState();
}

class _DetailUserState extends State<DetailUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Center(
            child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 260.h,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/jin.jpg"),
                          fit: BoxFit.fill)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1.6, sigmaY: 1.6),
                    child: Container(color: Colors.black.withOpacity(0.1)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 259.h),
                  child: Container(
                    height: 1.2.h,
                    width: double.infinity,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 32.h, left: 8.w),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 22.h,
                        color: Colors.white,
                      )),
                ),
                ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.r),
                        ),
                        child: Image.asset(
                          "images/skill1.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
              ],
            ),
          ],
        )));
  }
}
