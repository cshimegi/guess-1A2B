import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:app/consts/locale_keys.g.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Card(
                  elevation: 8.0,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                        child: Text(
                      LocaleKeys.app_introduction_content.tr(),
                      style: const TextStyle(fontSize: 20.0),
                    )),
                  ),
                  color: Colors.blue[100]),
              height: 220,
              width: 320,
            )
          ],
        )
      ],
    );
  }
}
