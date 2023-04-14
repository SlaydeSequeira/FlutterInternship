import 'package:flutter/material.dart';

class ExampleFunction extends StatefulWidget {
  @override
  _ExampleFunctionState createState() => _ExampleFunctionState();
}
class _ExampleFunctionState extends State<ExampleFunction> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: <Widget>[
              Image.asset('assets/images/1.jpg', fit: BoxFit.cover),
              Image.asset('assets/images/2.jpg', fit: BoxFit.cover),
              Image.asset('assets/images/3.jpg', fit: BoxFit.cover),
              Image.asset('assets/images/4.jpg', fit: BoxFit.cover),
            ],
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          child:Card(
            elevation: 10,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white60,
              borderRadius: BorderRadius.circular(10.0), // set the border radius to 10
            ),
            child: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.black,
              size: 35,
            ),
          ),

          ),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Card(
            elevation: 10,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white60,
              borderRadius: BorderRadius.circular(10.0), // set the border radius to 10

            ),
            child: Icon(
              Icons.share,
              color: Colors.black,
              size: 35,
            ),
          ),
          ),
        ),
        Positioned(
          bottom: 20.0,
          left: 0.0,
          right: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildDot(0, 10.0),
              _buildDot(1, 10.0),
              _buildDot(2, 10.0),
              _buildDot(3, 10.0),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDot(int index, double size) {
    Color color = _currentPage == index ? Colors.blue : Colors.grey;
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: size,
        height: size,
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
