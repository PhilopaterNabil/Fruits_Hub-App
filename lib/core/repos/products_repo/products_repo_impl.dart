import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/core/models/product_model.dart';
import 'package:fruits_hub/core/repos/products_repo/products_repo.dart';
import 'package:fruits_hub/core/services/database_service.dart';
import 'package:fruits_hub/core/utils/backend_endpoint.dart';

class ProductsRepoImpl extends ProductsRepo {
  final DatabaseService databaseService;

  ProductsRepoImpl({required this.databaseService});

  @override
  Future<Either<Failures, List<ProductEntity>>> getProducts() async {
    try {
      var data = await databaseService.getData(path: BackendEndpoint.getProductsData)
              as List<Map<String, dynamic>>? ??
          [];

      List<ProductEntity> products =
          data.map((product) => ProductModel.fromJson(product).toEntity()).toList();

      return Right(products);
    } catch (e) {
      return Left(ServerFailure('Failed to fetch products: $e'));
    }
  }

  @override
  Future<Either<Failures, List<ProductEntity>>> getBestSellingProducts() async {
    try {
      var data = await databaseService.getData(
            path: BackendEndpoint.getProductsData,
            query: {
              'limit': 10,
              'orderBy': 'sellingCount',
              'descending': true,
            },
          ) as List<Map<String, dynamic>>? ??
          [];

      List<ProductEntity> products =
          data.map((product) => ProductModel.fromJson(product).toEntity()).toList();

      return Right(products);
    } catch (e) {
      return Left(ServerFailure('Failed to fetch products: $e'));
    }
  }
}
