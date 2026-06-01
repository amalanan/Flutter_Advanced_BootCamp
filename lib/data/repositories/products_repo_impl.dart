import 'package:advanced_bootcamp_part1/domain/repositories/products_repo.dart';

import '../../domain/models/product.dart';
import '../dataSources/products_remote_dataSource.dart';

class ProductsRepoImpl implements ProductsRepo {
  ProductsRemoteDataSource _remoteDataSource;

  ProductsRepoImpl(this._remoteDataSource);

  @override
  Future<List<Product>> getProducts() {
    return _remoteDataSource.getProducts();
  }
}
