import 'package:flutter/material.dart';
import 'package:selfcare_360/home.dart';
import '../../../../utils/colors.dart';
// import '../screens/dashboard_screen.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<String> title = [
    "Health information & resources",
    "Virtual mental health support",
    "Low cost medical app",
  ];
  List<String> subtitle = [
    "Empowering you with knowledge for a healthier life",
    "Supporting your mental health, one virtual at a time",
    "Accessible healthcare for all, at a low cost",
  ];
  List<String> image = [
    "assets/imgs/onboarding1.png",
    "assets/imgs/onboarding2.png",
    "assets/imgs/onboarding3.png",
  ];
  int _currentPageIndex = 0;

  Widget _buildOnboardingScreen(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image[index],
          width: 300,
          height: 300,
        ),
        SizedBox(height: 30),
        Text(
          title[index],
          style: TextStyle(
            color: AppColor.kdarkblue,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Text(
          subtitle[index],
          style: TextStyle(
            fontSize: 18,
            color: AppColor.kgreen,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildPageIndicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < image.length; i++) {
      indicators.add(
        Container(
          width: 10,
          height: 10,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPageIndex == i
                ? AppColor.kdarkblue
                : AppColor.klightblue,
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: indicators,
    );
  }

  Widget _buildButtonBar() {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          onPressed: _currentPageIndex == 0
              ? null
              : () {
                  setState(() {
                    _currentPageIndex--;
                  });
                },
          child: Text(
            "Back",
            style: TextStyle(
              color: AppColor.kdarkblue,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.kgreen),
          ),
          onPressed: _currentPageIndex == title.length - 1
              ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                }
              : () {
                  setState(() {
                    _currentPageIndex++;
                  });
                },
          child: Text(
            _currentPageIndex == subtitle.length - 1 ? "Finish" : "Next",
            style: TextStyle(
              color: AppColor.kdarkblue,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildOnboardingScreen(_currentPageIndex),
            SizedBox(height: 50),
            _buildPageIndicator(),
          ],
        ),
      ),
      bottomNavigationBar: _buildButtonBar(),
    );
  }
}
