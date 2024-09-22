import 'package:flutter/material.dart';

class SdjjpicPage extends StatefulWidget {
  @override
  _SdjjpicPageState createState() => _SdjjpicPageState();
}

class _SdjjpicPageState extends State<SdjjpicPage> {
  // 图片列表
  final List<String> images = [
    'img/sdjj-1.jpg',
    'img/sdjj-2.jpg',
    'img/sdjj-3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 背景图片
          Positioned.fill(
            child: Image.asset(
              'img/sdjj-5.jpg', // 替换为你的背景图片路径
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 图片展示区域
              Expanded(
                child: PageView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Image.asset(
                        images[index],
                        width: MediaQuery.of(context).size.width * 0.85, // 图片宽度占屏幕的80%
                      ),
                    );
                  },
                ),
              ),
              // 返回按钮
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 0.0, right: 16.0, bottom: 32.0),  // 分别设置左、上、右、下的 padding
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // 返回上一页
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black, // 设置按钮的背景颜色为黑色
                    onPrimary: Color.fromRGBO(198, 101, 56, 1.0), // 设置按钮文字颜色
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0), // 设置按钮的圆角
                    ),
                    elevation: 4.0, // 设置按钮的阴影
                    minimumSize: Size(160, 60), // 设置按钮的最小宽度和高度
                  ),
                  child: Text('返回',style: TextStyle(fontSize: 22),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
