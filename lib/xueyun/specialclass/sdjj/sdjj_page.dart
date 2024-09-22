import 'package:flutter/material.dart';
import 'package:songyun/xueyun/specialclass/sdjj/pics_page.dart';

class sdjjPage extends StatefulWidget {
  @override
  _sdjjPage createState() => _sdjjPage();
}

class _sdjjPage extends State<sdjjPage> {
  bool isHeartClicked = false;
  bool isStarClicked = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true, // 显示默认的返回按钮
        leading: BackButton(color: Color.fromRGBO(198, 101, 56, 1.0)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '宋代极简主义美学',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(198, 101, 56, 1.0)
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
                    isHeartClicked = !isHeartClicked;
                  });
                },
                child: Icon(
                  isHeartClicked ? Icons.favorite : Icons.favorite_border,
                  size: 30,
                  color: isHeartClicked ? Color.fromRGBO(198, 101, 56, 1.0) : null,
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isStarClicked = !isStarClicked;
                  });
                },
                child: Icon(
                  isStarClicked ? Icons.star : Icons.star_border,
                  size: 30,
                  color: isStarClicked ? Color.fromRGBO(198, 101, 56, 1.0) : null,
                ),
              ),
            ]),
            SizedBox(height: 16),


            Padding(padding:EdgeInsets.symmetric(horizontal: 8),
              child: Text('    宋代无论从宋汝窑的素色瓷，到徽宗的瘦金体，再到范宽、郭熙的大山水，用如今的眼光看依旧也并不过时，无不闪烁着高超的审美情趣和雅致的艺术追求。',
              style: TextStyle(fontSize: 16,color: Color.fromRGBO(198, 101, 56, 1.0)),),
            ),
            SizedBox(height: 6),
            Padding(padding:EdgeInsets.symmetric(horizontal: 8),
              child: Text('    宋是一个文明高峰。宋汝窑，是一千年了不起的大名牌！唐三彩都是花花绿绿的，但宋敢在花花绿绿中提出素朴风格。',
                style: TextStyle(fontSize: 16,color: Color.fromRGBO(198, 101, 56, 1.0)),),
            ),
            SizedBox(height: 10),
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SdjjpicPage()),
                  );
                },
                child:
                    Image.asset(
                      'img/sdjj-4.png', // 替换成图片路径
                      fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(padding:EdgeInsets.symmetric(horizontal: 8),
              child: Text('    全世界至今还在仿宋瓷。冰裂纹，本来是烧坏了，但宋人觉得里面有种沧桑美，经历时间后，叫开片，他们用不同火温去烧出开片。本来是败笔、损坏却变成美，这是很特别的宋代美学。',
                style: TextStyle(fontSize: 16,color: Color.fromRGBO(198, 101, 56, 1.0)),),
            ),

          ],
        ),
      ),
    );
  }
}
