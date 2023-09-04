import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:imc_2_0/data/data.dart';
import 'package:imc_2_0/pages/new_weight/new_weight_page.dart';
import 'package:imc_2_0/pages/result/controller/result_page_controller.dart';
import 'package:imc_2_0/shared/dto/result_imc_dto.dart';
import 'package:imc_2_0/shared/widgets/default_bottom_app_bar.dart';
import 'package:imc_2_0/shared/widgets/menu_drawer.dart';
import 'package:imc_2_0/style/color/app_color.dart';
import 'package:imc_2_0/utils/injection_container.dart';

class ResultPage extends StatefulWidget {
  static String route = '/ResultPage';
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late final ResultPageController controller;

  @override
  void initState() {
    super.initState();
    controller = sl<ResultPageController>();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      var args = ModalRoute.of(context)!.settings.arguments as ResultImcDto?;
      await controller.init(args);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        foregroundColor: AppColor.whiteText,
        backgroundColor: AppColor.purpleLight,
        title: const Text(
          'RESULTADO',
          style: TextStyle(color: AppColor.whiteText),
        ),
      ),
      drawer: const MenuDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 0.35,
              decoration: BoxDecoration(
                color: AppColor.accent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Observer(
                    builder: (_) => Text(
                      controller.imcResult!.toStringAsFixed(2),
                      style: const TextStyle(
                          color: AppColor.whiteText, fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 50,
                    child: Observer(
                      builder: (_) => Text(
                        controller.imcCategory,
                        style: const TextStyle(
                            color: AppColor.whiteText, fontSize: 15),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Observer(
              builder: (_) => RefreshIndicator(
                onRefresh: () async {
                  controller.loadLastData();
                },
                child: ListView.builder(
                    itemCount: ImcResultData.imcResult.length,
                    itemBuilder: (_, index) {
                      return Observer(
                        builder: (_) => ListTile(
                          leading: const Icon(
                            Icons.favorite,
                            color: AppColor.purpleLight,
                          ),
                          title: Text(
                            ImcResultData.imcResult[index].imcResult
                                .toStringAsFixed(2),
                            style: const TextStyle(color: AppColor.whiteText),
                          ),
                          subtitle: Text(
                            ImcResultData.imcResult[index].imcResultString,
                            style: const TextStyle(
                              color: AppColor.whiteText,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.purpleLight,
        onPressed: () {
          Navigator.of(context).pushNamed(NewWeightPage.route);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const DefaultBottomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
