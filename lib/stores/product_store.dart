import 'package:mobx/mobx.dart';

part 'product_store.g.dart';

class ProductStore = _ProductStoreBase with _$ProductStore;

abstract class _ProductStoreBase with Store {
  @observable
  String name;

  @observable
  String brand;

  @action
  void setName(String value) {
    name = value;
  }

  @action
  void setBrand(String value) {
    brand = value;
  }
}
