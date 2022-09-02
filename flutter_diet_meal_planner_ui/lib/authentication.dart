// //import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';

// //class Authentication {
//   final FirebaseAuth _firebaseAuth;
//   Authentication(this._firebaseAuth);
//   Stream<User> get authStateChanges => _firebaseAuth.authStateChanges  
//   Future<String> signIn({String email, String password}) async {
//     try {
//       await _firebaseAuth.signInWithEmailAndPassword(
//           email: email, password: password);
//       return "Signed in";
//     } on FirebaseAuth catch (e) {
//       return e.message;
//     }
//   }
// }
// Future<String> signUp({String email, String password}) async {
//   try{
//     await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

//   }on FirebaseAuthException catch(e){
//     return e.message;
//   }
// }