import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/screens/home.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              // Your welcome pages go here
              WelcomeSlide(image: 'assets/images/order_food.jpg', text: 'Order your Favorite Food!'),
              WelcomeSlide(image: 'assets/images/food_track.jpg', text: 'Track your Order.'),
              WelcomeSlide(image: 'assets/images/food_payment.jpeg', text: 'Easy Payment'),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (_) =>
                              const HomePage()));
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  DotsIndicator(
                    dotsCount: 3, // Number of welcome pages
                    position: _currentPage.toDouble(),
                    decorator: const DotsDecorator(
                      color: Colors.grey, // Inactive dot color
                      activeColor: Colors.blue, // Active dot color
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeSlide extends StatelessWidget {
  final String image;
  final String text;

  WelcomeSlide({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 200.0), // Adjust height as needed
        const SizedBox(height: 20.0),
        Text(
          text,
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}