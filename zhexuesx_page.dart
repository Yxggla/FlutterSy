import 'package:flutter/material.dart';

class zhexuesxPage extends StatefulWidget {
  @override
  _zhexuesxPage createState() => _zhexuesxPage();
}

class _zhexuesxPage extends State<zhexuesxPage> {
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
              '哲学思想',
              style: TextStyle(
                fontSize: 26,
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
            SizedBox(height: 16),
            Center(
              child: Text(
                '以儒治世',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.orange
                ),
              ),
            ),
            SizedBox(height: 6),
            Center(
              child: Text(
                '以佛修心',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.orange
                ),
              ),
            ),
            SizedBox(height: 6),
            Center(
              child: Text(
                '以道养生',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.orange
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(padding:EdgeInsets.symmetric(horizontal: 8),
              child: Text('宋孝宗在《三教论》里明确提出：“以佛修心，以道养生，以儒治世”的教化思想，促进了三教之间在社会教化思想上相互吸收，取长补短，以推动整个社会人文教化的不断前进和发展。',
              style: TextStyle(fontSize: 16,color: Colors.orange),),
            )

          ],
        ),
      ),
    );
  }
}
