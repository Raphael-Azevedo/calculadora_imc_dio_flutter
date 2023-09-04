import 'package:flutter/material.dart';
import 'package:imc_2_0/data/data.dart';
import 'package:imc_2_0/models/imc_result_model.dart';
import 'package:imc_2_0/shared/dto/result_imc_dto.dart';
import 'package:mobx/mobx.dart';

part 'result_page_controller.g.dart';

class ResultPageController = ResultPageControllerBase
    with _$ResultPageController;

abstract class ResultPageControllerBase with Store {
  @observable
  double? imcResult = 0;

  @observable
  String imcCategory = '';

  TextEditingController heightPickerController = TextEditingController();
  TextEditingController weightPickerController = TextEditingController();
  TextEditingController agePickerController = TextEditingController();

  @action
  Future<void> init(ResultImcDto? result) async {
    if (result != null) {
      await calculateIMC(result);
    }
    await loadLastData();
  }

  @action
  Future<void> calculateIMC(ResultImcDto result) async {
    double height = result.height;
    double weight = result.weight;
    String category = '';
    if (height > 0 && weight > 0) {
      double imc = weight / (height * height);

      if (imc < 16) {
        category = 'Magreza grave';
      } else if (imc < 17) {
        category = 'Magreza moderada';
      } else if (imc < 18.5) {
        category = 'Magreza leve';
      } else if (imc < 25) {
        category = 'Saudável';
      } else if (imc < 30) {
        category = 'Sobrepeso';
      } else if (imc < 35) {
        category = 'Obesidade Grau I';
      } else if (imc < 40) {
        category = 'Obesidade Grau II (severa)';
      } else {
        category = 'Obesidade Grau III (mórbida)';
      }
      await _setDataImcResult(imc, category);
    }
  }

  Future<void> _setDataImcResult(double imcResult, String category) async {
    var imcResultData = ImcResultModel(imcResult, category);
    ImcResultData.setImcResult(imcResultData);
  }

  @action
  Future<void> loadLastData() async {
    imcResult = ImcResultData.imcResult.last.imcResult;
    imcCategory = ImcResultData.imcResult.last.imcResultString;
  }
}
