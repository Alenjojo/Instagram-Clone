import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DatabaseMethod {
  getUserByUsername(String username) async {
    return await Firestore.instance
        .collection("users")
        .where("username", isEqualTo: username)
        .getDocuments();
  }

  getUserByUserEmail(String useremail) async {
    return await Firestore.instance
        .collection("users")
        .where("email", isEqualTo: useremail)
        .getDocuments();
  }

  uploadUserInfo(userMap, userId) {
    String _userId;
    FirebaseAuth.instance.currentUser().then((user) {
      _userId = user.uid;

      Firestore.instance
          .collection("users")
          .document(user.uid)
          .setData(userMap);
    });
  }
}
