import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/features/checkout/domain/entites/order_input_entity.dart';

abstract class OrdersRepo {
  Future<Either<Failures, void>> addOrder({required OrderInputEntity orderEntity});
}
