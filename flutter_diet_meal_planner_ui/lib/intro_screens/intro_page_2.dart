import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.greenAccent[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.network(
                  "https://assets9.lottiefiles.com/packages/lf20_lo4walns.json"),
            ),
            Center(
              child: Text(
                "Your ultimate guide to ",
                style: GoogleFonts.bebasNeue(
                    fontWeight: FontWeight.w200, fontSize: 40),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: Text("Healthy lifestye",
                  style: GoogleFonts.bebasNeue(
                      fontWeight: FontWeight.w200, fontSize: 60)),
            )
          ],
        ),
      ),
    );
  }
}
