import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String email;
  final String password;
  final String child_name;
  final String child_age;
  final int reading_minutes;

  const User(
      {this.child_age,
      this.password,
      this.child_name,
      this.email,
      this.reading_minutes});

  factory User.fromDocument(DocumentSnapshot document) {
    return User(
      email: document['email'],
      child_age: document['child_age'],
      child_name: document['child_name'],
      password: document["password"],
      reading_minutes: document['reading_minutes'],
    );
  }
}
