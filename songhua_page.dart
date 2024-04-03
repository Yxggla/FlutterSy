import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class songhuaPage extends StatefulWidget {
  @override
  _songhuaPage createState() => _songhuaPage();
}

class _songhuaPage extends State<songhuaPage> {
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
              '宋代书画',
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
                    '      宋朝绘画艺术是中国绘画史上的重要阶段，表现出多种风格和形式的发展趋势。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange,fontWeight: FontWeight.bold,),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '     宋朝的绘画注重写意和表现技法的完美，同时也有对古人经典作品的继承和发展。宋朝的绘画成就包括山水画、人物画、花鸟画和屏风画等多种艺术形式。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '      总的来说，宋朝书画的特点是注重写实和表现手法的完美，同时也注重对经典作品的继承和发展。宋朝的绘画艺术对后世的影响深远，成为中国绘画史上的重要阶段。',
                    style: TextStyle(fontSize: 16,height: 1.5,color: Colors.orange),
                  ),
                  SizedBox(height: 6),
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true, // 自动播放
                      viewportFraction: 1, // 设置视图占比，即每张图片显示的宽度比例
                    ),
                    items: [
                      Image.asset('img/songdaish-1.jpg'),
                      Image.asset('img/songdaish-2.jpg'),
                    ],
                  ),
                  SizedBox(height: 6),
                  Center(
                    child: Text(
                      '山水画',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.orange
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '      在宋朝山水画的发展中，除了注重景物的写实外，也注重画面的意境和气氛的表现。',
                    style: TextStyle(fontSize: 14,height: 1.5,color: Colors.orange),
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
