import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

class GoogleSignInProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  User? _user;

  User? get user => _user;

  Future<void> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        // User cancelled the sign-in flow
        return;
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Once signed in, return the UserCredential
      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      // Store user's credentials in device's secure storage
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('google_id_token', googleAuth.idToken ?? '');
      prefs.setString('google_access_token', googleAuth.accessToken ?? '');

      _user = userCredential.user;
      notifyListeners();
    } catch (e) {
      // Handle the error here
      print('Failed to sign in with Google: $e');
    }
  }

  Future<void> checkCurrentUser() async {
    User? currentUser = _auth.currentUser;

    if (currentUser != null) {
      _user = currentUser;
      notifyListeners();
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('google_id_token');
    prefs.remove('google_access_token');

    _user = null;
    notifyListeners();
  }
}
