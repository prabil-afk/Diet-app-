// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_diet_tips/pages/diet_details_page.dart';

// import 'get_veg_diet_plan.dart';

// class VegDiet extends StatefulWidget {
//   const VegDiet({Key? key}) : super(key: key);

//   @override
//   State<VegDiet> createState() => _VegDietState();
// }

// class _VegDietState extends State<VegDiet> {
//   @override
//   Widget build(BuildContext context) {
//     /////
//     ///
//     ///
//     List<String> docIDs = [];

//     Future getDocId() async {
//       await FirebaseFirestore.instance.collection('veg').get().then(
//             (snapshot) => snapshot.docs.forEach((document) {
//               var ingredients = document['ingredients'];
//               var name = document['name'];
//               var type = document['type'];
//               var calorie = document['calorie'];
//               print(
//                   "Ingredients for $name : $ingredients has calorie $calorie KCal");
//               print("Diet Type $type");
//               docIDs.add(document.reference.id);
//             }),
//           );
//     }

//     return Container(
//       child: Expanded(
//           child: FutureBuilder(
//               future: getDocId(),
//               builder: (context, snapshot) {
//                 return ListView.builder(
//                     itemCount: docIDs.length,
//                     itemBuilder: (context, index) {
//                       return GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => DietDetailsPage()),
//                           );
//                         },
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 10, vertical: 20),
//                           child: ListTile(
//                             title: GetVegDietPlan(documentId: docIDs[index]),
//                           ),
//                           // child:
//                           //     Text("GetVegDietPlan(documentId: docIDs[index])"),
//                         ),
//                       );
//                     });
//               })),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_diet_tips/pages/veg_diet_details.dart';
import 'package:google_fonts/google_fonts.dart';

class VegDiet extends StatelessWidget {
  const VegDiet({Key? key}) : super(key: key);
  // const VegDiet({super.key});

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
                  "Veggie Diet",
                  style:
                      GoogleFonts.bebasNeue(fontSize: 62, color: Colors.green),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Text("Here are the lists for your Vegeterian Diet plans",
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
                        builder: (context) => const VegDietDetails()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(left: 26),
                  child: Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                        width: 100,
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vegeterian Salad with Spinach",
                          style: GoogleFonts.lato(fontSize: 16),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "160 K/Cal  |  Protein Rich",
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
                      "https://images.unsplash.com/photo-1623428187969-5da2dcea5ebf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
                      width: 100,
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Special Salad with Honey",
                        style: GoogleFonts.lato(fontSize: 16),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "100 K/Cal  | Nutrient Rich",
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
                      "https://images.unsplash.com/photo-1551248429-40975aa4de74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=690&q=80",
                      width: 100,
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fresh Fruits Bowl",
                        style: GoogleFonts.lato(fontSize: 16),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "200 K/Cal  |  Calcium and Protein",
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
                      "https://images.unsplash.com/photo-1621634892819-80f7874c96dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
                      width: 100,
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Euro-American Salad",
                        style: GoogleFonts.lato(fontSize: 16),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "132 K/Cal  | Protein Rich",
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
