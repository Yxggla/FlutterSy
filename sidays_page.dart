import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class sidaysPage extends StatefulWidget {
  @override
  _sidaysPageState createState() => _sidaysPageState();
}

class _sidaysPageState extends State<sidaysPage> {
  final List<String> imagePaths = [
    'img/sidays-1.jpg',
    'img/sidays-2.jpg',
    'img/sidays-3.jpg',
    'img/sidays-4.jpg',
    // Add more image paths as needed
  ];
  final List<String> titles = [
    '焚香之美',
    '点茶之美',
    '插花之美',
    '挂画之美',
    // Add more image paths as needed
  ];
  final List<String> contents = [
    '书斋庭院里，千古文人佳客梦，红袖添香夜读书。香气悠然里，或抱膝观书，或对坐清谈，都是古典中国隽永的意象。',
    '自茶被发现及饮用以来，都被历代文人雅士所追捧。三五好友，聚于高山流水之间，品茗谈志，尽显中国文人之风。',
    '宋朝文化艺术迅速发展，举国上下插花之风亦然盛行。《洛阳牡丹记》 有载：“洛阳之俗，大抵好花；春时，城中无贵贱皆插花。"',
    '"挂画"最早挂于茶会座位旁，内容是关于茶的知识，演变至宋代，挂画改以诗、词、字、画的卷轴为主，当时文人雅士讲究挂画的内容和展示的形式。',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true, // 显示默认的返回按钮
        leading: BackButton(color: Colors.orange),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '四大雅事',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
          ),
          Container(
            height: 500,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImageDetailsPage(
                            imagePaths: imagePaths,
                            initialIndex: index,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 280,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(243, 231, 211, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Hero(
                            tag: 'imageTag$index', // Use a unique tag for each image
                            child: Image.asset(
                              imagePaths[index],
                              height: 340,
                            ),
                          ),
                          Text(
                            '${titles[index]}', // 替换为实际标题
                            style: TextStyle(fontSize: 20, color: Colors.orange),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '${contents[index]}', // 替换为实际描述
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ImageDetailsPage extends StatelessWidget {
  final List<String> imagePaths;
  final int initialIndex;

  ImageDetailsPage({required this.imagePaths, required this.initialIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          color: Colors.black,
          child: PhotoViewGallery.builder(
            itemCount: imagePaths.length,
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: AssetImage(imagePaths[index]),
                minScale: PhotoViewComputedScale.contained * 0.8,
                maxScale: PhotoViewComputedScale.covered * 2,
              );
            },
            backgroundDecoration: BoxDecoration(
              color: Colors.black,
            ),
            pageController: PageController(initialPage: initialIndex),
          ),
        ),
      ),
    );
  }
}
