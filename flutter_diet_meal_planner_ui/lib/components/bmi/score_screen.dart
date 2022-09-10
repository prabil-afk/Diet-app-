import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pretty_gauge/pretty_gauge.dart';
import 'package:share_plus/share_plus.dart';

class ScoreScreen extends StatelessWidget {
  final double bmiScore;

  final int age;

  String? bmiStatus;

  String? bmiInterpretation;

  Color? bmiStatusColor;

  ScoreScreen({Key? key, required this.bmiScore, required this.age})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    setBmiInterpretation();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI Score",
            style: GoogleFonts.bebasNeue(fontSize: 30, letterSpacing: 1.2)),
      ),
      body: Container(
          padding: const EdgeInsets.all(12),
          child: Card(
              elevation: 0,
              shape: const RoundedRectangleBorder(),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Your BMI Score",
                        style: GoogleFonts.lato(
                            fontSize: 40, fontWeight: FontWeight.w600)),
                    const SizedBox(
                      height: 10,
                    ),
                    PrettyGauge(
                      gaugeSize: 300,
                      minValue: 0,
                      maxValue: 40,
                      segments: [
                        GaugeSegment('UnderWeight', 18.5, Colors.red),
                        GaugeSegment('Normal', 6.4, Colors.green),
                        GaugeSegment('OverWeight', 5, Colors.orange),
                        GaugeSegment('Obese', 10.1, Colors.pink),
                      ],
                      valueWidget: Text(
                        bmiScore.toStringAsFixed(1),
                        style: const TextStyle(fontSize: 40),
                      ),
                      currentValue: bmiScore.toDouble(),
                      needleColor: Colors.blue,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(bmiStatus!,
                        style: GoogleFonts.bebasNeue(
                          fontSize: 50,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.2,
                          color: bmiStatusColor!,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      bmiInterpretation!,
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Re-calculate")),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Share.share(
                                  "Your BMI is ${bmiScore.toStringAsFixed(1)} at age $age");
                            },
                            child: const Text("Share")),
                      ],
                    )
                  ]))),
    );
  }

  void setBmiInterpretation() {
    if (bmiScore > 30) {
      bmiStatus = "Obese Symptoms";
      bmiInterpretation =
          "Seems like you have obesity Symptoms, Need some Workouts.";
      bmiStatusColor = Colors.pink;
    } else if (bmiScore >= 25) {
      bmiStatus = "Overweight";
      bmiInterpretation =
          "Oh No ! You are overweight. Need some heavy excersice and workouts";
      bmiStatusColor = Colors.orange;
    } else if (bmiScore >= 18.5) {
      bmiStatus = "Normal BMI";
      bmiInterpretation =
          "Yayy ! No need to worry about. You are fit and fine. ";
      bmiStatusColor = Colors.green;
    } else if (bmiScore < 18.5) {
      bmiStatus = "Underweight";
      bmiInterpretation =
          "Oh No ! Your weight is below recommended. You neews to eat healthy and might change diet.";
      bmiStatusColor = Colors.red;
    }
  }
}
