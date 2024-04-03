import 'package:flutter/material.dart';

class WenhuabjPage extends StatefulWidget {
  @override
  _WenhuabjPage createState() => _WenhuabjPage();
}

class _WenhuabjPage extends State<WenhuabjPage> {
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
              '传承千古·文化背景',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
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
                  color: isHeartClicked ? Colors.orange : null,
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
                  color: isStarClicked ? Colors.orange : null,
                ),
              ),
            ]),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(243, 231, 211, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '     陈寅恪先生曾说："华夏民族之文化，历数千载之演进，造极于赵宋之世”，宋韵文化以南宋历史文化为背景，是中华传统文化的瑰宝，应久久为功，让宋韵文化熠熠生辉。',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '      浙江是南宋的政治、经济和文化中心，文化内涵丰富，宋韵文化是浙江最具辨识度和标志性的文化标杆。而杭州又是宋韵文化瑰宝传承精华之地。',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '      传承南宋瑰宝，打造新时代文化高地。宋代的民本思想、爱国主义、学术自由等精神内核，符合社会主义核心价值观，传承千年宋韵文化，有利于推动文化研究，打造城市文化名片，提升文化软实力，提高公众文化认同感，实现文化自信。',
                    style: TextStyle(fontSize: 16),
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
