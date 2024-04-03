import 'package:flutter/material.dart';

class FaxianPage extends StatefulWidget {
  @override
  _FaxianPageState createState() => _FaxianPageState();
}

class _FaxianPageState extends State<FaxianPage> {
  String selectedFilter = '全部'; // Track the selected filter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('发现',
                    style: TextStyle(fontSize: 36, color: Colors.orange)),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('热门',
                    style: TextStyle(fontSize: 24, color: Colors.orange)),
              ),
              SizedBox(height: 6),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        'img/faxian-1.jpg', // 替换成图片路径
                        width: 240,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 8),
                      Image.asset(
                        'img/faxian-2.jpg', // 替换成图片路径
                        width: 240,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FilterText(
                          '全部',
                          selectedFilter == '全部'
                              ? TextStyle(fontSize: 22, color: Colors.blue)
                              : null,
                          () => onFilterSelected('全部')),
                      SizedBox(width: 10),
                      FilterText(
                          '展出',
                          selectedFilter == '展出'
                              ? TextStyle(fontSize: 22, color: Colors.blue)
                              : null,
                          () => onFilterSelected('展出')),
                      SizedBox(width: 10),
                      FilterText(
                          '遗迹',
                          selectedFilter == '遗迹'
                              ? TextStyle(fontSize: 22, color: Colors.blue)
                              : null,
                          () => onFilterSelected('遗迹')),
                    ],
                  ),
                ),
              ),
              // Add the dynamic content based on the selected filter
              if (selectedFilter == '全部')
                AllItemsWidget()
              else if (selectedFilter == '展出')
                ExhibitionItemsWidget()
              else if (selectedFilter == '遗迹')
                RuinItemsWidget(),
            ],
          ),
        ));
  }

  void onFilterSelected(String filter) {
    setState(() {
      selectedFilter = filter;
    });
  }
}

