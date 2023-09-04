import 'package:flutter/material.dart';
import 'package:imc_2_0/style/color/app_color.dart';

class DefaultCard extends StatelessWidget {
  const DefaultCard({
    super.key,
    required bool isSelectedMale,
    required this.labelText,
    this.icon,
    this.color,
  }) : _isSelectedMale = isSelectedMale;

  final bool _isSelectedMale;
  final String labelText;
  final IconData? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.35,
      height: MediaQuery.of(context).size.width * 0.35,
      decoration: BoxDecoration(
        color: AppColor.accent,
        borderRadius: BorderRadius.circular(10),
        border: _isSelectedMale
            ? Border.all(
                color: color ?? AppColor.whiteText,
                width: 3,
              )
            : null,
        boxShadow: _isSelectedMale
            ? [
                BoxShadow(
                  color:
                      color?.withOpacity(0.5) ?? Colors.white.withOpacity(0.5),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ]
            : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color ?? AppColor.whiteText,
            size: 50,
          ),
          const SizedBox(height: 8),
          Text(
            labelText,
            style: TextStyle(color: color ?? AppColor.whiteText, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
