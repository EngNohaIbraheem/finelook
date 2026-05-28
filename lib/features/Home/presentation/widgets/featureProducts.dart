import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../products/manger/products_cubit.dart';
import 'product_card.dart';

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    ///
    /// //////////////////////////////
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        var cubit = context.read<ProductsCubit>();
        var products = cubit.PoductsModel?.data?.products;

        ///huhoih////////////////////
        return SizedBox(
          height: 280,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: products?.length ?? 0,
            separatorBuilder: (_, __) => const SizedBox(width: 10),
            itemBuilder: (_, index) {
              var product = products?[index];
              return ProductCard(
                image: product?.imageCover ?? "",
                title: product?.name ?? "",
                price: product?.price.toString() ?? "",
              );
            },
          ),
        );
      },
    );
  }

}



