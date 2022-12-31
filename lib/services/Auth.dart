import 'package:firebase_auth/firebase_auth.dart';
import 'package:tct/models/UserModel.dart';

class AuthService {



  UserModel? _customUserFromFireBaseUser(User? user) {

    return user != null ? UserModel(user.uid) :  null;
  }

  Future registration({
    required String email,
    required String password,
  }) async {
    try {
      final res = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      User? fbUser = res.user;
      return _customUserFromFireBaseUser(fbUser);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      } else {
        return e.message;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<String?> login({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'Success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      } else {
        return e.message;
      }
    } catch (e) {
      return e.toString();
    }
  }
}