import '../data_providers/apis/rick_and_morty_gql.dart';
import '../../injection.dart';
import '../models/character.dart';

class CharactersRepository {
  final CharactersGQL api = getIt<CharactersGQL>();

  Future<List<Character>> getCharacters() async {
    final rawCharacters = await api.getRawCharacters();
    final List<Character> characters = <Character>[];
    rawCharacters.forEach((character) {
      characters.add(
        Character.fromJson(character),
      );
    });
    return characters;
  }
}
