import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imc_2_0/style/color/app_color.dart';

class DefaultTextFormField extends StatefulWidget {
  const DefaultTextFormField({
    Key? key,
    required this.label,
    required this.validator,
    required this.onChanged,
    this.enabled = true,
    this.controller,
    this.keyboardType,
    this.textInputFormatter,
    this.showBorder = true,
    this.contentPadding,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  final String label;
  final Function(String? value) onChanged;
  final String? Function(String? value) validator;
  final bool enabled;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputFormatter? textInputFormatter;
  final bool showBorder;
  final EdgeInsetsGeometry? contentPadding;
  final TextAlign textAlign;

  @override
  State<DefaultTextFormField> createState() => _DefaultTextFormFieldState();
}

class _DefaultTextFormFieldState extends State<DefaultTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      inputFormatters:
          widget.textInputFormatter != null ? [widget.textInputFormatter!] : [],
      style: TextStyle(
        color: widget.enabled ? Colors.white : AppColor.disabledColor,
        fontSize: 28,
        fontWeight: FontWeight.w900,
      ),
      onChanged: (value) => widget.onChanged(value),
      validator: (value) {
        return widget.validator(value);
      },
      textAlign: widget.textAlign,
      decoration: InputDecoration(
        contentPadding: widget.contentPadding,
        labelText: widget.label,
        labelStyle: TextStyle(
            color:
                widget.enabled ? AppColor.whiteText : AppColor.disabledColor),
        enabledBorder: widget.showBorder
            ? OutlineInputBorder(
                borderSide:
                    const BorderSide(color: AppColor.whiteText, width: 1),
                borderRadius: BorderRadius.circular(4.0),
              )
            : InputBorder.none,
        disabledBorder: widget.showBorder
            ? OutlineInputBorder(
                borderSide:
                    const BorderSide(color: AppColor.disabledColor, width: 1),
                borderRadius: BorderRadius.circular(4.0),
              )
            : InputBorder.none,
        border: widget.showBorder
            ? OutlineInputBorder(
                borderSide:
                    const BorderSide(color: AppColor.whiteText, width: 1),
                borderRadius: BorderRadius.circular(4.0),
              )
            : InputBorder.none,
      ),
      keyboardType: widget.keyboardType,
    );
  }
}
