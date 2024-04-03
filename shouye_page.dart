import 'package:flutter/material.dart';

class shouyePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.yellow[100], // 淡黄色背景颜色
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 160, // 调整文字的垂直位置
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                '宋韵文化',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: AspectRatio(
              aspectRatio: 16 / 9, // 设置视频宽高比
              child: Container(
                color: Colors.black, // 假设视频区域的背景色为黑色
                child: Center(
                  child: Text(
                    '视频区域',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
