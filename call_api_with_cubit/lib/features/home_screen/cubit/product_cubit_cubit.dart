import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:call_api_with_cubit/features/home_screen/models/product_model.dart';
import 'package:call_api_with_cubit/features/home_screen/services/home_screen_services.dart';
import 'package:equatable/equatable.dart';

part 'product_cubit_state.dart';

class ProductCubitCubit extends Cubit<ProductCubitState> {
  final HomeScreenServices homeScreenServices;
  ProductCubitCubit(this.homeScreenServices) : super(LoadingState());

  getProduct() async {
    emit(LoadingState());
    try {
      final products = await homeScreenServices.getProducts();
      emit(ProductDate(products));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
