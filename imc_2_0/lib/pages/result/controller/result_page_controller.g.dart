// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ResultPageController on ResultPageControllerBase, Store {
  late final _$imcResultAtom =
      Atom(name: 'ResultPageControllerBase.imcResult', context: context);

  @override
  double? get imcResult {
    _$imcResultAtom.reportRead();
    return super.imcResult;
  }

  @override
  set imcResult(double? value) {
    _$imcResultAtom.reportWrite(value, super.imcResult, () {
      super.imcResult = value;
    });
  }

  late final _$imcCategoryAtom =
      Atom(name: 'ResultPageControllerBase.imcCategory', context: context);

  @override
  String get imcCategory {
    _$imcCategoryAtom.reportRead();
    return super.imcCategory;
  }

  @override
  set imcCategory(String value) {
    _$imcCategoryAtom.reportWrite(value, super.imcCategory, () {
      super.imcCategory = value;
    });
  }

  late final _$initAsyncAction =
      AsyncAction('ResultPageControllerBase.init', context: context);

  @override
  Future<void> init(ResultImcDto? result) {
    return _$initAsyncAction.run(() => super.init(result));
  }

  late final _$calculateIMCAsyncAction =
      AsyncAction('ResultPageControllerBase.calculateIMC', context: context);

  @override
  Future<void> calculateIMC(ResultImcDto result) {
    return _$calculateIMCAsyncAction.run(() => super.calculateIMC(result));
  }

  late final _$loadLastDataAsyncAction =
      AsyncAction('ResultPageControllerBase.loadLastData', context: context);

  @override
  Future<void> loadLastData() {
    return _$loadLastDataAsyncAction.run(() => super.loadLastData());
  }

  @override
  String toString() {
    return '''
imcResult: ${imcResult},
imcCategory: ${imcCategory}
    ''';
  }
}
