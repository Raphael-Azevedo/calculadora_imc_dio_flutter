import 'package:flutter/material.dart';
import 'my_app.dart';
import 'utils/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(const MyApp());
}
