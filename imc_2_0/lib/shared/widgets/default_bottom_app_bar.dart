import 'package:flutter/material.dart';
import 'package:imc_2_0/pages/info/info_page.dart';
import 'package:imc_2_0/pages/result/result_page.dart';
import 'package:imc_2_0/style/color/app_color.dart';

class DefaultBottomAppBar extends StatelessWidget {
  const DefaultBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColor.purpleLight,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.home, color: AppColor.whiteText),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, ResultPage.route, (route) => false);
            },
          ),
          IconButton(
            icon: const Icon(Icons.accessibility, color: AppColor.whiteText),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, InfoPage.route, (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
