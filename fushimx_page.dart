import 'package:flutter/material.dart';
import 'mszf_page.dart';
import 'yjyx_page.dart';

class fushimxPage extends StatefulWidget {
  @override
  _fushimxPage createState() => _fushimxPage();
}

class _fushimxPage extends State<fushimxPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true, // 显示默认的返回按钮
        leading: BackButton(color: Colors.orange),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '服饰美学',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
            SizedBox(height: 12),
            Image.asset(
              'img/fushimx-1.jpg', // 替换成图片路径
              width: 140,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 12),
            Text(
              '背景',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(243, 231, 211, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '    服饰是一定意义上文化、经济、政治、军事等各种因素融合作用的产物，并代表和象征了当时的思想观念和社会地位。人们的美学观念发生了变化，服饰不再艳丽奢华，开始崇尚简朴，重视沿袭传统，质朴、自然、清新、雅致成为宋代服饰的主要特点。',
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => mszfPage()));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  'img/fushimx-2.jpg', // 替换成图片路径
                  width: 100,
                ),
              ),
            ),
            SizedBox(height: 12),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => yjyxPage()));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  'img/fushimx-3.jpg', // 替换成图片路径
                  width: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
