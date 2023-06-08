import 'package:flutter/material.dart';

class AdvancedPageView extends StatefulWidget {
  const AdvancedPageView({super.key});

  @override
  State<AdvancedPageView> createState() => _AdvancedPageViewState();
}

class _AdvancedPageViewState extends State<AdvancedPageView> {
  int _currentPage = 1;
  final PageController _controller = PageController(initialPage: 1);

  void goToPage1() => _controller.animateToPage(
        0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
  void goToPage2() => _controller.animateToPage(
        1,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
  void goToPage3() => _controller.animateToPage(
        2,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: goToPage1, child: const Text('1')),
          TextButton(onPressed: goToPage2, child: const Text('2')),
          TextButton(onPressed: goToPage3, child: const Text('3')),
        ],
        title: Text('Page ${_currentPage + 1}/3'),
      ),
      body: PageView(
        controller: _controller,
        onPageChanged: (value) {
          setState(() {
            _currentPage = value;
          });
        },
        children: [
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text('Screen 1', style: TextStyle(fontSize: 40)),
            ),
          ),
          Container(
            color: Colors.red,
            child: const Center(
              child: Text('Screen 2', style: TextStyle(fontSize: 40)),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text('Screen 3', style: TextStyle(fontSize: 40)),
            ),
          ),
        ],
      ),
    );
  }
}
