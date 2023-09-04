import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:imc_2_0/pages/home/controller/home_page_controller.dart';
import 'package:imc_2_0/utils/routes.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_controller_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<BuildContext>(),
  MockSpec<NavigatorObserver>(),
])
void main() async {
  late HomePageController controller;
  late MockBuildContext mockBuildContext;
  late MockNavigatorObserver mockNavigator;

  setUp(() {
    controller = HomePageController();
    mockBuildContext = MockBuildContext();
    controller.buildContext = mockBuildContext;
    mockNavigator = MockNavigatorObserver();
  });

  group("setInitialValues", () {
    test('Should the initial value to all field on init controller', () async {
      // Act
      controller.init();

      // Assert
      expect(controller.weightPickerController.text, '1.0');
      expect(controller.heightPickerController.text, '1.0');
      expect(controller.agePickerController.text, '1');
    });
  });

  group("setSelectMale", () {
    test(
        'Should set the SelectMale to isTrue or isFalse and cannot should mark isSelectedFemale isTrue when is setSelectMale to set isTrue',
        () async {
      // Arrange
      controller.setSelectFemale();
      expect(controller.isSelectedFemale, isTrue);
      // Act
      controller.setSelectMale();

      // Assert
      expect(controller.isSelectedMale, isTrue);
      expect(controller.isSelectedFemale, isFalse);

      // Act
      controller.setSelectMale();

      // Assert
      expect(controller.isSelectedMale, isFalse);
      expect(controller.isSelectedFemale, isFalse);
    });
  });
  group("setSelectFemale", () {
    test(
        'Should set the SelectFemale to isTrue or isFalse and cannot should mark isSelectedMale isTrue when is setSelectFemale to set isTrue',
        () async {
      // Arrange
      controller.setSelectMale();
      expect(controller.isSelectedMale, isTrue);
      // Act
      controller.setSelectFemale();

      // Assert
      expect(controller.isSelectedFemale, isTrue);
      expect(controller.isSelectedMale, isFalse);

      // Act
      controller.setSelectFemale();

      // Assert
      expect(controller.isSelectedFemale, isFalse);
      expect(controller.isSelectedMale, isFalse);
    });
  });

  group("setHeightSlider", () {
    test('Should set height value when called', () async {
      // Arrange
      double height = 54.8;

      // Act
      controller.setHeightSlider(height);

      // Assert
      expect(controller.currentSliderPrimaryValue, height);
    });
  });

  group("setWeightValue", () {
    test('Should set weight value when called', () async {
      // Arrange
      double weight = 54.8;

      // Act
      controller.setWeightValue(weight);

      // Assert
      expect(controller.currentWeightValue, weight);
    });
  });

  group("setAgeValue", () {
    test('Should set age value when called', () async {
      // Arrange
      double age = 15;

      // Act
      controller.setAgeValue(age);

      // Assert
      expect(controller.currentAgeValue, age);
    });
  });

  group("onAddWeight", () {
    test('Should set more 1 to weight value when called', () async {
      // Arrange
      double expectedValue = 55.0;
      double weight = 54.0;
      controller.setWeightValue(weight);
      // Act
      controller.onAddWeight();
      // Assert
      expect(controller.currentWeightValue, expectedValue);
    });
  });
  group("onDecrementWeight", () {
    test('Should set less 1 to weight value when called', () async {
      // Arrange
      double expectedValue = 53.0;
      double weight = 54.0;
      controller.setWeightValue(weight);
      // Act
      controller.onDecrementWeight();
      // Assert
      expect(controller.currentWeightValue, expectedValue);
    });
  });

  group("onAddAge", () {
    test('Should set more 1 to age value when called', () async {
      // Arrange
      double expectedValue = 16;
      double age = 15;
      controller.setAgeValue(age);
      // Act
      controller.onAddAge();
      // Assert
      expect(controller.currentAgeValue, expectedValue);
    });
  });
  group("onDecrementAge", () {
    test('Should set less 1 to age value when called', () async {
      // Arrange
      double expectedValue = 14;
      double age = 15;
      controller.setAgeValue(age);
      // Act
      controller.onDecrementAge();
      // Assert
      expect(controller.currentAgeValue, expectedValue);
    });
  });

  group("isValidInfo", () {
    test('Should return true and erro message empty when all values are ok',
        () async {
      // Act
      bool result = controller.isValidInfo();
      // Assert
      expect(controller.erroMessage, isEmpty);
      expect(result, isTrue);
    });
    test('Should return false and erro message when Weight is negative',
        () async {
      // Arrange
      double weight = -5;
      controller.setWeightValue(weight);
      // Act
      bool result = controller.isValidInfo();
      // Assert
      expect(controller.erroMessage, isNotEmpty);
      expect(result, isFalse);
    });
    test('Should return false and erro message when Height is negative',
        () async {
      // Arrange
      double height = -5;
      controller.setHeightSlider(height);
      // Act
      bool result = controller.isValidInfo();
      // Assert
      expect(controller.erroMessage, isNotEmpty);
      expect(result, isFalse);
    });
    test('Should return false and erro message when Age is negative', () async {
      // Arrange
      double age = -5;
      controller.setAgeValue(age);
      // Act
      bool result = controller.isValidInfo();
      // Assert
      expect(controller.erroMessage, isNotEmpty);
      expect(result, isFalse);
    });
  });

  group("goToResultPage", () {
    testWidgets('Make sure a push occurs on method goToResultPage when called',
        (tester) async {
      // arrange

      await tester.pumpWidget(
        MaterialApp(
          onGenerateRoute: (settings) {
            return Routes.getPagesRoutes(settings)[settings.name];
          },
          initialRoute: '/home',
          routes: {
            '/home': (context) => Builder(builder: (context) {
                  controller.buildContext = context;
                  return Scaffold(
                    body: ElevatedButton(
                      onPressed: () async {
                        controller.goToResultPage();
                      },
                      child: const Text('To Settings'),
                    ),
                  );
                }),
          },
          navigatorObservers: [
            mockNavigator,
          ],
        ),
      );
      // act
      await tester.tap(find.byType(ElevatedButton));
      // assert
      verify(mockNavigator.didPush(any, any));
    });
  });
}
