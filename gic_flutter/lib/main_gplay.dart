import 'package:flutter/material.dart';

import 'package:gic_flutter/screens/main/main.dart';
import 'package:gic_flutter/services/setting/settingRepository.dart';
import 'package:gic_flutter/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flavor.dart';

void main() async {
  BuildEnvironment.init(flavor: BuildFlavor.gplay);
  var myApp = MyApp(SettingRepository(await SharedPreferences.getInstance()));
  var myTheme =  CustomTheme(
      initialThemeKey: ThemeKeys.DARK,
      child: myApp,
    );
    WidgetsFlutterBinding.ensureInitialized();
    runApp(myTheme);
}

class MyApp extends StatelessWidget {
  SettingRepository _settingRepository  ;

  MyApp (SettingRepository sharedPreferences) {
    _settingRepository = sharedPreferences;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.of(context),
      title: 'Gaming Interface Client',
      //theme: lightTheme(),
      //darkTheme: darkTheme(),
      home: MainScreen(_settingRepository),
    );
  }
}
