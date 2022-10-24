import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty_poc/logic/providers/characters.dart';

import '../../data/models/character.dart';
import '../widgets/utils/jumping_dots_progress_indicator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const routeName = '/splashScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const JumpingDotsProgressIndicator(),
              Text(AppLocalizations.of(context)!.waiting),
            ],
          ),
        ),
      ),
    );
  }
}
