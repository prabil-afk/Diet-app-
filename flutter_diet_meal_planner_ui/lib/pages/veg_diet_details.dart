import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VegDietDetails extends StatelessWidget {
  const VegDietDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Veggie Diet, Vegeterian Salad with Spinach",
            style: GoogleFonts.bebasNeue(fontSize: 26, letterSpacing: 1.2)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Image.network(
                "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 40,
              ),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Vegeterian Salad with Spinach",
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
                            "22",
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
                          Text("180",
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
                          Text("18",
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
                    "- Tomato",
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "- Carrot",
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "- Dragon Fruits",
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
