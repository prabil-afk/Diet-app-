import 'package:flutter/material.dart';
import 'package:flutter_diet_tips/pages/calendar.dart';
import 'package:flutter_diet_tips/pages/carousel.dart';
import 'package:flutter_diet_tips/pages/diet_plans.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("My Diet Plans", style: ,),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Container(
          child: Column(children: [
            Carousel(),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 24,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                "Diet Plans",
                style: GoogleFonts.bebasNeue(
                  fontSize: 60,
                ),
              ),
            ),
            DietPlans(),
            Calendar(),
          ]),
        ),
      ),
    );
  }
}
