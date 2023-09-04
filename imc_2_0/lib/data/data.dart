import 'package:imc_2_0/models/imc_result_model.dart';
import 'package:mobx/mobx.dart';

class ImcResultData {
  static ObservableList<ImcResultModel>  imcResult = ObservableList();
  static bool? isMale;
  static void setImcResult(ImcResultModel result) {
    imcResult.add(result);
  }

  static void setIsMale(bool? value) {
    isMale = value;
  }
}
