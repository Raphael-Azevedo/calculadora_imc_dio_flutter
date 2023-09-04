import 'package:get_it/get_it.dart';
import 'package:imc_2_0/pages/home/home_page.dart';
import 'package:imc_2_0/pages/home/controller/home_page_controller.dart';
import 'package:imc_2_0/pages/info/info_page.dart';
import 'package:imc_2_0/pages/new_weight/controller/new_weight_controller.dart';
import 'package:imc_2_0/pages/new_weight/new_weight_page.dart';
import 'package:imc_2_0/pages/result/controller/result_page_controller.dart';
import 'package:imc_2_0/pages/result/result_page.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // * Home
  sl.registerFactory(() => const HomePage());
  sl.registerFactory(() => HomePageController());
  // // * Drawer
  // sl.registerFactory(() => MenuDrawer());
  // * Result
  sl.registerFactory(() => const ResultPage());
  sl.registerFactory(() => ResultPageController());

  // * Info
  sl.registerFactory(() => const InfoPage());

  // * NewWeight
  sl.registerFactory(() => const NewWeightPage());
  sl.registerFactory(() => NewWeightPageController());
}
