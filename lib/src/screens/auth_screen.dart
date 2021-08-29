import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:postoplan_test/src/widgets/language_selector.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:postoplan_api/api.dart';
import 'package:postoplan_test/src/model/user_model.dart';
import 'package:postoplan_test/src/utils/colors.dart';
import 'package:postoplan_test/src/widgets/top_bar.dart';

import 'profile_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  final GetStorage box = GetStorage();
  final users = {env['LOGIN']: env['PASSWORD']};
  final String screen = 'auth';
  UserModel user;
  List<Language> languagesApiList = [];
  List<String> languages = [];
  String selectedLanguage;

  Future<String> _authUser(LoginData data) {
    return Future.delayed(Duration(milliseconds: 1)).then((_) async {
      if (!users.containsKey(data.name)) {
        return 'Username not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      await _getUserData(data.name, data.password);
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    return Future.delayed(Duration(milliseconds: 1)).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return null;
    });
  }

  Future<void> _getUserData(String login, String password) async {
    final client = ApiClient();
    final result = await _getApiAuthResponse(login, password);
    await box.write('token', result.token);
    await client.addDefaultHeader('api-token', result.token);
    final api_instance = AuthApi(client);
    final userData = await api_instance.authGetUser();
    user = UserModel(
      id: userData.id,
      userName: userData.username,
      firstName: userData.firstName,
      lastName: userData.lastName,
    );
  }

  Future<AuthResponse> _getApiAuthResponse(
      String login, String password) async {
    final client = ApiClient();
    //hid the api key using the .env file
    final String postKey = env['POST_KEY'];
    await client.addDefaultHeader('api-key', postKey);
    final api_instance = AuthApi(client);
    final authRequest = AuthRequest(login: login, password: password);
    final result = await api_instance.authLogin(authRequest: authRequest);
    return result;
  }

  Future<void> _getLanguages() async {
    final client = ApiClient();
    final String postKey = env['POST_KEY'];
    await client.addDefaultHeader('api-key', postKey);
    final api_instance = LanguageApi(client);
    final langApiList = await api_instance.languageList();
    languagesApiList = langApiList
        .toSet()
        .toList(); // checks if the language has been added twice (as in this task)

    for (int i = 0; i < languagesApiList.length; i++) {
      languages.add(languagesApiList[i].displayName);
    }
  }

  Future<void> _selectLanguage(String newLanguage) async {
    languagesApiList.forEach((lang) {
      if (lang.displayName == newLanguage) {
        box.write('language', lang.code);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    selectedLanguage = box.read('language');
    _getLanguages();
  }

  @override
  Widget build(BuildContext context) {
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
          languages: languages,
          selectLanguage: _selectLanguage,
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: context.width,
              height: context.height,
              child: FlutterLogin(
                theme: LoginTheme(
                  bodyStyle: bodytext.copyWith(fontSize: 11.sp),
                  textFieldStyle: bodytext.copyWith(fontSize: 12.sp),
                  buttonStyle: bodytext.copyWith(color: white, fontSize: 12.sp),
                  errorColor: red,
                ),
                onLogin: _authUser,
                onSignup: null,
                onSubmitAnimationCompleted: () => Get.to(
                  () => ProfileScreen(
                    user: user,
                    languages: languages,
                    languageApiList: languagesApiList,
                  ),
                ),
                onRecoverPassword: _recoverPassword,
                hideSignUpButton: true,
                messages: LoginMessages(
                  usernameHint: 'Login or Email',
                  recoverPasswordSuccess:
                      'We have sent a password to your email',
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: context.height * 0.05),
                    child: Container(
                      width: context.height * 0.15,
                      height: context.height * 0.15,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: Image.asset(
                            'assets/images/logo.jpeg',
                            fit: BoxFit.cover,
                          ).image,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: context.height * 0.03),
                    child: Text(
                      'Log in to POSTOPLAN',
                      style: bodytext.copyWith(color: white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
