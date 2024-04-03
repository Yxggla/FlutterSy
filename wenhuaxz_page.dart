import 'package:flutter/material.dart';

class WenhuaxzPage extends StatefulWidget {
  @override
  _WenhuaxzPage createState() => _WenhuaxzPage();
}

class _WenhuaxzPage extends State<WenhuaxzPage> {
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
              '传世流芳·文化现状',
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
                    '     琴、棋、书、画，焚香、点茶、挂画、插花……宋人“风雅处处是平常”的生活方式和隽永深沉的生活美学，对后世产生了深远的影响，也根植进当代杭式生活。',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '      当前，我省正加快打造新时代文化高地，努力在打造以宋韵文化为代表的浙江历史文化金名片上不断取得新突破。9月以来，为发挥好“思想库”“智囊团”的作用，杭州市社科联、社科院开展了一系列活动，以实际行动做好宋韵文化的响应者、执行者、推动者，传承延续文化脉络，探索传播普及宋韵文化的新载体、新路径，助力杭州高质量发展。',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '      之后，市社科联（院）就带着“宋韵文化遗址的现状和保护”主题来到“德寿宫遗址”“严官巷南宋御街遗址”、杭州孔庙（杭州碑林）、太庙遗址、八卦田遗址、苏东坡纪念馆等实地走访、开展调研。调研组与相关负责人和工作人员深入交流，详细了解文物遗址的历史文化价值、保护利用等情况，共同探讨加强文物遗址保护修缮和发掘研究工作的方法和路径，只为更好挖掘文物背后深厚的历史文化内涵，展示宋韵文化的价值和魅力。',
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
