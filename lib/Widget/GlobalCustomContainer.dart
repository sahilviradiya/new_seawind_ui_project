import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Color? borderColor;
  final double? borderRadius;

  const CustomContainer({
    Key? key,
    required this.text,
    this.width = double.infinity,
    this.padding =
        const EdgeInsets.only(left: 10.0, bottom: 4, top: 4, right: 8),
    this.borderColor = Colors.grey,
    this.borderRadius = 10.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor!),
        borderRadius: BorderRadius.circular(borderRadius!),
      ),
      child: Padding(
        padding: padding!,
        child: Text(text),
      ),
    );
  }
}
