import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utils/color.dart';
import '../../utils/decoration.dart';

Widget globalTextFormField({
  String? labelText,
  String? hintText,
  String? prefixText,
  dynamic floatingLabelBehavior,
  TextInputType? keyboardType,
  Color? mycolor,
  Color? containercolor,
  String? inputType,
  bool? isenable,
  Widget? suffixIcon,
  bool? obscureText,
  Widget? prefixIcon,
  String? Function(String?)? validator,
  TextEditingController? controller,
  bool? readonly,
  int? maxLength,
  bool? filled,
  Color? fillColor,
  EdgeInsetsGeometry? padding,
  EdgeInsetsGeometry? contentPadding,
  ValueChanged<String>? onChanged,
  List<TextInputFormatter>? inputFormatters,
  InputBorder? outlineInputBorder,
  InputBorder? errorBorder,
  InputBorder? enabledBorder,
  InputBorder? focusedErrorBorder,
  BorderRadius? borderradius,
  Color? focusColor,
  FocusNode? focusNode,
  int? maxLines,
  List<BoxShadow>? boxShadow,
}) {
  List<TextInputFormatter> inputFormatters = [];
  switch (inputType) {
    case "number":
      keyboardType = TextInputType.number;
      inputFormatters
          .add(FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')));
      inputFormatters.add(LengthLimitingTextInputFormatter(maxLength));
      break;
    case "email":
      keyboardType = TextInputType.emailAddress;
      break;
    case "text":
      keyboardType = TextInputType.text;
      break;
    default:
      keyboardType = TextInputType.text;
      break;
  }

  return Column(
    children: [
      Padding(
        padding: padding ??
            const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: containercolor,
            borderRadius: borderradius ?? BorderRadius.all(Radius.circular(29)),
            boxShadow: boxShadow ?? [],
          ),
          child: TextFormField(
            focusNode: focusNode,
            obscureText: obscureText ?? false,
            validator: validator,
            controller: controller,
            keyboardType: keyboardType,
            cursorColor: blackL,
            onChanged: onChanged,
            inputFormatters: inputFormatters,
            style:
                mediumTextStyle(fontSize: 14, color: blackH.withOpacity(0.9)),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            readOnly: readonly ?? false,
            maxLines: maxLines,
            decoration: InputDecoration(
              filled: filled,
              fillColor: (focusNode != null && focusNode.hasFocus)
                  ? bluelight
                  : (fillColor ?? white),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              contentPadding: contentPadding ??
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 22),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelStyle: mediumTextStyle(fontSize: 14, color: blackL),
              labelText: labelText,
              hintText: hintText,
              helperText: prefixText,
              hintStyle: mediumTextStyle(fontSize: 14, color: blackL),
              focusedBorder: outlineInputBorder ??
                  OutlineInputBorder(
                    borderRadius: borderradius ?? BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      color: blackL.withOpacity(0.8),
                      width: 1,
                    ),
                  ),
              enabledBorder: enabledBorder ??
                  OutlineInputBorder(
                    borderRadius: borderradius ?? BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      color: blackL.withOpacity(0.5),
                      width: 1,
                    ),
                  ),
              errorBorder: errorBorder ??
                  OutlineInputBorder(
                    borderRadius: borderradius ?? BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      color:
                          const Color.fromRGBO(211, 5, 16, 1).withOpacity(0.3),
                      width: 2,
                    ),
                  ),
              focusedErrorBorder: focusedErrorBorder ??
                  OutlineInputBorder(
                    borderRadius: borderradius ?? BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      color:
                          const Color.fromRGBO(211, 5, 16, 1).withOpacity(0.2),
                      width: 2,
                    ),
                  ),
            ),
          ),
        ),
      ),
    ],
  );
}
