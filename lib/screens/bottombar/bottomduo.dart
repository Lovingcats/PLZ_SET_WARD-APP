import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plz_set_ward_app/common/common.dart';
import 'package:plz_set_ward_app/model/rank.dart';
import 'package:plz_set_ward_app/widget/ranking.dart';

class BottomDuo extends StatefulWidget {
  final List<Rank> ranks;
  const BottomDuo({super.key, required this.ranks});

  @override
  State<BottomDuo> createState() => _BottomDuoState();
}

class _BottomDuoState extends State<BottomDuo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25.h, left: 20.w, bottom: 20.h),
                  child: Text(
                    "바텀 듀오 티어",
                    style: TextStyle(
                        fontSize: 28.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Container(
                width: double.infinity,
                height: 38.h,
                decoration: BoxDecoration(
                    color: CommonColor.orange,
                    borderRadius: BorderRadius.all(Radius.circular(7.r))),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 37.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Text(
                          "티어",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.white,
                            fontFamily: "Roboto",
                          ),
                        ),
                      ),
                      Text(
                        "챔프",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontFamily: "Roboto",
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "승률",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontFamily: "Roboto",
                        ),
                      ),
                      Text(
                        "밴률",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            TierRank(ranks: widget.ranks)
          ],
        ),
      ),
    );
  }
}
