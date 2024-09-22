import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPage createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {

  final List<String> searchTags = [
    '古代美学',
    '古代生活的四大雅事',
    '四艺',
    '李清照',
    '苏轼',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromRGBO(198, 101, 56, 1.0)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          // 背景图片
          Positioned.fill(
            child: Image.asset(
              'img/search.jpg',  // 替换为你的图片路径
              fit: BoxFit.cover,  // 设置图片填充整个背景
            ),
          ),
          // 前景内容
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0, bottom: 10.0),  // 分别设置左、上、右、下的 padding
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '请输入关键词',
                    prefixIcon: Icon(Icons.search, color: Color.fromRGBO(198, 101, 56, 1.0)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26.0, top: 10.0, right: 16.0, bottom: 14.0),  // 分别设置左、上、右、下的 padding
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '大家都在搜',
                    style: TextStyle(
                      color: Color.fromRGBO(198, 101, 56, 1.0),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: searchTags.map((tag) {
                  return Chip(
                    label: Text(tag,style: TextStyle(
                      color: Color.fromRGBO(198, 101, 56, 1.0),  // 修改文字颜色
                    ),),
                    backgroundColor: Colors.grey.shade100,
                  );
                }).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

