import 'package:flutter/material.dart';
import 'package:imc_2_0/pages/pre_loading/pre_loading_page.dart';
import 'package:imc_2_0/style/theme/app_theme.dart';
import 'package:imc_2_0/utils/routes.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().lightTheme(),
        initialRoute: PreLoadingPage.route,
        routes: {PreLoadingPage.route: (context) => const PreLoadingPage()},
        onGenerateRoute: (settings) {
          return Routes.getPagesRoutes(settings)[settings.name];
        },
      ),
    );
  }
}
