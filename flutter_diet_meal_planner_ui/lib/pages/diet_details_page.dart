import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DietDetailsPage extends StatelessWidget {
  const DietDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Milk Shake",
            style: GoogleFonts.bebasNeue(fontSize: 26, letterSpacing: 1.2)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Image.network(
                "https://firebasestorage.googleapis.com/v0/b/diet-bf33c.appspot.com/o/day_1.jpg?alt=media&token=d3bec5da-9a05-46d1-a212-98fd455c8c38"),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 40,
              ),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Milk shake",
                style: GoogleFonts.poppins(
                    fontSize: 32, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.amber,
                        border: Border.all(color: Colors.amber, width: 3),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "3",
                            style: GoogleFonts.lato(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("min"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Cooking time"),
                    // Text("time")
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.amber,
                        border: Border.all(color: Colors.red, width: 3),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("520",
                              style: GoogleFonts.lato(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                          SizedBox(
                            height: 4,
                          ),
                          Text("KCal"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Calories"),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.amber,
                        border: Border.all(color: Colors.green, width: 3),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("13",
                              style: GoogleFonts.lato(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Gms"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Protein"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 40,
              ),
              alignment: Alignment.bottomLeft,
              child: Text("Ingredients",
                  style: GoogleFonts.poppins(
                      fontSize: 22, fontWeight: FontWeight.w600)),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- Milk",
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "- Curd",
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "- Sugar",
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "- Strawberry",
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
            )
          ]),
        ),
      )),
    );
  }
}
