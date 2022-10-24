import 'package:flutter/material.dart';

import '../../data/models/character.dart';
import '../../data/repositories/characters_repository.dart';

class RMCharacters with ChangeNotifier {
  final CharactersRepository repository = CharactersRepository();
  List<Character> _characters = <Character>[];

  List<Character> get characters {
    return [..._characters];
  }

  Future<void> fetchCharacters() async {
    _characters = await repository.getCharacters();
    notifyListeners();
  }
}
