import 'package:fragrance_for_you/constants/global_variables.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String image;
  const SingleProduct({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(5),
        color: GlobalVariables.selectedNavBarColor,
      ),
      child: Container(
        width: 250,
        padding: const EdgeInsets.all(10),
        child: Image.network(
          image,
          fit: BoxFit.fitHeight,
          width: 200,
        ),
      ),
    );
  }
}
