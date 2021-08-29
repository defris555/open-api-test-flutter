import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '/src/utils/colors.dart';

AppBar topBar(BuildContext context, GlobalKey<ScaffoldState> key,
        Widget languageSelector) =>
    AppBar(
      elevation: 0,
      backgroundColor: white,
      title: Padding(
        padding: EdgeInsets.only(left: context.width * 0.1),
        child: SvgPicture.asset('assets/svg/logo.svg'),
      ),
      actions: [languageSelector],
    );
