import 'package:flutter/material.dart';

class songyuePage extends StatefulWidget {
  @override
  _songyuePage createState() => _songyuePage();
}

class _songyuePage extends State<songyuePage> {
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
              '宋代音乐与舞蹈',
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
                    '     吸收了唐朝和五代时期的音乐成果，继承了唐代宫廷乐的传统，发展出了新的音乐形式。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange,fontWeight: FontWeight.bold,),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '    宋朝出现了徽、洛、仪、岳四大琴派，同时创立了更加完善的音律体系和乐理学说。此外，宋朝的乐器制作技术也相当精湛，著名的有南音派的编钟和北音派的木鱼等。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '     宋朝的舞蹈艺术在唐朝的基础上有所发展，呈现出多样化的形态和内容。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '      宋朝的舞蹈分为宫廷舞和民间舞两大类。宫廷舞多是以宫廷音乐为伴奏，表现皇家礼仪和宴会等场合的舞蹈。民间舞则是以民间音乐为伴奏，内容和形式更加自由，展现了宋朝人民的生活和情感。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange),
                  ),
                  SizedBox(height: 18),
                  Image.asset(
                    'img/songyue.jpg', // 替换成图片路径
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      '柘枝舞',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.orange
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '      跳柘枝时，舞女穿着五色绣罗的宽袍，头戴胡帽，帽上有金铃，腰系饰银腰带，舞蹈开场一击鼓三声为号，随后以鼓声为节奏，柘枝舞动作明快，旋转迅速，刚健婀娜兼而有之，同时，注重眉目传情，眼睛富于表情。',
                    style: TextStyle(fontSize: 12,height: 1.5,color: Colors.orange),
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
