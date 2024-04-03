import 'package:flutter/material.dart';

class mszfPage extends StatefulWidget {
  @override
  _mszfPage createState() => _mszfPage();
}

class _mszfPage extends State<mszfPage> {
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
              '麻桑之富，衣被天下',
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
                    '  由于南北技术的交流，宋代丝绸的产量和花色品种，较前代都有明显的增加，并且丝织品的花形、图案、质量及风格都有很大的创新。',
                    style: TextStyle(fontSize: 16,height: 1.5),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '      宋代丝织品种类繁多，有绫、罗、缎、织锦、纱、绢、缂丝等。因为宋沿袭唐制，仍规定以绫为官服之用，所以，绫产地的范围进一步扩大，品种也大大丰富起来。除了原有的仙纹绫、越绫、白绫、白编绫、方纹绫、狗蹄绫、柿蒂绫、寺绫等，又增加了梓州(今四川三台县)的白熟绫、白花绫等等。',
                    style: TextStyle(fontSize: 16,height: 1.5),
                  ),
                  SizedBox(height: 24),
                  Image.asset(
                    'img/mszf.jpg', // 替换成图片路径
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      '织罗技术',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Text(
                    '     织罗技术在宋代可以说达到了巅峰状态。宋代罗的名目繁多，技术进步，成为当时的著名织物，被称为“宋罗”，且多为贡品。“宋罗”的名贵品种很多，有成都的大花罗，蜀州的春罗、单丝罗，婺州的暗花罗、含春罗、江边贡罗、东阳花罗、越州越罗。',
                    style: TextStyle(fontSize: 16,height: 1.5),
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
