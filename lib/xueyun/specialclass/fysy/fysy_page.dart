import 'package:flutter/material.dart';

class fysyPage extends StatefulWidget {
  @override
  _fysyPage createState() => _fysyPage();
}

class _fysyPage extends State<fysyPage> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '风雅四艺',
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


            Padding(padding:EdgeInsets.symmetric(horizontal: 20),
              child: Text('作为真正能担得起「风雅」二字的朝代，「宋代」是中国古代文明的高峰，甚至被西方誉为「东方的文艺复兴」。',
              style: TextStyle(fontSize: 16,color: Color.fromRGBO(198, 101, 56, 1.0)),),
            ),
            SizedBox(height: 8),
            Padding(padding:EdgeInsets.symmetric(horizontal: 20),
              child: Text('宋代的文人士大夫们，追求隐逸生活，由隐逸文化自然兴起雅致的生活美学，并且在民间迅速流行。',
                style: TextStyle(fontSize: 16,color: Color.fromRGBO(198, 101, 56, 1.0)),),
            ),
            SizedBox(height: 8),
            Padding(padding:EdgeInsets.symmetric(horizontal: 20),
              child: Text('「点茶、焚香、插花、挂画」，合称「四艺」。透过嗅觉、味觉、触觉与视觉，充实涵养与修为，将日常生活提升至艺术境界，乃宋代雅致生活的集中体现。',
                style: TextStyle(fontSize: 16,color: Color.fromRGBO(198, 101, 56, 1.0)),),
            ),
            SizedBox(height: 10),
            Image.asset(
              'img/songyue.jpg', // 替换成图片路径
            ),
            SizedBox(height: 10),
            Padding(padding:EdgeInsets.symmetric(horizontal: 20),
              child: Text('宋代，是一段曾经的时光，更是一种气质、精神、艺术和审美，含蓄内敛而包容。那是一种「柔」的文化，用极简、极素、极拙创造了世间大美。',
                style: TextStyle(fontSize: 16,color: Color.fromRGBO(198, 101, 56, 1.0)),),
            ),

          ],
        ),
      ),
    );
  }
}
