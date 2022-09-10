import 'package:flutter/material.dart';
import 'package:flutter_diet_tips/intro_screens/intro_page_1.dart';
import 'package:flutter_diet_tips/intro_screens/intro_page_2.dart';
import 'package:flutter_diet_tips/intro_screens/intro_page_3.dart';
import 'package:flutter_diet_tips/pages/check_user_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: const [IntroPage1(), IntroPage2(), IntroPage3()],
        ),

        //Dot Indicators
        Container(
          alignment: const Alignment(00, 0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              onLastPage
                  ? (GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(1);
                      },
                      child: Text(
                        "Back",
                        style:
                            GoogleFonts.bebasNeue(fontWeight: FontWeight.w200),
                      ),
                    ))
                  : (GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(3);
                      },
                      child: Text(
                        "Skip",
                        style:
                            GoogleFonts.bebasNeue(fontWeight: FontWeight.w200),
                      ),
                    )),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: JumpingDotEffect(
                  activeDotColor: Colors.accents.first,
                  dotHeight: 12,
                  dotWidth: 12,
                  verticalOffset: 12,
                ),
              ),
              onLastPage
                  ? (GestureDetector(
                      child: Text(
                        "I'm in",
                        style:
                            GoogleFonts.bebasNeue(fontWeight: FontWeight.w200),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const CheckUserState();
                        }));
                      },
                    ))
                  : (GestureDetector(
                      child: Text(
                        "Next",
                        style:
                            GoogleFonts.bebasNeue(fontWeight: FontWeight.w200),
                      ),
                      onTap: () {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.easeIn);
                      },
                    )),
            ],
          ),
        ),
      ],
    ));
  }
}
