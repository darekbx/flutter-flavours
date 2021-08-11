import 'package:flutter_flavours/orange/countries_data_orange.dart';
import 'package:flutter_flavours/orange/string_resources_orange.dart';

import '../app_config.dart';
import '../main.dart';
import 'package:flutter/material.dart';

void main() {
  var stringResources = StringResourcesOrange();
  var configuredApp = AppConfig(
    displayName: stringResources.APP_NAME,
    theme: ThemeData(
      primaryColor: Colors.orange,
      accentColor: Colors.deepOrangeAccent,
      primaryColorBrightness: Brightness.dark,
    ),
    assetsDir: "orange",
    stringResources: stringResources,
    countriesData: CountriesDataOrange(),
    child: FlavoursApp(),
  );

  runApp(configuredApp);
}
