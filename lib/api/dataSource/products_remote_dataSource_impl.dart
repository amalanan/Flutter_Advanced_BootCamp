import 'package:advanced_bootcamp_part1/api/client/api_client.dart';
import 'package:advanced_bootcamp_part1/data/dataSources/products_remote_dataSource.dart';

import '../../domain/models/product.dart';
import '../responses/product.dart';

class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  ApiClient _client;

  ProductsRemoteDataSourceImpl(this._client);

  @override
  Future<List<Product>> getProducts() async {
    var response = await _client.getProducts(10);

    return response.products?.map((productDto) => productDto.toProduct())
            .toList() ??
        [];
  }
}
