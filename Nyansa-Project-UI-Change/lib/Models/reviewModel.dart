import 'package:cloud_firestore/cloud_firestore.dart';

class Review {
  String userId;
  int rating;
  String review;

  Review({
    this.userId,
    this.rating,
    this.review,
  });

  factory Review.fromDocument(DocumentSnapshot document) {
    return Review(
      rating: document["rating"],
      review: document["review"],
    );
  }
}
