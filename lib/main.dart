import 'package:flutter/material.dart';
import 'app_config.dart';
import 'main_page.dart';

class FlavoursApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return _buildApp(config);
  }

  Widget _buildApp(AppConfig appConfig){
    return MaterialApp(
      title: appConfig.displayName,
      theme: appConfig.theme,
      home: MainPage(),
    );
  }
}
