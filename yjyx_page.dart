import 'package:flutter/material.dart';

class yjyxPage extends StatefulWidget {
  @override
  _yjyxPage createState() => _yjyxPage();
}

class _yjyxPage extends State<yjyxPage> {
  bool isHeartClicked = false;
  bool isStarClicked = false;

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
              '严谨有序的宋代官服',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Placeholder(
                    // 在这里添加视频组件
                    fallbackHeight: 200,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(width: 250),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isStarClicked = !isStarClicked;
                  });
                },
                child: Icon(
                  isStarClicked ? Icons.star : Icons.star_border,
                  size: 30,
                  color: isStarClicked ? Colors.orange : null,
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isHeartClicked = !isHeartClicked;
                  });
                },
                child: Icon(
                  isHeartClicked ? Icons.favorite : Icons.favorite_border,
                  size: 30,
                  color: isHeartClicked ? Colors.orange : null,
                ),
              ),
            ]),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '      宋朝官员的朝服沿袭了唐代官服的特点，朱衣朱裳，里面穿着白色罗中单，外面扎系罗料的大带，还有绯色罗料蔽膝，身上挂着锦绶、玉佩、玉钏，脚上穿着白绫袜黑皮履。朝服的样式是统一的，官职的高低是以搭配的不同来区别的。主要是在有没有禅衣(中单)和锦绶上的图案体现级别变化。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange),
                  ),
                  SizedBox(height: 28),
                  Image.asset(
                    'img/yjyx-1.jpg', // 替换成图片路径
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      '文官服装',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    'img/yjyx-2.jpg', // 替换成图片路径
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      '武官服装',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.orange
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
