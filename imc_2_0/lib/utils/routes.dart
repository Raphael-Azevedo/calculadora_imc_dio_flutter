import 'package:flutter/material.dart';
import 'package:imc_2_0/pages/home/home_page.dart';
import 'package:imc_2_0/pages/info/info_page.dart';
import 'package:imc_2_0/pages/new_weight/new_weight_page.dart';
import 'package:imc_2_0/pages/pre_loading/pre_loading_page.dart';
import 'package:imc_2_0/pages/result/result_page.dart';
import 'package:imc_2_0/utils/injection_container.dart';
import 'package:imc_2_0/utils/transitions.dart';

class Routes {
  static Map<String, PageRouteBuilder> getPagesRoutes(RouteSettings settings) {
    return {
      PreLoadingPage.route: PageRouteBuilder(
        settings: settings,
        transitionDuration: const Duration(milliseconds: 0),
        pageBuilder: (context, animation, secondaryAnimation) =>
            const PreLoadingPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
      HomePage.route: PageRouteBuilder(
        settings: settings,
        transitionDuration: const Duration(milliseconds: 300),
        pageBuilder: (context, animation, secondaryAnimation) => sl<HomePage>(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
      ResultPage.route: PageRouteBuilder(
        settings: settings,
        transitionDuration: const Duration(milliseconds: 300),
        pageBuilder: (context, animation, secondaryAnimation) =>
            sl<ResultPage>(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
      InfoPage.route: PageRouteBuilder(
        settings: settings,
        transitionDuration: const Duration(milliseconds: 300),
        pageBuilder: (context, animation, secondaryAnimation) => sl<InfoPage>(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return Transitions.rightToLeftTransition(animation, child);
        },
      ),
      NewWeightPage.route: PageRouteBuilder(
        settings: settings,
        transitionDuration: const Duration(milliseconds: 300),
        pageBuilder: (context, animation, secondaryAnimation) =>
            sl<NewWeightPage>(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    };
  }
}
