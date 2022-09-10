import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.lightBlueAccent[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.network(
                  "https://assets4.lottiefiles.com/packages/lf20_8xkaygbw.json"),
            ),
            SizedBox(
              height: 70,
            ),
            Text("Let your Journey begin ",
                style: GoogleFonts.bebasNeue(
                    fontWeight: FontWeight.w200, fontSize: 40)),
            SizedBox(
              height: 16,
            ),
            Text("here !",
                style: GoogleFonts.bebasNeue(
                    fontWeight: FontWeight.w200, fontSize: 60)),
          ],
        ),
      ),
    );
  }
}
