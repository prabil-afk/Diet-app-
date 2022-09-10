import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetDietPlan extends StatelessWidget {
  final String documentId;

  GetDietPlan({required this.documentId});

  @override
  Widget build(BuildContext context) {
    //pulling collection

    CollectionReference diets = FirebaseFirestore.instance.collection('diets');

    return FutureBuilder<DocumentSnapshot>(
        future: diets.doc(documentId).get(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return GestureDetector(
              onTap: () {
                //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DietDetailsPage(die: [index])));
              },
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      "${data['image']}",
                      width: 100,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "${data['name']}".toUpperCase(),
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  // Text("${data['ingredients']}"),
                ],
              ),
            );
          }
          return Text("loading");
        }));
  }
}
