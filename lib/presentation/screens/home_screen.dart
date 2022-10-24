import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty_poc/presentation/widgets/app_drawer.dart';

import '../../logic/providers/characters.dart';
import '../widgets/characters_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    Provider.of<RMCharacters>(context, listen: false).fetchCharacters();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.homeScreenTitle),
        ),
        drawer: const AppDrawer(),
        body: const CharactersGrid(),
      ),
    );
  }
}
