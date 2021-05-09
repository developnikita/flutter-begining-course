import 'package:firebase_auth/firebase_auth.dart';
import 'package:brew_crew/models/user.dart' as model;

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  // create user obj based on User from Firebase
  model.User _userFromFirebaseUser(User firebaseUser) {
    return firebaseUser != null ? model.User(uid: firebaseUser.uid) : null;
  }

  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password

  // register with email and password

  // sign out

}