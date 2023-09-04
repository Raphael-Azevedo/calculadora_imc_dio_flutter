// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_weight_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewWeightPageController on NewWeightPageControllerBase, Store {
  late final _$currentSliderPrimaryValueAtom = Atom(
      name: 'NewWeightPageControllerBase.currentSliderPrimaryValue',
      context: context);

  @override
  double? get currentSliderPrimaryValue {
    _$currentSliderPrimaryValueAtom.reportRead();
    return super.currentSliderPrimaryValue;
  }

  @override
  set currentSliderPrimaryValue(double? value) {
    _$currentSliderPrimaryValueAtom
        .reportWrite(value, super.currentSliderPrimaryValue, () {
      super.currentSliderPrimaryValue = value;
    });
  }

  late final _$currentWeightValueAtom = Atom(
      name: 'NewWeightPageControllerBase.currentWeightValue', context: context);

  @override
  double? get currentWeightValue {
    _$currentWeightValueAtom.reportRead();
    return super.currentWeightValue;
  }

  @override
  set currentWeightValue(double? value) {
    _$currentWeightValueAtom.reportWrite(value, super.currentWeightValue, () {
      super.currentWeightValue = value;
    });
  }

  late final _$erroMessageAtom =
      Atom(name: 'NewWeightPageControllerBase.erroMessage', context: context);

  @override
  String get erroMessage {
    _$erroMessageAtom.reportRead();
    return super.erroMessage;
  }

  @override
  set erroMessage(String value) {
    _$erroMessageAtom.reportWrite(value, super.erroMessage, () {
      super.erroMessage = value;
    });
  }

  late final _$currentAgeValueAtom = Atom(
      name: 'NewWeightPageControllerBase.currentAgeValue', context: context);

  @override
  int? get currentAgeValue {
    _$currentAgeValueAtom.reportRead();
    return super.currentAgeValue;
  }

  @override
  set currentAgeValue(int? value) {
    _$currentAgeValueAtom.reportWrite(value, super.currentAgeValue, () {
      super.currentAgeValue = value;
    });
  }

  late final _$NewWeightPageControllerBaseActionController =
      ActionController(name: 'NewWeightPageControllerBase', context: context);

  @override
  void init() {
    final _$actionInfo = _$NewWeightPageControllerBaseActionController
        .startAction(name: 'NewWeightPageControllerBase.init');
    try {
      return super.init();
    } finally {
      _$NewWeightPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setInitialValues() {
    final _$actionInfo = _$NewWeightPageControllerBaseActionController
        .startAction(name: 'NewWeightPageControllerBase._setInitialValues');
    try {
      return super._setInitialValues();
    } finally {
      _$NewWeightPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHeightSlider(double? value) {
    final _$actionInfo = _$NewWeightPageControllerBaseActionController
        .startAction(name: 'NewWeightPageControllerBase.setHeightSlider');
    try {
      return super.setHeightSlider(value);
    } finally {
      _$NewWeightPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setWeightValue(double? value) {
    final _$actionInfo = _$NewWeightPageControllerBaseActionController
        .startAction(name: 'NewWeightPageControllerBase.setWeightValue');
    try {
      return super.setWeightValue(value);
    } finally {
      _$NewWeightPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAgeValue(double? value) {
    final _$actionInfo = _$NewWeightPageControllerBaseActionController
        .startAction(name: 'NewWeightPageControllerBase.setAgeValue');
    try {
      return super.setAgeValue(value);
    } finally {
      _$NewWeightPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onAddWeight() {
    final _$actionInfo = _$NewWeightPageControllerBaseActionController
        .startAction(name: 'NewWeightPageControllerBase.onAddWeight');
    try {
      return super.onAddWeight();
    } finally {
      _$NewWeightPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onAddAge() {
    final _$actionInfo = _$NewWeightPageControllerBaseActionController
        .startAction(name: 'NewWeightPageControllerBase.onAddAge');
    try {
      return super.onAddAge();
    } finally {
      _$NewWeightPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onDecrementWeight() {
    final _$actionInfo = _$NewWeightPageControllerBaseActionController
        .startAction(name: 'NewWeightPageControllerBase.onDecrementWeight');
    try {
      return super.onDecrementWeight();
    } finally {
      _$NewWeightPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onDecrementAge() {
    final _$actionInfo = _$NewWeightPageControllerBaseActionController
        .startAction(name: 'NewWeightPageControllerBase.onDecrementAge');
    try {
      return super.onDecrementAge();
    } finally {
      _$NewWeightPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool isValidInfo() {
    final _$actionInfo = _$NewWeightPageControllerBaseActionController
        .startAction(name: 'NewWeightPageControllerBase.isValidInfo');
    try {
      return super.isValidInfo();
    } finally {
      _$NewWeightPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentSliderPrimaryValue: ${currentSliderPrimaryValue},
currentWeightValue: ${currentWeightValue},
erroMessage: ${erroMessage},
currentAgeValue: ${currentAgeValue}
    ''';
  }
}
