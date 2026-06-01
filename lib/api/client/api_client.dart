import 'package:advanced_bootcamp_part1/api/responses/products_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';


part 'api_client.g.dart';

@RestApi(baseUrl: "https://dummyjson.com")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/products")
  Future<ProductsResponseDto> getProducts(@Query("limit") int perPage ,);
}