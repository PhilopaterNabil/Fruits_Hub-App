import 'package:fruits_hub/core/entities/review_entity.dart';

class ReviewModel {
  final String name;
  final String imageUrl;
  final num ratting;
  final String date;
  final String reviewDescription;

  ReviewModel({
    required this.name,
    required this.imageUrl,
    required this.ratting,
    required this.date,
    required this.reviewDescription,
  });

  factory ReviewModel.fromEntity(ReviewEntity entity) {
    return ReviewModel(
      name: entity.name,
      imageUrl: entity.imageUrl,
      ratting: entity.ratting,
      date: entity.date,
      reviewDescription: entity.reviewDescription,
    );
  }

  toJson() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'ratting': ratting,
      'date': date,
      'reviewDescription': reviewDescription,
    };
  }
}
