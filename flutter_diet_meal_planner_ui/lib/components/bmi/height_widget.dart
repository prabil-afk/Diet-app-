import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeightWidget extends StatefulWidget {
  final Function(int) onChange;

  const HeightWidget({Key? key, required this.onChange}) : super(key: key);

  @override
  _HeightWidgetState createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  int _height = 150;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          elevation: 5,
          // shadowColor: Colors.transparent,
          color: Colors.white,
          child: Column(
            children: [
              Text("Slide your Height",
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _height.toString(),
                    style: const TextStyle(fontSize: 40),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "cm",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  )
                ],
              ),
              Slider(
                min: 1,
                max: 400,
                value: _height.toDouble(),
                thumbColor: Colors.red,
                onChanged: (value) {
                  setState(() {
                    _height = value.toInt();
                  });
                  widget.onChange(_height);
                },
              )
            ],
          )),
    );
  }
}
