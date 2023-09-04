import 'package:flutter/material.dart';
import 'package:imc_2_0/pages/home/home_page.dart';
import 'package:imc_2_0/style/color/app_color.dart';

class PreLoadingPage extends StatefulWidget {
  static String route = '/PreLoadingPage';
  const PreLoadingPage({super.key});

  @override
  State<PreLoadingPage> createState() => _PreLoadingPageState();
}

class _PreLoadingPageState extends State<PreLoadingPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Navigator.pushReplacementNamed(context, HomePage.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryColor,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/splash_screen.png',
            fit: BoxFit.contain,
          ),
          // Lottie.asset(
          //   'assets/lottie/splash_screen.zip',
          //   repeat: true,
          //   fit: BoxFit.cover,
          // ),
        ],
      ),
    );
  }
}
