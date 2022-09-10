import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_diet_tips/pages/diet_details_page.dart';
import 'package:flutter_diet_tips/pages/get_diet_plan.dart';

class DietPlans extends StatefulWidget {
  const DietPlans({Key? key}) : super(key: key);

  @override
  State<DietPlans> createState() => _DietPlansState();
}

class _DietPlansState extends State<DietPlans> {
  @override
  Widget build(BuildContext context) {
    /////
    ///
    ///
    List<String> docIDs = [];
    Future getDocId() async {
      await FirebaseFirestore.instance.collection('diets').get().then(
            (snapshot) => snapshot.docs.forEach((document) {
              var ingredients = document['ingredients'];
              var name = document['name'];
              var type = document['type'];
              var calorie = document['calorie'];
              print(
                  "Ingredients for $name : $ingredients has calorie $calorie KCal");
              print("Diet Type $type");
              docIDs.add(document.reference.id);
            }),
          );
    }

    return Container(
      child: Expanded(
          child: FutureBuilder(
              future: getDocId(),
              builder: (context, snapshot) {
                return ListView.builder(
                    itemCount: docIDs.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DietDetailsPage()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: ListTile(
                            // },
                            // tileColor: Colors.grey[200],
                            title: GetDietPlan(documentId: docIDs[index]),
                            // subtitle: docIDs.name[index]),
                          ),
                        ),
                      );
                    });
              })),
    );

    // return Container(
    //   child: ,
    // )

    // return Scaffold(
    //    body: StreamBuilder<QuerySnapshot>(
    //       stream: FirebaseFirestore.instance.collection('diets').snapshots(),
    //       builder:
    //           (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
    //         if (!snapshot.hasData) {
    //           return Center(
    //             child: CircularProgressIndicator(),
    //           );
    //         }

    //         return ListView(
    //   //  snapshot.docs.forEach((document)
    //           children: snapshot.data.documents.map((document) {
    //             var url = document['url'];

    //             return Center(
    //               child: Container(
    //                 width: MediaQuery.of(context).size.width / 1.2,
    //                 child: Column(
    //                   children: <Widget>[
    //                     Padding(
    //                       padding: EdgeInsets.only(top: 20, bottom: 5,),
    //                       child: Text(document['title'],
    //                           style: GoogleFonts.quicksand(
    //                               fontStyle: FontStyle.normal)),
    //                     ),

    //                   ],
    //                 ),
    //               ),
    //             );
    //           }).toList(),
    //         );
    //       })
    // );
  }
}
