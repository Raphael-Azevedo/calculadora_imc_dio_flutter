import 'package:flutter/material.dart';
import 'package:imc_2_0/pages/info/info_page.dart';
import 'package:imc_2_0/pages/result/result_page.dart';
import 'package:imc_2_0/style/color/app_color.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.primaryColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 150,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: AppColor.purpleLight,
              ),
              child: Text(
                textAlign: TextAlign.center,
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: AppColor.whiteText),
            title: const Text(
              'Home',
              style: TextStyle(color: AppColor.whiteText),
            ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, ResultPage.route, (route) => false);
            },
          ),
          ListTile(
            leading: const Icon(Icons.info, color: AppColor.whiteText),
            title: const Text(
              'Info',
              style: TextStyle(color: AppColor.whiteText),
            ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, InfoPage.route, (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
