import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  String? name = '';

  @override
  XFile? _image;
  final picker = ImagePicker();

  _imgFromGallery() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  // static User fromJson(Map<String, dynamic> json) => User (
  //   age: json['age'],
  //   fname: json['first name'],
  // );

  getProfileImage() {
    if (_image != null && _image!.path.isNotEmpty) {
      return Image.file(
        File(_image!.path),
        fit: BoxFit.cover,
      );
    } else {
      return Image.network(
        "https://image.shutterstock.com/image-vector/drawing-illustration-beautiful-male-front-600w-1547967296.jpg",
      );
    }
  }

  // Future _getDataFromDatabase() async {
  //   await FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(FirebaseAuth.instance.currentUser!.uid)
  //       .get()
  //       .then((snapshot) async {
  //     if (snapshot.exists) {
  //       setState(() {
  //         age = snapshot.data()!['age'];
  //         email = snapshot.data()!['first name'];
  //       });
  //     }
  //   });
  // }
  // @override
  // void initState() {
  //   super.initState();
  //   _getDataFromDatabase();
  // }

  final user = FirebaseAuth.instance.currentUser!;

  // Stream<List<User>> readUser() => FirebaseFirestore.instance.collection("users").snapshots().map((snapshot)=>snapshot.docs.map((doc)=>User.fromJson(doc.data())).toList());

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Profile",
            style: GoogleFonts.bebasNeue(fontSize: 26, letterSpacing: 1.2)),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            _imgFromGallery();
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.grey[200],
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                      height: 100,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.black, width: 1)),
                                child: ClipOval(
                                  child: Material(
                                    child: getProfileImage(),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: InkWell(
                                child: Container(
                                  height: 28,
                                  width: 28,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      // color: Colors.green,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.photo_camera_back,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () async {
                                  _imgFromGallery();
                                },
                              ),
                            )
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    padding: EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border: Border.all(color: Colors.white70),
                        borderRadius: BorderRadius.circular(12)),
                    /////
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      child: TextField(
                        controller: TextEditingController(text: "Prabil"),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: ("First Name"),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    padding: EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border: Border.all(color: Colors.white70),
                        borderRadius: BorderRadius.circular(12)),
                    /////
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      child: TextField(
                        controller: TextEditingController(text: "Shrestha"),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: ("Last Name"),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                border: Border.all(color: Colors.white70),
                                borderRadius: BorderRadius.circular(12)),
                            /////
                            child: Container(
                              alignment: Alignment.center,
                              height: 60,
                              child: TextField(
                                // controller: _ageController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: ("Age"),
                                  prefixIcon:
                                      Icon(Icons.health_and_safety_outlined),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: SizedBox(
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                border: Border.all(color: Colors.white70),
                                borderRadius: BorderRadius.circular(12)),
                            /////
                            child: Container(
                              alignment: Alignment.center,
                              height: 60,
                              child: TextField(
                                // controller: _heightController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: ("Height"),
                                  hintText: "in cm",
                                  prefixIcon: Icon(Icons.trending_up_rounded),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: SizedBox(
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                border: Border.all(color: Colors.white70),
                                borderRadius: BorderRadius.circular(12)),
                            /////
                            child: Container(
                              alignment: Alignment.center,
                              height: 60,
                              child: TextField(
                                // controller: _weightController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: ("Mass"),
                                  hintText: "in KG",
                                  prefixIcon:
                                      Icon(Icons.monitor_weight_outlined),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),

                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.white70),
                      borderRadius: BorderRadius.circular(12)),
                  /////
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    child: TextField(
                      controller: TextEditingController(text: user.email!),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: ("E-mail Address"),
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                    ),
                  ),
                ),
                // Text(user.email!),
                // Text(uid.);
              ],
            ),
          ),
        ),
      ),
    );
  }
}
