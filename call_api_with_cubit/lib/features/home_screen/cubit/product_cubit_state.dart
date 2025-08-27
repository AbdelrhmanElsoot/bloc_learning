part of 'product_cubit_cubit.dart';

sealed class ProductCubitState extends Equatable {
  const ProductCubitState();

  @override
  List<Object> get props => [];
}

class LoadingState extends ProductCubitState {}

class ProductDate extends ProductCubitState {
  ProductsModel products;
  ProductDate(this.products);
  @override
  List<Object> get props => [products];
}

class ErrorState extends ProductCubitState {
  String errorMassege;
  ErrorState(this.errorMassege);
}
