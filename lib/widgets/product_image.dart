import 'package:flutter/material.dart';
import 'package:starbucks_app_ui/gradient.dart';
import 'package:starbucks_app_ui/models/product_model.dart';

class ProductImage extends StatelessWidget {
  final Product product;
  const ProductImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrain) {
        return SizedBox(
          height: constrain.maxWidth * 1.25,
          width: constrain.maxWidth,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                width: constrain.maxWidth * 0.9,
                height: constrain.maxWidth * 0.9,
                decoration:
                    const BoxDecoration(gradient: AppGradients.blackToRed, shape: BoxShape.circle),
              ),
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(constrain.maxWidth * 0.45)),
                child: SizedBox(
                  width: constrain.maxWidth * 0.9,
                  height: constrain.maxWidth * 1.4,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Positioned(
                          bottom: -60,
                          width: constrain.maxWidth * 0.9,
                          height: constrain.maxWidth * 1.4,
                          child: Image.asset(
                            'assets/${product.image}',
                            fit: BoxFit.contain,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
