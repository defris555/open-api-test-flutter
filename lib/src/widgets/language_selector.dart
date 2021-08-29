import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postoplan_test/src/utils/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:select_dialog/select_dialog.dart';

class LanguageSelector extends StatefulWidget {
  final String selectedLanguage;
  final List<String> languages;
  final Function selectLanguage;

  const LanguageSelector({
    Key key,
    @required this.selectedLanguage,
    @required this.languages,
    @required this.selectLanguage,
  }) : super(key: key);

  @override
  _LanguageSelectorState createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  String selectedLanguage;
  @override
  void initState() {
    super.initState();
    selectedLanguage = widget.selectedLanguage;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: context.width * 0.1),
      child: ElevatedButton(
        child: Row(
          children: [
            Text(
              widget.selectedLanguage ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(fontSize: 12.sp),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: black,
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: white,
          elevation: 0,
        ),
        onPressed: () {
          SelectDialog.showModal<String>(
            context,
            // label: "Simple Example",
            titleStyle: Theme.of(context).textTheme.bodyText1,
            showSearchBox: false,
            selectedValue: selectedLanguage,
            backgroundColor: white,
            items: widget.languages,
            onChange: (String selected) {
              widget.selectLanguage(selected);
            },
          );
        },
      ),
    );
  }
}
