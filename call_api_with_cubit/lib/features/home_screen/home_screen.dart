import 'package:call_api_with_cubit/features/home_screen/cubit/product_cubit_cubit.dart';
import 'package:call_api_with_cubit/features/home_screen/services/home_screen_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// UI
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductCubitCubit(HomeScreenServices())..getProduct(),
      child: Scaffold(
        body: BlocBuilder<ProductCubitCubit, ProductCubitState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProductDate) {
              final products = state.products.productsModel!;
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ProductCubitCubit>().getProduct();
                },
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ListTile(
                      title: Text(product.title ?? ""),
                      subtitle: Text("${product.price}"),
                      trailing: Image.network(
                        product.image ??
                            "https://www.tiffincurry.ca/wp-content/uploads/2021/02/default-product.png",
                      ),
                    );
                  },
                ),
              );
            } else if (state is ErrorState) {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ProductCubitCubit>().getProduct();
                },
                child: ListView(
                  children: [Center(child: Text(state.errorMassege))],
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
