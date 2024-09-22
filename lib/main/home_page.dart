import 'package:flutter/material.dart';
import '../yizhen/faxian_page.dart';
import '../xueji/wode_page.dart';
import '../xueyun/yanxue_page.dart';
import '../shouye_page.dart';
import '../xinyu/jiaoliuqz_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      FaxianPage(),
      yanxuePage(),
      jiaoliuqzPage(),
      WodePage(),
    ];

    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
          color: Color.fromRGBO(242, 236, 220, 1) ,// 设置背景颜色
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildNavItem('icon/shouye.png', '遗珍', 0),
            _buildNavItem('icon/shujuan.png', '学韵', 1),
            _buildNavItem('icon/xinyu.jpg', '心语', 2),
            _buildNavItem('icon/xueji.jpg', '学迹', 3),
          ],
        ),
      ),
    );


  }

  Widget _buildNavItem(String imagePath, String text, int index) {
    Color textColor = _selectedIndex == index ? Colors.red : Colors.black;
    Color iconColor = _selectedIndex == index ? Colors.red : Colors.black;

    return InkWell(
      onTap: () {
        _onItemTapped(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 6),
          Container(
            width: 20, // 图片宽度
            height: 20, // 图片高度，确保大小一致
            child: Image.asset(
              imagePath,
              color: iconColor,
            ),
          ),
          SizedBox(height: 4), // 图片和文字间距
          Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ),
        ],
      ),
    );

  }
}
