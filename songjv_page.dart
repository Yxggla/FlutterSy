import 'package:flutter/material.dart';

class songjvPage extends StatefulWidget {
  @override
  _songjvPage createState() => _songjvPage();
}

class _songjvPage extends State<songjvPage> {
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
              '宋代建筑艺术',
              style: TextStyle(
                  fontSize: 30,
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
            SizedBox(height: 10),
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
                    '      宋朝建筑在唐代建筑的基础上，形成了自己独特的风格。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange,fontWeight: FontWeight.bold,),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '     宋朝的建筑风格注重细节和装饰，注重精致和精密，同时也注重功能和实用性。宋朝继承唐代的风格，宫殿建筑以建筑的高度、规模和宏伟气势为特点。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange),
                  ),
                  SizedBox(height: 12),
                  Image.asset(
                    'img/songjv-1.jpg', // 替换成图片路径
                  ),
                  SizedBox(height: 12),
                  Text(
                    '      民居建筑方面，宋朝的民居建筑注重实用性和风水，受到唐代建筑和南北朝民居的影响。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '      宋朝民居的建筑布局和风格多种多样，主要分为院落和连廊两种，建筑材料为青砖和黄土。代表性建筑有开封的清明上河图街和临安的青石板路。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange),
                  ),
                  SizedBox(height: 12),
                  Image.asset(
                    'img/songjv-2.jpg', // 替换成图片路径
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
