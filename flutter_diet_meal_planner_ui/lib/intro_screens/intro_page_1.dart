import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.pinkAccent[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.network(
                  "https://assets6.lottiefiles.com/packages/lf20_ju61m9x9.json"),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text("Warm up yourself",
                  style: GoogleFonts.bebasNeue(
                      fontWeight: FontWeight.w200, fontSize: 60)),
            )
          ],
        ),
      ),
    );
  }
}
