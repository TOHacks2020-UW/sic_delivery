import 'package:firebase_auth/firebase_auth.dart';
import 'user.dart';

class Authentication{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid) : null;
  }
  
  Stream<User> get user {
    return _auth.onAuthStateChanged
    // custom user
    .map(_userFromFirebaseUser);
  }
  
  Future signIn() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user;  
    }
    catch(e){
      print(e.toString());
      return null;
    }

  }

  Future signOut() async {
    try{
      return await _auth.signOut();
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
}