import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:plz_set_ward_app/screens/loading.dart';

class RedTeam extends StatefulWidget {
  const RedTeam({super.key});

  @override
  State<RedTeam> createState() => _MyPageState();
}

class _MyPageState extends State<RedTeam> {
  bool dragon1 = true;
  bool dragon2 = false;
  bool dragon3 = false;
  bool dragon4 = false;
  bool baron1 = true;
  bool baron2 = false;
  bool herit1 = true;
  bool herit2 = false;
  bool elder1 = false;
  bool elder2 = false;

  bool dragonend = false;
  bool elderend = false;
  bool baronend = false;
  bool heritend = false;

  @override
  Widget build(BuildContext context) {
    void flutterDialog() {
      showDialog(
          context: context,
          //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
          barrierDismissible: false,
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return AlertDialog(
                  // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  //Dialog Main Title
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: const Text("용 갯수 입력")),
                    ],
                  ),

                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                dragon1 = true;
                                dragon2 = false;
                                dragon3 = false;
                                dragon4 = false;
                              });
                              setState(() {});
                            },
                            // ignore: sort_child_properties_last
                            child: Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: dragon1 ? Colors.white : Colors.black,
                                  fontFamily: "Pretendard"),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  dragon1 ? Colors.blueAccent : null,
                              minimumSize: Size(30.w, 30.h),
                              shape: const CircleBorder(),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                dragon1 = false;
                                dragon2 = true;
                                dragon3 = false;
                                dragon4 = false;
                              });
                              setState(() {});
                            },
                            // ignore: sort_child_properties_last
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: dragon2 ? Colors.white : Colors.black,
                                  fontFamily: "Pretendard"),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  dragon2 ? Colors.blueAccent : null,
                              minimumSize: Size(30.w, 30.h),
                              shape: const CircleBorder(),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                dragon1 = false;
                                dragon2 = false;
                                dragon3 = true;
                                dragon4 = false;
                              });
                              setState(() {});
                            },
                            // ignore: sort_child_properties_last
                            child: Text(
                              "3",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: dragon3 ? Colors.white : Colors.black,
                                  fontFamily: "Pretendard"),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  dragon3 ? Colors.blueAccent : null,
                              minimumSize: Size(30.w, 30.h),
                              shape: const CircleBorder(),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                dragon1 = false;
                                dragon2 = false;
                                dragon3 = false;
                                dragon4 = true;
                              });
                              setState(() {});
                            },
                            // ignore: sort_child_properties_last
                            child: Text(
                              "4",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: dragon4 ? Colors.white : Colors.black,
                                  fontFamily: "Pretendard"),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  dragon4 ? Colors.blueAccent : null,
                              minimumSize: Size(30.w, 30.h),
                              shape: const CircleBorder(),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  actions: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: Colors.transparent),
                      child: const Text(
                        "취소",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        setState(() {});
                        Navigator.pop(context);
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: Colors.transparent),
                      child: const Text("확인",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w500)),
                      onPressed: () {
                        setState(() {
                          dragonend = true;
                        });
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            );
          });
    }

    void flutterDialog1() {
      showDialog(
          context: context,
          //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
          barrierDismissible: false,
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return AlertDialog(
                  // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  //Dialog Main Title
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: const Text("바론 횟수 입력")),
                    ],
                  ),

                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 50.w, right: 50.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  baron1 = true;
                                  baron2 = false;
                                });
                                setState(() {});
                              },
                              // ignore: sort_child_properties_last
                              child: Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: baron1 ? Colors.white : Colors.black,
                                    fontFamily: "Pretendard"),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    baron1 ? Colors.blueAccent : null,
                                minimumSize: Size(30.w, 30.h),
                                shape: const CircleBorder(),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  baron1 = false;
                                  baron2 = true;
                                });
                                setState(() {});
                              },
                              // ignore: sort_child_properties_last
                              child: Text(
                                "2",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: baron2 ? Colors.white : Colors.black,
                                    fontFamily: "Pretendard"),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    baron2 ? Colors.blueAccent : null,
                                minimumSize: Size(30.w, 30.h),
                                shape: const CircleBorder(),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  actions: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: Colors.transparent),
                      child: const Text(
                        "취소",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        setState(() {});
                        Navigator.pop(context);
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: Colors.transparent),
                      child: const Text("확인",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w500)),
                      onPressed: () {
                        setState(() {
                          baronend = true;
                        });
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            );
          });
    }

    void flutterDialog2() {
      showDialog(
          context: context,
          //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
          barrierDismissible: false,
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return AlertDialog(
                  // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  //Dialog Main Title
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: const Text("전령 횟수 입력")),
                    ],
                  ),

                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 50.w, right: 50.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  herit1 = true;
                                  herit2 = false;
                                });
                                setState(() {});
                              },
                              // ignore: sort_child_properties_last
                              child: Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: herit1 ? Colors.white : Colors.black,
                                    fontFamily: "Pretendard"),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    herit1 ? Colors.blueAccent : null,
                                minimumSize: Size(30.w, 30.h),
                                shape: const CircleBorder(),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  herit1 = false;
                                  herit2 = true;
                                });
                                setState(() {});
                              },
                              // ignore: sort_child_properties_last
                              child: Text(
                                "2",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: herit2 ? Colors.white : Colors.black,
                                    fontFamily: "Pretendard"),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    herit2 ? Colors.blueAccent : null,
                                minimumSize: Size(30.w, 30.h),
                                shape: const CircleBorder(),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  actions: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: Colors.transparent),
                      child: const Text(
                        "취소",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        setState(() {});
                        Navigator.pop(context);
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: Colors.transparent),
                      child: const Text("확인",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w500)),
                      onPressed: () {
                        setState(() {
                          heritend = true;
                        });
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            );
          });
    }

    void flutterDialog3() {
      showDialog(
          context: context,
          //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
          barrierDismissible: false,
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return AlertDialog(
                  // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  //Dialog Main Title
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: const Text("장로 횟수 입력")),
                    ],
                  ),

                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 50.w, right: 50.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  elder1 = true;
                                  elder2 = false;
                                });
                                setState(() {});
                              },
                              // ignore: sort_child_properties_last
                              child: Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: elder1 ? Colors.white : Colors.black,
                                    fontFamily: "Pretendard"),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    elder1 ? Colors.blueAccent : null,
                                minimumSize: Size(30.w, 30.h),
                                shape: const CircleBorder(),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  elder1 = false;
                                  elder2 = true;
                                });
                                setState(() {});
                              },
                              // ignore: sort_child_properties_last
                              child: Text(
                                "2",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: elder2 ? Colors.white : Colors.black,
                                    fontFamily: "Pretendard"),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    elder2 ? Colors.blueAccent : null,
                                minimumSize: Size(30.w, 30.h),
                                shape: const CircleBorder(),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  actions: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: Colors.transparent),
                      child: const Text(
                        "취소",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        setState(() {});
                        Navigator.pop(context);
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: Colors.transparent),
                      child: const Text("확인",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w500)),
                      onPressed: () {
                        setState(() {
                          elderend = true;
                        });
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            );
          });
    }

    final List<Widget> carouselList = [
      InkWell(
        onTap: () {
          setState(() {
            flutterDialog();
          });
        },
        child: Container(
          height: 300.h,
          width: 300.w,
          padding: EdgeInsets.only(top: 55.h, bottom: 40.h),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1.w),
              borderRadius: BorderRadius.all(Radius.circular(15.r))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "images/dragon.jfif",
                scale: 1.3,
              ),
              Text(
                "먹은 용의 수",
                style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ),
      InkWell(
        onTap: () {
          flutterDialog1();
        },
        child: Container(
          height: 300.h,
          width: 300.w,
          padding: EdgeInsets.only(top: 55.h, bottom: 40.h),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1.w),
              borderRadius: BorderRadius.all(Radius.circular(15.r))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("images/baron.jfif", scale: 1.9),
              Text(
                "먹은 바론 수",
                style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ),
      InkWell(
        onTap: () {
          flutterDialog2();
        },
        child: Container(
          height: 300.h,
          width: 300.w,
          padding: EdgeInsets.only(top: 55.h, bottom: 40.h),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1.w),
              borderRadius: BorderRadius.all(Radius.circular(15.r))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "images/herit.jfif",
                scale: 1.5,
              ),
              Text(
                "먹은 전령의 수",
                style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ),
      InkWell(
        onTap: () {
          flutterDialog3();
        },
        child: Container(
          height: 300.h,
          width: 300.w,
          padding: EdgeInsets.only(top: 55.h, bottom: 40.h),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1.w),
              borderRadius: BorderRadius.all(Radius.circular(15.r))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("images/elder.jfif"),
              Text(
                "먹은 장로 수",
                style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              )
            ],
          ),
        ),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("용 vs 바론 vs 전령"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Text(
              "레드팀",
              style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.redAccent),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 375.h,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    onPageChanged: ((index, reason) {
                      setState(() {});
                    })),
                items: carouselList,
              ),
            ),
            (dragonend == true &&
                    baronend == true &&
                    heritend == true &&
                    baronend == true)
                ? ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const Loading()));
                    },
                    child: const Text("확인하기"))
                : const Text("")
          ],
        ),
      ),
    );
  }
}
