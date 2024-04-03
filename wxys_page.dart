import 'package:flutter/material.dart';
import 'songjv_page.dart';
import 'songyue_page.dart';
import 'songshu_page.dart';
import 'songhua_page.dart';

class wxysPage extends StatefulWidget {
  @override
  _wxysPage createState() => _wxysPage();
}
class _wxysPage extends State<wxysPage> {
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
              '文学艺术',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
            SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(243, 231, 211, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                alignment: Alignment.bottomRight, // 将内部内容对齐到右下角
                children: [
                  Image.asset(
                    'img/wxys-1.jpg', // 替换成背景图片路径
                    width: double.infinity, // 宽度撑满容器
                    fit: BoxFit.cover, // 图片填充模式
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => songyuePage()), // 替换为你的目标页面
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '进入',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(243, 231, 211, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                alignment: Alignment.bottomRight, // 将内部内容对齐到右下角
                children: [
                  Image.asset(
                    'img/wxys-2.jpg', // 替换成背景图片路径
                    width: double.infinity, // 宽度撑满容器
                    fit: BoxFit.cover, // 图片填充模式
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => songjvPage()), // 替换为你的目标页面
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '进入',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(243, 231, 211, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                alignment: Alignment.bottomRight, // 将内部内容对齐到右下角
                children: [
                  Image.asset(
                    'img/wxys-3.jpg', // 替换成背景图片路径
                    width: double.infinity, // 宽度撑满容器
                    fit: BoxFit.cover, // 图片填充模式
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => songshuPage()), // 替换为你的目标页面
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '进入',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(243, 231, 211, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                alignment: Alignment.bottomRight, // 将内部内容对齐到右下角
                children: [
                  Image.asset(
                    'img/wxys-4.jpg', // 替换成背景图片路径
                    width: double.infinity, // 宽度撑满容器
                    fit: BoxFit.cover, // 图片填充模式
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => songhuaPage()), // 替换为你的目标页面
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '进入',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
