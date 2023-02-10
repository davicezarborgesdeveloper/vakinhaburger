import 'package:dw9_delivery_app/app/models/product.dart';

abstract class ProductsRepository {
  Future<List<ProductModel>> findAllProducts();
}
