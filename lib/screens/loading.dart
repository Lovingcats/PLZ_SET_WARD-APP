import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:plz_set_ward_app/model/rank.dart';
import 'package:plz_set_ward_app/screens/bottombar/bottomduo.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  late Timer timer = timer;
  bool down = false;

  List<Rank> ranks = <Rank>[];

  void start() async {
    ranks.add(Rank("야스오 알리스타", 60.5, 1, 42.4));
    ranks.add(Rank("사미라 레오나", 50.8, 1, 62.1));
    ranks.add(Rank("루시안 브라움", 57.1, 1, 50.9));
    ranks.add(Rank("루시안 나미", 58, 1, 51.2));
    ranks.add(Rank("칼리스타 쓰레쉬", 57.5, 1, 30.4));
    ranks.add(Rank("루시안 쓰레쉬", 53.8, 1, 80.9));
    ranks.add(Rank("베인 알리스타", 58.8, 1, 8.7));
    ranks.add(Rank("시비르 카르마", 58.6, 2, 2.3));
    ranks.add(Rank("시비르 쓰레쉬", 52.4, 2, 30.9));
    ranks.add(Rank("이즈리얼 카르마", 57.6, 2, 7.6));
    ranks.add(Rank("시비르 알리스타", 54.1, 2, 6.1));
    ranks.add(Rank("드레이븐 쓰레쉬", 55.6, 2, 32.4));
    ranks.add(Rank("루시안 알리스타", 55.7, 2, 56));
    ranks.add(Rank("시비르 피들스틱", 55.1, 2, 5.2));
    ranks.add(Rank("케이틀린 쓰레쉬", 52.6, 2, 30.9));
    ranks.add(Rank("베인 나미", 54.9, 2, 3.9));
    ranks.add(Rank("이즈리얼 소라카", 52.4, 2, 8.3));
    ranks.add(Rank("이즈리얼 탐켄치", 53.6, 2, 6.5));
    ranks.add(Rank("루시안 파이크", 50.9, 3, 60.5));
    ranks.add(Rank("징크스 쓰레쉬", 52.2, 3, 30));
    ranks.add(Rank("이즈리얼 질리언", 53.3, 3, 6.7));
    ranks.add(Rank("이즈리얼 나미", 52.4, 3 , 6.5));
    ranks.add(Rank("이즈리얼 쓰레쉬", 49.4, 3, 36.2));
    ranks.add(Rank("카이사 파이크", 50.1, 3, 11.7));
    ranks.add(Rank("이즈리얼 알리스타", 48.8, 3, 11.4));
    ranks.add(Rank("카이사 알리스타", 48.4, 3, 7.2));
    ranks.add(Rank("카이사 그라가스", 51.1, 3, 3.1));
    ranks.add(Rank("시비르 모르가나", 50.4, 3, 15));
    ranks.add(Rank("베인 파이크", 50.2, 3, 13.2));
    ranks.add(Rank("루시안 모르가나", 47.8, 3, 64.9));
    ranks.add(Rank("카이사 피들스틱", 48.9, 3, 10.2));
    ranks.add(Rank("이즈리얼 그라가스", 50, 3, 7.2));
    ranks.add(Rank("카이사 블리츠크랭크", 49.5, 3, 3.2));
    ranks.add(Rank("루시안 소라카", 46.6, 4, 52.9));
    ranks.add(Rank("이즈리얼 파이크", 45.3, 4, 15.9));
    ranks.add(Rank("이즈리얼 갈리오", 48.6, 4, 8.1));
    ranks.add(Rank("카이사 소라카", 47.3, 4, 4.1));
    ranks.add(Rank("이즈리얼 브라움", 47.7, 4, 2.6));
    ranks.add(Rank("베인 쓰레쉬", 45.9, 4, 6.3));
    setState(() {
      down = true;
    });
    timer = await Timer.periodic(const Duration(microseconds:1800000), (timer) {
      setState(() {});
    });
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BottomDuo(
                  ranks: ranks,
                )));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [SpinKitHourGlass(color: Colors.blueAccent)],
        ),
      ),
    );
  }
}

