import 'package:flutter/material.dart';

class SimplePageView extends StatefulWidget {
  const SimplePageView({super.key});

  @override
  State<SimplePageView> createState() => _SimplePageViewState();
}

class _SimplePageViewState extends State<SimplePageView> {
  final PageController _controller = PageController(initialPage: 1);
  int _currentPage = 1;

  void goToNextPage() => _controller.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );

  void goToPrevPage() => _controller.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Page ${_currentPage + 1}/3'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: goToPrevPage,
            child: const Text('Prev'),
          ),
          TextButton(
            onPressed: goToNextPage,
            child: const Text('Next'),
          ),
        ],
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
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
