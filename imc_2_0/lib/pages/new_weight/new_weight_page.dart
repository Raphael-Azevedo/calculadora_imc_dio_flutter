import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:imc_2_0/pages/new_weight/controller/new_weight_controller.dart';
import 'package:imc_2_0/shared/widgets/default_elevated_button.dart';
import 'package:imc_2_0/shared/widgets/default_height_slider.dart';
import 'package:imc_2_0/shared/widgets/default_number_picker.dart';
import 'package:imc_2_0/style/color/app_color.dart';
import 'package:imc_2_0/utils/injection_container.dart';


class NewWeightPage extends StatefulWidget {
  static String route = '/NewWeightPage';
  const NewWeightPage({super.key});

  @override
  State<NewWeightPage> createState() => _NewWeightPageState();
}

class _NewWeightPageState extends State<NewWeightPage> {
  late final NewWeightPageController controller;

  @override
  void initState() {
    super.initState();
    controller = sl<NewWeightPageController>();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      controller.init();
    });
  }

  @override
  Widget build(BuildContext context) {
    controller.buildContext = context;
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 60),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Calcular IMC',
                style: TextStyle(
                  color: AppColor.whiteText,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 20),
              Observer(
                builder: (_) => DefaultHeightSlider(
                    heightPickerController: controller.heightPickerController,
                    onChanged: (value) async {
                      controller.setHeightSlider(value);
                    }),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Observer(
                    builder: (_) => DefaultNumberPicker(
                      onChanged: (value) {
                        controller.setWeightValue(value);
                      },
                      label: 'Peso (Kg)',
                      numberPickerController: controller.weightPickerController,
                      onAdd: () {
                        controller.onAddWeight();
                      },
                      onDecrement: () {
                        controller.onDecrementWeight();
                      },
                    ),
                  ),
                  Observer(
                    builder: (_) => DefaultNumberPicker(
                      onChanged: (value) {
                        controller.setAgeValue(value);
                      },
                      label: 'Idade',
                      numberPickerController: controller.agePickerController,
                      onAdd: () {
                        controller.onAddAge();
                      },
                      onDecrement: () {
                        controller.onDecrementAge();
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: DefaultElevatedButton(
                  onChanged: () {
                    bool result = controller.isValidInfo();
                    if (!result) {
                      SnackBar snackBar = SnackBar(
                        content: Text(controller.erroMessage),
                        duration: const Duration(seconds: 2),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      controller.goToResultPage();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
