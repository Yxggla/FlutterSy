import 'package:flutter/material.dart';
import 'sidays_page.dart';
import 'fushimx_page.dart';
import 'wxys_page.dart';
import 'zhexuesx_page.dart';

class specialclassPage extends StatefulWidget {
  @override
  _specialclassPage createState() => _specialclassPage();
}

class _specialclassPage extends State<specialclassPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: BackButton(color: Colors.orange),
        backgroundColor: Colors.white,
        elevation: 0,
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage('img/specialclass-1.jpg'),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        // ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    '特色课程',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                    ),
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.red, // 搜索图标的颜色
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "热门",
              style: TextStyle(
                fontSize: 26,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.all(6),
              width: double.infinity, // 设置Container宽度为无限，以占据可用的水平空间
              decoration: BoxDecoration(
                color: Color.fromRGBO(243, 231, 211, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('img/specialclass-3.jpg'), // 使用 AssetImage
                    width: 160,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 12), // 调整图像和文本之间的间距
                  // 右侧文本
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start, // 从顶部开始对齐
                      children: [
                        Text(
                          '四大雅事',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '"四般闲事"是四艺合一，展现古代文人雅士风雅，韵味的生活美学……',
                          style: TextStyle(fontSize: 10, color: Colors.red),
                        ),
                        SizedBox(height: 26),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => sidaysPage()),
                            );
                          },
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '进入学习 >>',
                              style: TextStyle(fontSize: 12, color: Colors.red),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(6),
              width: double.infinity, // 设置Container宽度为无限，以占据可用的水平空间
              decoration: BoxDecoration(
                color: Color.fromRGBO(243, 231, 211, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('img/specialclass-4.jpg'), // 使用 AssetImage
                    width: 160,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 12), // 调整图像和文本之间的间距
                  // 右侧文本
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start, // 从顶部开始对齐
                      children: [
                        Text(
                          '服饰美学',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '宋朝服饰"以简为美"无论是北宋还是南宋，文人的日常起居和服饰……',
                          style: TextStyle(fontSize: 10, color: Colors.red),
                        ),
                        SizedBox(height: 26),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => fushimxPage()),
                            );
                          },
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '进入学习 >>',
                              style: TextStyle(fontSize: 12, color: Colors.red),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(6),
              width: double.infinity, // 设置Container宽度为无限，以占据可用的水平空间
              decoration: BoxDecoration(
                color: Color.fromRGBO(243, 231, 211, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('img/specialclass-5.jpg'), // 使用 AssetImage
                    width: 160,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 12), // 调整图像和文本之间的间距
                  // 右侧文本
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start, // 从顶部开始对齐
                      children: [
                        Text(
                          '文学艺术',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '宋代文学艺术特点是对人性和社会现实的深刻理解和描绘……',
                          style: TextStyle(fontSize: 10, color: Colors.red),
                        ),
                        SizedBox(height: 26),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => wxysPage()),
                            );
                          },
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '进入学习 >>',
                              style: TextStyle(fontSize: 12, color: Colors.red),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(6),
              width: double.infinity, // 设置Container宽度为无限，以占据可用的水平空间
              decoration: BoxDecoration(
                color: Color.fromRGBO(243, 231, 211, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('img/specialclass-6.jpg'), // 使用 AssetImage
                    width: 160,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 12), // 调整图像和文本之间的间距
                  // 右侧文本
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start, // 从顶部开始对齐
                      children: [
                        Text(
                          '哲学思想',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '宋代哲学，主要以理学为特征，以讨论理气，心性等问题为中心。学派甚多……',
                          style: TextStyle(fontSize: 10, color: Colors.red),
                        ),
                        SizedBox(height: 26),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => zhexuesxPage()),
                            );
                          },
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '进入学习 >>',
                              style: TextStyle(fontSize: 12, color: Colors.red),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              '推荐',
              style: TextStyle(fontSize: 26, color: Colors.red),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromRGBO(243, 231, 211, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'img/specialclass-7.jpg', // 替换成图片路径
                              width: 148,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6),
                            Text(
                              '主要事件',
                              style: TextStyle(fontSize: 16, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      Container(

                        child: Column(
                          children: [
                            Image.asset(
                              'img/specialclass-8.jpg', // 替换成图片路径
                              width: 148,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6),
                            Text(
                              '宋代极简主义',
                              style: TextStyle(fontSize: 16, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ],
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
