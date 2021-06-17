import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String email;
  final String password;

  const User({this.password, this.email});

  factory User.fromDocument(DocumentSnapshot document) {
    return User(
      email: document['email'],
      password: document["password"],
    );
  }
}
