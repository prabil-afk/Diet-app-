import 'package:flutter/material.dart';
import 'package:flutter_diet_tips/pages/carousel.dart';
import 'package:flutter_diet_tips/pages/diet_plans.dart';
import 'package:flutter_diet_tips/pages/non_veg_diet.dart';
import 'package:flutter_diet_tips/pages/veg_diet.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Choose your Diet Plans",
                style: GoogleFonts.bebasNeue(
                  fontSize: 60,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 24,
              ),
              alignment: Alignment.topLeft,
              child: Row(children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VegDiet()),
                    );
                  },
                  child: Text(
                    'Veg Diets',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NonVegDiet()),
                    );
                  },
                  child: Text(
                    'Non-Veg Diets',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ]),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Featured Diets",
                style:
                    GoogleFonts.lato(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.topLeft,
            ),
            DietPlans(),
            // Calendar(),
          ]),
        ),
      ),
    );
  }
}
