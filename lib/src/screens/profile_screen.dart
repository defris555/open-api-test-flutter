import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:postoplan_api/api.dart';
import 'package:postoplan_test/src/model/user_model.dart';
import 'package:postoplan_test/src/utils/colors.dart';
import 'package:postoplan_test/src/widgets/language_selector.dart';
import 'package:postoplan_test/src/widgets/top_bar.dart';

class ProfileScreen extends StatefulWidget {
  final UserModel user;
  final List<String> languages;
  final List<Language> languageApiList;
  const ProfileScreen({
    Key key,
    @required this.user,
    @required this.languages,
    @required this.languageApiList,
  }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  final GetStorage box = GetStorage();
  int id;
  String userName;
  String firstName;
  String lastName;
  String selectedLanguage;
  List<Language> languagesApiList = [];

  Future<void> _selectLanguage(String newLanguage) async {
    languagesApiList.addAll(widget.languageApiList);
    languagesApiList.forEach((lang) {
      if (lang.displayName == newLanguage) {
        box.write('language', lang.code);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    id = widget.user.id;
    userName = widget.user.userName;
    firstName = widget.user.firstName;
    lastName = widget.user.lastName;
    selectedLanguage = box.read('language');
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle headline = Theme.of(context).textTheme.headline1;
    final TextStyle bodytext = Theme.of(context).textTheme.bodyText1;
    box.listenKey('language', (value) {
      setState(() {
        selectedLanguage = value;
      });
    });
    return Scaffold(
      appBar: topBar(
        context,
        key,
        LanguageSelector(
            selectedLanguage: selectedLanguage,
            languages: widget.languages,
            selectLanguage: _selectLanguage),
      ),
      body: Center(
          child: Card(
        color: white,
        child: SizedBox(
          width: context.width * 0.9,
          height: context.height * 0.6,
          child: Padding(
            padding: EdgeInsets.all(context.height * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('id: ', style: headline),
                      Text(
                        id.toString(),
                        style: bodytext,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('username: ', style: headline),
                      Text(
                        userName,
                        style: bodytext,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('firstname: ', style: headline),
                      Text(
                        firstName,
                        style: bodytext,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('lastname: ', style: headline),
                      Text(
                        lastName,
                        style: bodytext,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