class FilterText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final VoidCallback onTap;

  FilterText(this.text, this.textStyle, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: textStyle ?? TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class AllItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(243, 231, 211, 1),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // 设置圆角半径
                    child: Image.asset(
                      'img/faxian-3.jpg', // 替换成图片路径
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("杭州博物馆",
                            style:
                            TextStyle(
                                fontSize: 16, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("宋韵杭博奇妙夜",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("时间:2023.4.2——2023.4.29",
                            style:
                            TextStyle(
                                fontSize: 10, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("地点:杭州粮道山",
                            style:
                            TextStyle(
                                fontSize: 10, color: Colors.orange)),
                        Row(
                          children: [
                            Icon(Icons.confirmation_number,color: Colors.orange,), // Replace with the desired icon
                            SizedBox(width: 8), // Add some spacing between the icon and text
                            Text(
                              '免费', // Replace with the desired text
                              style: TextStyle(fontSize: 10,color: Colors.orange),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),)
        ),
        SizedBox(height: 12,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(243, 231, 211, 1),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // 设置圆角半径
                    child: Image.asset(
                      'img/faxian-4.jpg', // 替换成图片路径
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("弥陀寺公园文化公园",
                            style:
                            TextStyle(
                                fontSize: 16, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("宋韵杭式生活节",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("时间:2023.4.2——2023.5.1",
                            style:
                            TextStyle(
                                fontSize: 10, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("地点:弥陀寺",
                            style:
                            TextStyle(
                                fontSize: 10, color: Colors.orange)),
                        Row(
                          children: [
                            Icon(Icons.confirmation_number,color: Colors.orange,), // Replace with the desired icon
                            SizedBox(width: 8), // Add some spacing between the icon and text
                            Text(
                              '免费', // Replace with the desired text
                              style: TextStyle(fontSize: 10,color: Colors.orange),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),)
        ),
        SizedBox(height: 12,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(243, 231, 211, 1),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // 设置圆角半径
                    child: Image.asset(
                      'img/faxian-5.jpg', // 替换成图片路径
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("中国美术学院艺术展",
                            style:
                            TextStyle(
                                fontSize: 16, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("宋韵金辉",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("时间:2023.4.12——2023.5.9",
                            style:
                            TextStyle(
                                fontSize: 10, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("地点:中国美术学院南山校区",
                            style:
                            TextStyle(
                                fontSize: 10, color: Colors.orange)),
                        Row(
                          children: [
                            Icon(Icons.confirmation_number,color: Colors.orange,), // Replace with the desired icon
                            SizedBox(width: 8), // Add some spacing between the icon and text
                            Text(
                              '免费', // Replace with the desired text
                              style: TextStyle(fontSize: 10,color: Colors.orange),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),)
        ),
        SizedBox(height: 12,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(243, 231, 211, 1),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // 设置圆角半径
                    child: Image.asset(
                      'img/faxian-6.jpg', // 替换成图片路径
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("德寿宫",
                            style:
                            TextStyle(
                                fontSize: 16, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("以南宋宰相秦桧的旧第，因有望气之…",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("地点:中国浙江省杭州市上城区境内",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        Row(
                          children: [
                            Icon(Icons.confirmation_number,color: Colors.orange,), // Replace with the desired icon
                            SizedBox(width: 8), // Add some spacing between the icon and text
                            Text(
                              '免费', // Replace with the desired text
                              style: TextStyle(fontSize: 10,color: Colors.orange),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),)
        ),
        SizedBox(height: 12,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(243, 231, 211, 1),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // 设置圆角半径
                    child: Image.asset(
                      'img/faxian-7.jpg', // 替换成图片路径
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("八卦田",
                            style:
                            TextStyle(
                                fontSize: 16, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("上面种着8种不同的庄稼，一年四季…",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("地点:西湖风景区东南侧玉皇山南麓",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        Row(
                          children: [
                            Icon(Icons.confirmation_number,color: Colors.orange,), // Replace with the desired icon
                            SizedBox(width: 8), // Add some spacing between the icon and text
                            Text(
                              '免费', // Replace with the desired text
                              style: TextStyle(fontSize: 10,color: Colors.orange),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),)
        ),
        SizedBox(height: 12,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(243, 231, 211, 1),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // 设置圆角半径
                    child: Image.asset(
                      'img/faxian-8.jpg', // 替换成图片路径
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("飞来峰",
                            style:
                            TextStyle(
                                fontSize: 16, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("飞来峰，又称灵鹫峰，是一处山峰…",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("地点:西湖区灵隐路灵隐路法云弄1号",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        Row(
                          children: [
                            Icon(Icons.confirmation_number,color: Colors.orange,), // Replace with the desired icon
                            SizedBox(width: 8), // Add some spacing between the icon and text
                            Text(
                              '免费', // Replace with the desired text
                              style: TextStyle(fontSize: 10,color: Colors.orange),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),)
        ),
      ],
    );
  }
}

class ExhibitionItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(243, 231, 211, 1),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // 设置圆角半径
                    child: Image.asset(
                      'img/faxian-3.jpg', // 替换成图片路径
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("杭州博物馆",
                            style:
                            TextStyle(
                                fontSize: 16, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("宋韵杭博奇妙夜",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("时间:2023.4.2——2023.4.29",
                            style:
                            TextStyle(
                                fontSize: 10, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("地点:杭州粮道山",
                            style:
                            TextStyle(
                                fontSize: 10, color: Colors.orange)),
                        Row(
                          children: [
                            Icon(Icons.confirmation_number,color: Colors.orange,), // Replace with the desired icon
                            SizedBox(width: 8), // Add some spacing between the icon and text
                            Text(
                              '免费', // Replace with the desired text
                              style: TextStyle(fontSize: 10,color: Colors.orange),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),)
        ),
        SizedBox(height: 12,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(243, 231, 211, 1),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // 设置圆角半径
                    child: Image.asset(
                      'img/faxian-4.jpg', // 替换成图片路径
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("弥陀寺公园文化公园",
                            style:
                            TextStyle(
                                fontSize: 16, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("宋韵杭式生活节",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("时间:2023.4.2——2023.5.1",
                            style:
                            TextStyle(
                                fontSize: 10, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("地点:弥陀寺",
                            style:
                            TextStyle(
                                fontSize: 10, color: Colors.orange)),
                        Row(
                          children: [
                            Icon(Icons.confirmation_number,color: Colors.orange,), // Replace with the desired icon
                            SizedBox(width: 8), // Add some spacing between the icon and text
                            Text(
                              '免费', // Replace with the desired text
                              style: TextStyle(fontSize: 10,color: Colors.orange),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),)
        ),
        SizedBox(height: 12,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(243, 231, 211, 1),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // 设置圆角半径
                    child: Image.asset(
                      'img/faxian-5.jpg', // 替换成图片路径
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("中国美术学院艺术展",
                            style:
                            TextStyle(
                                fontSize: 16, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("宋韵金辉",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("时间:2023.4.12——2023.5.9",
                            style:
                            TextStyle(
                                fontSize: 10, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("地点:中国美术学院南山校区",
                            style:
                            TextStyle(
                                fontSize: 10, color: Colors.orange)),
                        Row(
                          children: [
                            Icon(Icons.confirmation_number,color: Colors.orange,), // Replace with the desired icon
                            SizedBox(width: 8), // Add some spacing between the icon and text
                            Text(
                              '免费', // Replace with the desired text
                              style: TextStyle(fontSize: 10,color: Colors.orange),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),)
        ),
      ],
    );
  }
}

class RuinItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(243, 231, 211, 1),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // 设置圆角半径
                    child: Image.asset(
                      'img/faxian-6.jpg', // 替换成图片路径
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("德寿宫",
                            style:
                            TextStyle(
                                fontSize: 16, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("以南宋宰相秦桧的旧第，因有望气之…",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("地点:中国浙江省杭州市上城区境内",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        Row(
                          children: [
                            Icon(Icons.confirmation_number,color: Colors.orange,), // Replace with the desired icon
                            SizedBox(width: 8), // Add some spacing between the icon and text
                            Text(
                              '免费', // Replace with the desired text
                              style: TextStyle(fontSize: 10,color: Colors.orange),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),)
        ),
        SizedBox(height: 12,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(243, 231, 211, 1),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // 设置圆角半径
                    child: Image.asset(
                      'img/faxian-7.jpg', // 替换成图片路径
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("八卦田",
                            style:
                            TextStyle(
                                fontSize: 16, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("上面种着8种不同的庄稼，一年四季…",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("地点:西湖风景区东南侧玉皇山南麓",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        Row(
                          children: [
                            Icon(Icons.confirmation_number,color: Colors.orange,), // Replace with the desired icon
                            SizedBox(width: 8), // Add some spacing between the icon and text
                            Text(
                              '免费', // Replace with the desired text
                              style: TextStyle(fontSize: 10,color: Colors.orange),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),)
        ),
        SizedBox(height: 12,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(243, 231, 211, 1),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // 设置圆角半径
                    child: Image.asset(
                      'img/faxian-8.jpg', // 替换成图片路径
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("飞来峰",
                            style:
                            TextStyle(
                                fontSize: 16, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("飞来峰，又称灵鹫峰，是一处山峰…",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        SizedBox(height: 4),
                        Text("地点:西湖区灵隐路灵隐路法云弄1号",
                            style:
                            TextStyle(
                                fontSize: 12, color: Colors.orange)),
                        Row(
                          children: [
                            Icon(Icons.confirmation_number,color: Colors.orange,), // Replace with the desired icon
                            SizedBox(width: 8), // Add some spacing between the icon and text
                            Text(
                              '免费', // Replace with the desired text
                              style: TextStyle(fontSize: 10,color: Colors.orange),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),)
        ),
      ],
    );
  }
}
