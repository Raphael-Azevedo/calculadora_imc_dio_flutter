import 'package:flutter/material.dart';
import 'package:imc_2_0/pages/result/result_page.dart';
import 'package:imc_2_0/shared/dto/result_imc_dto.dart';
import 'package:mobx/mobx.dart';

part 'new_weight_controller.g.dart';

class NewWeightPageController = NewWeightPageControllerBase
    with _$NewWeightPageController;

abstract class NewWeightPageControllerBase with Store {
  BuildContext? buildContext;

  @observable
  double? currentSliderPrimaryValue = 1;

  @observable
  double? currentWeightValue = 1;

  @observable
  String erroMessage = '';

  @observable
  int? currentAgeValue = 1;

  TextEditingController heightPickerController = TextEditingController();
  TextEditingController weightPickerController = TextEditingController();
  TextEditingController agePickerController = TextEditingController();

  @action
  void init() {
    _setInitialValues();
  }

  @action
  void _setInitialValues() {
    weightPickerController.text = currentWeightValue.toString();
    heightPickerController.text = currentSliderPrimaryValue.toString();
    agePickerController.text = currentAgeValue.toString();
  }

  @action
  void setHeightSlider(double? value) {
    currentSliderPrimaryValue = value;
  }

  @action
  void setWeightValue(double? value) {
    currentWeightValue = value;
  }

  @action
  void setAgeValue(double? value) {
    if (value != null) {
      int intValue = value.round().floor();
      currentAgeValue = intValue;
    }
  }

  @action
  void onAddWeight() {
    currentWeightValue = currentWeightValue! + 1;
    weightPickerController.text = currentWeightValue.toString();
  }

  @action
  void onAddAge() {
    currentAgeValue = currentAgeValue! + 1;
    agePickerController.text = currentAgeValue.toString();
  }

  @action
  void onDecrementWeight() {
    if (currentWeightValue! > 1) {
      currentWeightValue = currentWeightValue! - 1;
      weightPickerController.text = currentWeightValue.toString();
    }
  }

  @action
  void onDecrementAge() {
    if (currentAgeValue! > 1) {
      currentAgeValue = currentAgeValue! - 1;
      agePickerController.text = currentAgeValue.toString();
    }
  }

  @action
  bool isValidInfo() {
    erroMessage = '';
    if (currentAgeValue! < 1) {
      erroMessage = 'Idade Inválida\n';
    }
    if (currentWeightValue! < 1) {
      erroMessage = 'Peso Inválido\n';
    }
    if (currentSliderPrimaryValue! < 1 || currentSliderPrimaryValue! > 2.8) {
      erroMessage = 'A Altura deve está entre 1 e 2.8 M';
    }
    if (erroMessage.isEmpty) return true;
    return false;
  }

  void goToResultPage() {
    var resultDTO = ResultImcDto(
        age: currentAgeValue!,
        weight: currentWeightValue!,
        height: currentSliderPrimaryValue!,
        isSelectedMale: null,
        isSelectedFemale: null);
    Navigator.pushNamed(buildContext!, ResultPage.route, arguments: resultDTO);
  }
}
