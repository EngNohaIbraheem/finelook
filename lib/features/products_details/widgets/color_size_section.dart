import 'package:flutter/cupertino.dart';
import 'package:newfashionstore/features/products_details/widgets/size_selector.dart';

import 'color_selector.dart';

class ColorSizeSection extends StatelessWidget {
  const ColorSizeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: ColorSelector(),
        ),
        Expanded(
          child: SizeSelector(),
        ),
      ],
    );
  }
}
