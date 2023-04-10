import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseAuth auth = FirebaseAuth.instance;


class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  

  Future<void> signEmailPassword({required String email, required String password}) async {
    await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);

  }

  Future<void> createEmailPassword({required String email, required String password}) async {
    UserCredential userCred = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

    await createUserDocument(userCred.user!.uid, email, userCred.user!.displayName!);
  }

  Future<void> createUserDocument(String userId, String email, String displayName) async {
  try {
    await FirebaseFirestore.instance.collection('users').doc(userId).set({
      'email': email,
      'display_name': displayName,
      'created_at': FieldValue.serverTimestamp(),
    });
    print('User document created for user ID: $userId');
  } catch (e) {
    print(e);
  }
}

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

}



//  User user = userCredential.user!;
//     await _firestore.collection('users').doc(user.uid).set({
//       'name': name,
//       'email': email,
//       'createdAt': FieldValue.serverTimestamp(),
//     });
//     print('User data added to Firestore');
//   } on FirebaseAuthException catch (e) {
//     if (e.code == 'weak-password') {
//       print('The password provided is too weak.');
//     } else if (e.code == 'email-already-in-use') {
//       print('The account already exists for that email.');
//     }
//   } catch (e) {
//     print(e);
  // }