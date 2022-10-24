import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/app_drawer.dart';

class AlphabetSoupScreen extends StatelessWidget {
  const AlphabetSoupScreen({super.key});
  static const routeName = '/alphabet-soup';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.alphabetSoup),
        ),
        drawer: const AppDrawer(),
        body: Container(),
      ),
    );
  }
}
