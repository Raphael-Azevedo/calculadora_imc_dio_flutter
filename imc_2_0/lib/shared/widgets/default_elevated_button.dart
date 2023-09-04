import 'package:flutter/material.dart';
import 'package:imc_2_0/style/color/app_color.dart';

class DefaultElevatedButton extends StatelessWidget {
  const DefaultElevatedButton({
    super.key,
    required this.onChanged,
  });
  final Function() onChanged;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onChanged();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.purpleLight,
      ),
      child: const Text(
        'Calcular IMC',
        style: TextStyle(
          color: AppColor.whiteText,
        ),
      ),
    );
  }
}
