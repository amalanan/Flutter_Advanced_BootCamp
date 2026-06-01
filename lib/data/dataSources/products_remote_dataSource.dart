import '../../domain/models/product.dart';

abstract class ProductsRemoteDataSource {
  Future<List<Product>> getProducts();
}
