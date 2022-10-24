import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../logic/providers/characters.dart';
import '../widgets/character_item.dart';

class CharactersGrid extends StatelessWidget {
  const CharactersGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final characters = Provider.of<RMCharacters>(context);
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      //SliverGridDelegateWithFixedCrossAxisCount tell to flutter that we want a certain count of columns and he should squeeze then on the screen
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: characters.characters.length,
      itemBuilder: (ctx, i) => CharacterItem(
        character: characters.characters[i],
      ),
    );
  }
}
