import 'package:flutter/material.dart';

class WodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/wode-1.jpg'), // 替换成背景图片路径
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 18), // 设置顶部间距
                      child:  CircleAvatar(
                        backgroundImage: AssetImage('img/pic1.jpg'), // 替换成圆形图片路径
                        radius: 40,
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: EdgeInsets.only(top: 30), // 设置顶部间距
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('用户名', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('账户名：123456', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.settings), // 设置的图标
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, ),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 80,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(243, 231, 211, 1)
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('0',style: TextStyle(fontSize: 20),),
                                  SizedBox(height: 4,),
                                  Text('积分'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 18),
                        Expanded(
                          child: Container(
                            height: 80,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(243, 231, 211, 1)
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('0时0分',style: TextStyle(fontSize: 20),),
                                  SizedBox(height: 4,),
                                  Text('学习时长'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(243, 231, 211, 1)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // 让文字在水平方向两侧
                        children: [
                          Text('观看视频总次数'),
                          Text('0'),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 72,),
                        Text('笔记',style: TextStyle(fontSize: 20),),
                        SizedBox(width: 36,),
                        Text('收藏',style: TextStyle(fontSize: 20),),
                        SizedBox(width: 36,),
                        Text('喜爱',style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 178,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                    color: Color.fromRGBO(243, 231, 211, 1)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'img/wode-2.jpg', // 替换成图片路径
                                      width: 110,
                                    ),
                                    SizedBox(height: 6), // 添加间距
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8),
                                      child:Text('宋韵生活美学',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)) ,
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        SizedBox(width: 8,),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage('img/pic1.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'aaa',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10), // 添加间距
                              Container(
                                height: 188,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromRGBO(243, 231, 211, 1)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'img/wode-5.jpg', // 替换成图片路径
                                      width: 110,
                                    ),
                                    SizedBox(height: 6), // 添加间距
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8),
                                      child:Text('金石宋韵',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)) ,
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        SizedBox(width: 8,),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage('img/pic1.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'aaa',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 194,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromRGBO(243, 231, 211, 1)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'img/wode-3.jpg', // 替换成图片路径
                                      width: 110,
                                    ),
                                    SizedBox(height: 6), // 添加间距
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8),
                                      child:Text('杭州研学',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)) ,
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        SizedBox(width: 8,),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage('img/pic1.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'aaa',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10), // 添加间距
                              Container(
                                height: 216,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromRGBO(243, 231, 211, 1)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'img/wode-6.jpg', // 替换成图片路径
                                      width: 110,
                                    ),
                                    SizedBox(height: 6), // 添加间距
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8),
                                      child:Text('非遗元宇宙｜带你沉浸体验',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)) ,
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        SizedBox(width: 8,),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage('img/pic1.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'aaa',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 182,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromRGBO(243, 231, 211, 1)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'img/wode-4.jpg', // 替换成图片路径
                                      width: 110,
                                    ),
                                    SizedBox(height: 6), // 添加间距
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8),
                                      child:Text('当亚运遇上宋韵',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),) ,
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        SizedBox(width: 8,),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage('img/pic1.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'aaa',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10), // 添加间距
                              Container(
                                height: 186,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromRGBO(243, 231, 211, 1)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'img/wode-7.jpg', // 替换成图片路径
                                      width: 110,
                                    ),
                                    SizedBox(height: 6), // 添加间距
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8),
                                      child:Text('宋韵台州',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)) ,
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        SizedBox(width: 8,),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage('img/pic1.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'aaa',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: WodePage()));
}
