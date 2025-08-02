import 'package:fruits_hub/core/entities/review_entity.dart';

num getAvgRating(List<ReviewEntity> reviews) {
  if (reviews.isEmpty) return 0;

  num totalRating = 0;
  for (var review in reviews) {
    totalRating += review.ratting;
  }
  
  return totalRating / reviews.length;
}
