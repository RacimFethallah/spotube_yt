import 'package:flutter/material.dart';

class SongTile extends StatelessWidget {
  final String songName;
  const SongTile({super.key, required this.songName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/photo1.jpg'),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          title: Text(songName),
          subtitle: const Text('Artist'),
          trailing: const SizedBox(
            width: 50,
            child: Row(
              children: [
                Icon(
                  Icons.favorite_outline_outlined,
                ),
                Icon(Icons.more_vert),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
