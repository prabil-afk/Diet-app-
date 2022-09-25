// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class AgeChartScreen extends StatefulWidget {
//   const AgeChartScreen({Key? key}) : super(key: key);

//   @override
//   State<AgeChartScreen> createState() => _AgeChartScreenState();
// }

// class _AgeChartScreenState extends State<AgeChartScreen> {
//   final _weightController = TextEditingController();

//   @override
//   void dispose() {
//     _weightController.dispose();
//     super.dispose();
//   }

//   Future signUp() async {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return Center(
//           child: CircularProgressIndicator(
//             color: Colors.deepPurpleAccent[100],
//           ),
//         );
//       },
//     );

//     // addWeightDetails(
//     //   _weightController.text.trim();
//     // );

//     Navigator.of(context).pop();
//   }

//   Future addWeightDetails(
//     String weight,
//     String timestamp,
//   ) async {
//     await FirebaseFirestore.instance
//         .collection('weight')
//         .add({'weight': weight, 'timestamp': Timestamp.now()});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Age Chart"),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//           child: Column(
//         children: [
//           Container(
//             child: Container(
//               alignment: Alignment.center,
//               height: 60,
//               child: TextField(
//                 controller: _weightController,
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
//                   labelText: ("Mass"),
//                   hintText: "in KG",
//                   prefixIcon: Icon(Icons.monitor_weight_outlined),
//                 ),
//               ),
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               addWeightDetails();
//             },
//             child: Text("Sign UP"),
//           )
//         ],
//       )),
//     );
//   }
// }
