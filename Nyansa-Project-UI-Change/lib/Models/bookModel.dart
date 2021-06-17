import 'package:cloud_firestore/cloud_firestore.dart';

class Book {
  String id;
  String name;
  String author;
  int length;
  Timestamp dateCompleted;

  Book({
    this.id,
    this.author,
    this.name,
    this.length,
    this.dateCompleted,
  });

  factory Book.fromDocument(DocumentSnapshot document) {
    return Book(
      name: document["name"],
      author: document["author"],
      length: document["length"],
      dateCompleted: document['dateCompleted'],
    );
  }
}
