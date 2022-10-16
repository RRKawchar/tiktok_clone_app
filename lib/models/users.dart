import 'package:cloud_firestore/cloud_firestore.dart';

class Users {
  String name;
  String profilePic;
  String email;
  String uid;

  Users({
    required this.name,
    required this.profilePic,
    required this.email,
    required this.uid,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'profilePic': profilePic,
        'email': email,
        'uid': uid,
      };

  static Users fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Users(
        name: snapshot['name'],
        profilePic: snapshot['profilePic'],
        email: snapshot['email'],
        uid: snapshot['uid']);
  }
}
