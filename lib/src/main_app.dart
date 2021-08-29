import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'screens/auth_screen.dart';
import 'utils/theme.dart';

//ignore: must_be_immutable
class MainApp extends StatelessWidget {
  MainApp({Key key}) : super(key: key);
  final GetStorage box = GetStorage();

  Future<void> _ifFirstStartSeletEnglish() async {
    if (!await box.hasData('language')) {
      //write language code to local storage
      await box.write('language', 'EN');
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    _ifFirstStartSeletEnglish();
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: mainTheme(),
        home: AuthScreen(),
      );
    });
  }
}
