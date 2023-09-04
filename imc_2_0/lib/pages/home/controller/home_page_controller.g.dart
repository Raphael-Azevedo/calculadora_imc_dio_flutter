// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageController on HomePageControllerBase, Store {
  late final _$isSelectedMaleAtom =
      Atom(name: 'HomePageControllerBase.isSelectedMale', context: context);

  @override
  bool get isSelectedMale {
    _$isSelectedMaleAtom.reportRead();
    return super.isSelectedMale;
  }

  @override
  set isSelectedMale(bool value) {
    _$isSelectedMaleAtom.reportWrite(value, super.isSelectedMale, () {
      super.isSelectedMale = value;
    });
  }

  late final _$isSelectedFemaleAtom =
      Atom(name: 'HomePageControllerBase.isSelectedFemale', context: context);

  @override
  bool get isSelectedFemale {
    _$isSelectedFemaleAtom.reportRead();
    return super.isSelectedFemale;
  }

  @override
  set isSelectedFemale(bool value) {
    _$isSelectedFemaleAtom.reportWrite(value, super.isSelectedFemale, () {
      super.isSelectedFemale = value;
    });
  }

  late final _$currentSliderPrimaryValueAtom = Atom(
      name: 'HomePageControllerBase.currentSliderPrimaryValue',
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

  late final _$currentWeightValueAtom =
      Atom(name: 'HomePageControllerBase.currentWeightValue', context: context);

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
      Atom(name: 'HomePageControllerBase.erroMessage', context: context);

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

  late final _$currentAgeValueAtom =
      Atom(name: 'HomePageControllerBase.currentAgeValue', context: context);

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

  late final _$HomePageControllerBaseActionController =
      ActionController(name: 'HomePageControllerBase', context: context);

  @override
  void init() {
    final _$actionInfo = _$HomePageControllerBaseActionController.startAction(
        name: 'HomePageControllerBase.init');
    try {
      return super.init();
    } finally {
      _$HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setInitialValues() {
    final _$actionInfo = _$HomePageControllerBaseActionController.startAction(
        name: 'HomePageControllerBase._setInitialValues');
    try {
      return super._setInitialValues();
    } finally {
      _$HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectMale() {
    final _$actionInfo = _$HomePageControllerBaseActionController.startAction(
        name: 'HomePageControllerBase.setSelectMale');
    try {
      return super.setSelectMale();
    } finally {
      _$HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectFemale() {
    final _$actionInfo = _$HomePageControllerBaseActionController.startAction(
        name: 'HomePageControllerBase.setSelectFemale');
    try {
      return super.setSelectFemale();
    } finally {
      _$HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHeightSlider(double? value) {
    final _$actionInfo = _$HomePageControllerBaseActionController.startAction(
        name: 'HomePageControllerBase.setHeightSlider');
    try {
      return super.setHeightSlider(value);
    } finally {
      _$HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setWeightValue(double? value) {
    final _$actionInfo = _$HomePageControllerBaseActionController.startAction(
        name: 'HomePageControllerBase.setWeightValue');
    try {
      return super.setWeightValue(value);
    } finally {
      _$HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAgeValue(double? value) {
    final _$actionInfo = _$HomePageControllerBaseActionController.startAction(
        name: 'HomePageControllerBase.setAgeValue');
    try {
      return super.setAgeValue(value);
    } finally {
      _$HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onAddWeight() {
    final _$actionInfo = _$HomePageControllerBaseActionController.startAction(
        name: 'HomePageControllerBase.onAddWeight');
    try {
      return super.onAddWeight();
    } finally {
      _$HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onAddAge() {
    final _$actionInfo = _$HomePageControllerBaseActionController.startAction(
        name: 'HomePageControllerBase.onAddAge');
    try {
      return super.onAddAge();
    } finally {
      _$HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onDecrementWeight() {
    final _$actionInfo = _$HomePageControllerBaseActionController.startAction(
        name: 'HomePageControllerBase.onDecrementWeight');
    try {
      return super.onDecrementWeight();
    } finally {
      _$HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onDecrementAge() {
    final _$actionInfo = _$HomePageControllerBaseActionController.startAction(
        name: 'HomePageControllerBase.onDecrementAge');
    try {
      return super.onDecrementAge();
    } finally {
      _$HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool isValidInfo() {
    final _$actionInfo = _$HomePageControllerBaseActionController.startAction(
        name: 'HomePageControllerBase.isValidInfo');
    try {
      return super.isValidInfo();
    } finally {
      _$HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isSelectedMale: ${isSelectedMale},
isSelectedFemale: ${isSelectedFemale},
currentSliderPrimaryValue: ${currentSliderPrimaryValue},
currentWeightValue: ${currentWeightValue},
erroMessage: ${erroMessage},
currentAgeValue: ${currentAgeValue}
    ''';
  }
}
