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
          child: Text(
            "챔피언 페이지",
            style: TextStyle(fontSize: 30.sp, color: Colors.black),
          ),
        ));
  }
}
