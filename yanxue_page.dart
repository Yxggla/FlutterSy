import 'package:flutter/material.dart';
import 'wenhuabj_page.dart';
import 'wenhuaxz_page.dart';
import 'specialclass_page.dart';
import 'jiaoliuqz_page.dart';

class yanxuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                'img/yanxue-1_01.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WenhuabjPage()));
                },
                child: Container(
                  padding: EdgeInsets.all(2),
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Image.asset(
                      'img/yanxue-1_02.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WenhuaxzPage()));
                },
                child: Container(
                  padding: EdgeInsets.all(2),
                  width: double.infinity,
                  height: 160,
                  // 调整容器的高度
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Image.asset(
                      'img/yanxue-1_03.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>specialclassPage ()));
                },
                child: Container(
                  padding: EdgeInsets.all(2),
                  width: double.infinity,
                  height: 160,
                  // 调整容器的高度
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Image.asset(
                      'img/yanxue-1_04.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 8),
            //   child: GestureDetector(
            //     onTap: () {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (context) =>jiaoliuqzPage ()));
            //     },
            //     child: Container(
            //       padding: EdgeInsets.all(2),
            //       width: double.infinity,
            //       height: 160,
            //       // 调整容器的高度
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(25),
            //       ),
            //       child: Center(
            //         child: Image.asset(
            //           'img/yanxue-1_05.jpg',
            //           fit: BoxFit.fitWidth,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
