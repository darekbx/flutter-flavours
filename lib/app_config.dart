import 'package:flutter/material.dart';
import 'package:flutter_flavours/resources/countries_data.dart';
import 'resources/display_strings.dart';

class AppConfig extends InheritedWidget {

  AppConfig({
    required this.displayName,
    required this.assetsDir,
    required this.theme,
    required this.stringResources,
    required this.countriesData,
    required Widget child
  })
      : super(child: child);

  final String displayName;
  final String assetsDir;
  final ThemeData theme;
  final StringResources stringResources;
  final CountriesData countriesData;

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>()!;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

}
