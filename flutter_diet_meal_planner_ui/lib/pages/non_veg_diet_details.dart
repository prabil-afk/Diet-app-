import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NonVegDietDetails extends StatelessWidget {
  const NonVegDietDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Non-Veggie Diet, Sausages",
            style: GoogleFonts.bebasNeue(fontSize: 26, letterSpacing: 1.2)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Image.network(
                "https://images.unsplash.com/photo-1552913903-2cffa1962dc7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 40,
              ),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Fried Sausages",
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
                            "16",
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
                          Text("420",
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
                          Text("32",
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
                    "- Sausages",
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "- Tomato",
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "- Salt",
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "- Oil",
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
