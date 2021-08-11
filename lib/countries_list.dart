import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'app_config.dart';

class CountriesList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    var countries = config.countriesData.countries;
    return ListView.builder(
      itemCount: countries.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(countries[index]));
      },
    );
  }
}
