import 'package:get_it/get_it.dart';
import './data/data_providers/apis/rick_and_morty_gql.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<CharactersGQL>(CharactersGQL());
}
