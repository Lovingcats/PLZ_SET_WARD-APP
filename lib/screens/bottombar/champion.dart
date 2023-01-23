import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Champion extends StatefulWidget {
  const Champion({super.key});

  @override
  State<Champion> createState() => _ChampionState();
}

class _ChampionState extends State<Champion> {
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
