import 'package:graphql/client.dart';

final _link = HttpLink(
  'https://rickandmortyapi.com/graphql',
);

final GraphQLClient client = GraphQLClient(
  /// **NOTE** The default store is the InMemoryStore, which does NOT persist to disk
  cache: GraphQLCache(),
  link: _link,
);

const String readCharacters = r'''
query {
  characters(page: 1) {
    
   results{ 
    name
  	status
    species
  }
}
}
''';
getCharacter() async {
  final QueryOptions options = QueryOptions(
    document: gql(readCharacters),
  );

  final QueryResult result = await client.query(options);

  if (result.hasException) {
    print(result.exception.toString());
  }

  final List<dynamic> repositories =
      //result.data['viewer']['repositories']['nodes'] as List<dynamic>;
      result.data!["characters"]["results"] as List<dynamic>;

  print(repositories);
}
