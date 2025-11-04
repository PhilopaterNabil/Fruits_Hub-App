import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/core/repos/orders_repo/orders_repo.dart';
import 'package:fruits_hub/core/services/firestore_service.dart';
import 'package:fruits_hub/core/utils/backend_endpoint.dart';
import 'package:fruits_hub/features/checkout/data/models/order_model.dart';
import 'package:fruits_hub/features/checkout/domain/entites/order_input_entity.dart';

class OrdersRepoImpl implements OrdersRepo {
  final FirestoreService firestoreService;

  OrdersRepoImpl({required this.firestoreService});

  @override
  Future<Either<Failures, void>> addOrder({required OrderInputEntity orderEntity}) async {
    try {
      await firestoreService.addData(
        path: BackendEndpoint.addOrder,
        data: OrderModel.fromEntity(orderEntity).toJson(),
        documentId: '',
      );
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure('Failed to add order: $e'));
    }
  }
}
