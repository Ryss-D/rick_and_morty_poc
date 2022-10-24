import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty_poc/data/models/character.dart';

class CharacterItem extends StatelessWidget {
  final Character character;
  late IconData icon;

  CharacterItem({
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    switch (character.status) {
      case "Alive":
        {
          icon = Icons.boy;
        }
        break;

      case "Dead":
        {
          icon = Icons.cancel;
        }
        break;

      default:
        {
          icon = Icons.question_mark;
        }
        break;
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            character.name,
            textAlign: TextAlign.center,
          ),
          subtitle: Text(character.species),
          trailing: Icon(icon),
          // Text(character.status),
        ),
        //TODO:create navigation to details
        //Structure for hero animation settedup
        child: GestureDetector(
          onTap: () {},
          child: Hero(
            tag: character.name,
            child: FadeInImage(
              placeholder:
                  const AssetImage('assets/images/character_placeholder.png'),
              image: NetworkImage(character.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
