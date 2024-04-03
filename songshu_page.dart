import 'package:flutter/material.dart';

class songshuPage extends StatefulWidget {
  @override
  _songshuPage createState() => _songshuPage();
}

class _songshuPage extends State<songshuPage> {
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
              '宋代文学',
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
                    '      宋朝文学的发展在很大程度上得益于当时社会的稳定和经济的繁荣。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange,fontWeight: FontWeight.bold,),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '     这时期士人地位得到提升，文化也得到了很大的重视，文学成为社会主流文化。宋朝文学以诗、词、曲、散文等为主要文学形式，具有丰富多彩的文学特色和独特的艺术风格。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '      宋朝散文的风格多样，内容广泛，不再只是官方文献或纪实性的记述，更多地关注日常生活和人情世故。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '      代表性作品有苏轼的《东坡乐府》和欧阳修的《醉翁亭记》等。宋朝小说逐渐成为文学的一大门类，出现了很多代表性的作品，如《水浒传》、《西游记》和《红楼梦》等，这些作品不仅在文学上有很高的成就，同时也对后世文化产生了深远的影响。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange),
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
