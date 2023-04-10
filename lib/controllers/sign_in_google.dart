// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class AuthService{
//   signInWithGoogle() async {
//     try {
//       final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//       final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );
//       final FirebaseUser user = (await FirebaseAuth.instance.signInWithCredential(credential)).user;
//       print("signed in " + user.displayName);
//       return user;
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
// }