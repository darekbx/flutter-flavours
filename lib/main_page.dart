import 'package:flutter/material.dart';
import 'package:flutter_flavours/app_config.dart';
import 'package:flutter_flavours/countries_list.dart';
import 'package:intl/intl.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(config.displayName),
      ),
      body: _buildBody(config),
    );
  }

  Widget _buildBody(AppConfig appConfig) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                height: 100,
                color: Colors.black12,
                alignment: Alignment.center,
                child:
                Image.asset(
                  'assets/' + appConfig.assetsDir + '/logo.png',
                  width: 50.0, height: 50.0,)
            ),
            Container(height: 8),
            Text(appConfig.stringResources.APP_TITLE),
            Container(height: 8),
            Container(
              child: CountriesList(),
              height: 400
            )
          ],
        )
    );
  }
}
