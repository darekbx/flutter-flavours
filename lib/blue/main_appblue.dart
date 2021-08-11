import 'package:flutter_flavours/blue/countries_data_blue.dart';
import 'package:flutter_flavours/blue/string_resources_blue.dart';

import '../app_config.dart';
import '../main.dart';
import 'package:flutter/material.dart';

void main() {
  var stringResources = StringResourcesBlue();
  var configuredApp = AppConfig(
    displayName: stringResources.APP_NAME,
    theme: ThemeData(
      primaryColor: Colors.blue,
      accentColor: Colors.lightBlueAccent,
      primaryColorBrightness: Brightness.dark,
    ),
    assetsDir: "blue",
    stringResources: stringResources,
    countriesData: CountriesDataBlue(),
    child: FlavoursApp(),
  );

  runApp(configuredApp);
}
