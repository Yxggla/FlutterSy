import 'package:flutter/material.dart';

class jiaoliuqzPage extends StatefulWidget {
  @override
  _jiaoliuqzPage createState() => _jiaoliuqzPage();
}

class _jiaoliuqzPage extends State<jiaoliuqzPage> {
  bool _isFavorite1 = false;
  bool _isstar1 = false;
  bool _isFavorite2 = false;
  bool _isstar2 = false;
  bool _isFavorite3 = false;
  bool _isstar3 = false;
  int _starCount1 = 230;
  int _FavoriteCount1 = 2000;
  int _starCount2 = 1500;
  int _FavoriteCount2 = 180;
  int _starCount3 = 1000;
  int _FavoriteCount3 = 517;

  void _togglestar1() {
    setState(() {
      if (_isstar1) {
        _isstar1 = false;
        _starCount1--;
      } else {
        _isstar1 = true;
        _starCount1++;
      }
    });
  }

  void _togglestar2() {
    setState(() {
      if (_isstar2) {
        _isstar2 = false;
        _starCount2--;
      } else {
        _isstar2 = true;
        _starCount2++;
      }
    });
  }

  void _togglestar3() {
    setState(() {
      if (_isstar3) {
        _isstar3 = false;
        _starCount3--;
      } else {
        _isstar3 = true;
        _starCount3++;
      }
    });
  }

  void _toggleFavorite1() {
    setState(() {
      if (_isFavorite1) {
        _isFavorite1 = false;
        _FavoriteCount1--;
      } else {
        _isFavorite1 = true;
        _FavoriteCount1++;
      }
    });
  }

  void _toggleFavorite2() {
    setState(() {
      if (_isFavorite2) {
        _isFavorite2 = false;
        _FavoriteCount2--;
      } else {
        _isFavorite2 = true;
        _FavoriteCount2++;
      }
    });
  }

  void _toggleFavorite3() {
    setState(() {
      if (_isFavorite3) {
        _isFavorite3 = false;
        _FavoriteCount3--;
      } else {
        _isFavorite3 = true;
        _FavoriteCount3++;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              SizedBox(height: 36),
              Text(
                '交流圈子',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 16),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // 阴影的偏移量
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
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
                          style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      '宋韵金辉——今日游',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          'img/ljqz-1.jpg',
                          width: 102,
                        ),
                        Image.asset(
                          'img/ljqz-2.jpg',
                          width: 102,
                        ),
                        Image.asset(
                          'img/ljqz-3.jpg',
                          width: 102,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '今日 12:40',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(width: 100),
                        GestureDetector(
                          onTap: () {
                            _toggleFavorite1();
                          },
                          child: Icon(
                            Icons.favorite,
                            color: _isFavorite1 ? Colors.orange : Colors.grey,
                            size: 24,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text('$_FavoriteCount1'),
                        SizedBox(width: 16),
                        GestureDetector(
                          onTap: () {
                            _togglestar1();
                          },
                          child: Icon(
                            Icons.star,
                            color: _isstar1 ? Colors.orange : Colors.grey,
                            size: 24,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text('$_starCount1'),
                        SizedBox(width: 4),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // 阴影的偏移量
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
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
                          'bbb',
                          style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      '杭州研学',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          'img/ljqz-4.jpg',
                          width: 102,
                        ),
                        Image.asset(
                          'img/ljqz-5.jpg',
                          width: 102,
                        ),
                        Image.asset(
                          'img/ljqz-6.jpg',
                          width: 102,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '今日 12:40',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(width: 100),
                        GestureDetector(
                          onTap: () {
                            _toggleFavorite2();
                          },
                          child: Icon(
                            Icons.favorite,
                            color: _isFavorite2 ? Colors.orange : Colors.grey,
                            size: 24,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text('$_FavoriteCount2'),
                        SizedBox(width: 16),
                        GestureDetector(
                          onTap: () {
                            _togglestar2();
                          },
                          child: Icon(
                            Icons.star,
                            color: _isstar2 ? Colors.orange : Colors.grey,
                            size: 24,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text('$_starCount2'),
                        SizedBox(width: 4),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // 阴影的偏移量
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
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
                          'ccc',
                          style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      '当亚运遇到宋韵',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          'img/ljqz-7.jpg',
                          width: 102,
                        ),
                        Image.asset(
                          'img/ljqz-8.jpg',
                          width: 102,
                        ),
                        Image.asset(
                          'img/ljqz-9.jpg',
                          width: 102,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '今日 12:40',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(width: 100),
                        GestureDetector(
                          onTap: () {
                            _toggleFavorite3();
                          },
                          child: Icon(
                            Icons.favorite,
                            color: _isFavorite3 ? Colors.orange : Colors.grey,
                            size: 24,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text('$_FavoriteCount3'),
                        SizedBox(width: 16),
                        GestureDetector(
                          onTap: () {
                            _togglestar3();
                          },
                          child: Icon(
                            Icons.star,
                            color: _isstar3 ? Colors.orange : Colors.grey,
                            size: 24,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text('$_starCount3'),
                        SizedBox(width: 4),
                      ],
                    ),
                  ],
                ),
              ),

            ]),
          ),
          PositionedFloatingImage()
        ],
      )


    );
  }
}
class PositionedFloatingImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16,
      right: 16,
      child: Container(
        width: 50,
        height: 50,
        child: Image.asset('img/ljqz-10.png'), // Replace with your image
      ),
    );
  }
}