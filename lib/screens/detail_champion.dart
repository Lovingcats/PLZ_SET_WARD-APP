import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailChampion extends StatefulWidget {
  const DetailChampion({super.key});

  @override
  State<DetailChampion> createState() => _DetailChampionState();
}

class _DetailChampionState extends State<DetailChampion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Center(
            child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 260.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.r),
                      bottomRight: Radius.circular(50.r),
                    ),
                    child: Image.asset(
                      "images/jin.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned.fill(
                    child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.r),
                    bottomRight: Radius.circular(50.r),
                  ),
                  child: Opacity(
                    opacity: 0.3,
                    child: Container(
                      color: const Color(0xFF000000),
                    ),
                  ),
                )),
                Positioned.fill(
                  child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 85.h,
                          ),
                          Text(
                            "진",
                            style: TextStyle(
                                fontSize: 36.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "J   H   I   N",
                            style:
                                TextStyle(fontSize: 15.sp, color: Colors.white),
                          )
                        ],
                      )),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.h, left: 70.w, right: 70.w, bottom: 40.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 35.h,
                    width: 35.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.r),
                      ),
                      child: Image.asset(
                        "images/skill1.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                    width: 35.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.r),
                      ),
                      child: Image.asset(
                        "images/skill2.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                    width: 35.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.r),
                      ),
                      child: Image.asset(
                        "images/skill3.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                    width: 35.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.r),
                      ),
                      child: Image.asset(
                        "images/skill4.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                    width: 35.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.r),
                      ),
                      child: Image.asset(
                        "images/skill5.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )));
  }
}
