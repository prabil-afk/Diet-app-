import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'non_veg_diet_details.dart';

class NonVegDiet extends StatelessWidget {
  const NonVegDiet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: (Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 28),
                child: Text(
                  "Non-Veggie Diet",
                  style: GoogleFonts.bebasNeue(fontSize: 62, color: Colors.red),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Text(
                    "Here are the lists for your Non-Vegeterian Diet plans",
                    style: GoogleFonts.poppins(fontSize: 20)),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NonVegDietDetails()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(left: 26),
                  child: Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1552913903-2cffa1962dc7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                        width: 100,
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sausages",
                          style: GoogleFonts.lato(fontSize: 16),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "420 K/Cal  |  Protein Rich",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                padding: EdgeInsets.only(left: 26),
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1529692236671-f1f6cf9683ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                      width: 100,
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Steaks",
                        style: GoogleFonts.lato(fontSize: 16),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "8 K/Cal  | Protein & Fat",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                padding: EdgeInsets.only(left: 26),
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1609604820237-4cd9638aa43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                      width: 100,
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ham and Fats",
                        style: GoogleFonts.lato(fontSize: 16),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "1000 K/Cal  |  Fats",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                padding: EdgeInsets.only(left: 26),
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1465014925804-7b9ede58d0d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=476&q=80",
                      width: 100,
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Eggs Fried",
                        style: GoogleFonts.lato(fontSize: 16),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "120 K/Cal  | Protein",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ]),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
