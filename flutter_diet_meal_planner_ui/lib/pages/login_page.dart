import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_diet_tips/pages/forgot_password_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;

  const LoginPage({Key? key, required this.showRegisterPage}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    try {
      // to show loading animation
      showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.greenAccent,
            ),
          );
        },
      );
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());

      Navigator.of(context).pop();
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 40),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                    // height: 70,
                    ),
                Text(
                  "Diet pro",
                  style: GoogleFonts.bebasNeue(fontSize: 70),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "we make your you reach your goal faster 🍑",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    padding: const EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border: Border.all(color: Colors.white70),
                        borderRadius: BorderRadius.circular(12)),
                    /////
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      child: TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: ("EMAIL"),
                          prefixIcon: Icon(Icons.email_outlined),
                          hintText: ("Your email address"),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 12,
                ),

                // PASSWORD
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    padding: const EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border: Border.all(color: Colors.white70),
                        borderRadius: BorderRadius.circular(12)),
                    /////
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: ("Your password"),
                          labelText: ("PASSWORD"),
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.only(right: 24, top: 12),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ForgotPasswordPage();
                      }));
                    },
                    child: const Text(
                      "Forgot Password ?",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                // Sign In Button
                const SizedBox(
                  height: 36,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all<Color>(Colors.white54),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueAccent),
                        // animationDuration: Duration(seconds: 4),
                      ),
                      onPressed: () {
                        signIn();
                      },
                      child: const Text(
                        "Log In",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not a member ? Let's "),
                    GestureDetector(
                      onTap: widget.showRegisterPage,
                      child: const Text(
                        "Register Now !",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
