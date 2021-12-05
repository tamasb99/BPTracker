import 'package:firebase_auth/firebase_auth.dart';
import 'package:proba_bpt/models/myuser.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user object based on firebaseuser
  MyUser? _userFromFirebaseUser(User user) {
    if (user != null)
    {
      return MyUser(uid: user.uid);
    }
    else
      {
      return null;
    }
  }

  // sign in guest
  Future signInAnon() async {

    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user!;
      return _userFromFirebaseUser(user);
      return user;
    } catch(e) {
      print(e.toString());
      return null;
    }
  }


  // sign in with email + password

  // register

  // sign out

}