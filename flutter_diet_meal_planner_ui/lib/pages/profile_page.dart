import 'package:flutter/material.dart';
import 'package:flutter_diet_tips/components/bmi/bmi.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_diet_tips/pages/my_profile.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  final user = FirebaseAuth.instance.currentUser!;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Profile",
            style: GoogleFonts.bebasNeue(fontSize: 26, letterSpacing: 1.2)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyProfile()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 16),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(Icons.person),
                        SizedBox(width: 36),
                        Text(
                          "View my Profile",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Bmi()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 16),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(
                          Icons.monitor_weight_outlined,
                          size: 40,
                        ),
                        SizedBox(width: 20),
                        Text("Calculate my BMI",
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 16),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(
                          Icons.logout,
                          size: 40,
                        ),
                        SizedBox(width: 20),
                        Text("Sign Out",
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
