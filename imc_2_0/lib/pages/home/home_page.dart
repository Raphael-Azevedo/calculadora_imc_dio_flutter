import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:imc_2_0/shared/widgets/default_card.dart';
import 'package:imc_2_0/shared/widgets/default_elevated_button.dart';
import 'package:imc_2_0/shared/widgets/default_height_slider.dart';
import 'package:imc_2_0/shared/widgets/default_number_picker.dart';
import 'package:imc_2_0/style/color/app_color.dart';
import 'package:imc_2_0/utils/injection_container.dart';

import 'controller/home_page_controller.dart';

class HomePage extends StatefulWidget {
  static String route = '/HomePage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomePageController controller;

  @override
  void initState() {
    super.initState();
    controller = sl<HomePageController>();
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
                'Seja Bem Vindx!',
                style: TextStyle(
                  color: AppColor.whiteText,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Observer(
                    builder: (_) => InkWell(
                      onTap: () {
                        controller.setSelectMale();
                      },
                      child: DefaultCard(
                          color: Colors.blueAccent,
                          isSelectedMale: controller.isSelectedMale,
                          labelText: 'Masculino',
                          icon: Icons.male),
                    ),
                  ),
                  Observer(
                    builder: (_) => InkWell(
                      onTap: () {
                        controller.setSelectFemale();
                      },
                      child: DefaultCard(
                          color: Colors.pinkAccent,
                          isSelectedMale: controller.isSelectedFemale,
                          labelText: 'Feminino',
                          icon: Icons.female),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
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
