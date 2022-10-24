import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../screens/home_screen.dart';
import '../screens/word_game_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        AppBar(
          title: Text(AppLocalizations.of(context)!.navigation),
          automaticallyImplyLeading: false,
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.list),
          title: Text(AppLocalizations.of(context)!.characters),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.gamepad),
          title: Text(AppLocalizations.of(context)!.alphabetSoup),
          onTap: () {
            Navigator.of(context)
                .pushReplacementNamed(AlphabetSoupScreen.routeName);
          },
        ),
        const Divider(),
      ],
    ));
  }
}
