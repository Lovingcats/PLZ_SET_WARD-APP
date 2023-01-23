import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Combination extends StatefulWidget {
  const Combination({super.key});

  @override
  State<Combination> createState() => _CombinationState();
}

class _CombinationState extends State<Combination> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Text("챔피언 페이지", style: TextStyle(fontSize: 30.sp, color: Colors.black),),
      )
    );
  }
}
