import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final double dimension;
  const Gap({
    Key? key,
    this.dimension = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(dimension: dimension);
  }
}
