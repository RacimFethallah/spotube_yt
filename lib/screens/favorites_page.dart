import 'package:flutter/material.dart';
import 'package:spotube/widgets/song_tile.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> songs = List.generate(20, (index) => 'Song $index');
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        title: const Text('Favorites'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/photo1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 8),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 10,
                              offset: const Offset(0, 1),
                            ),
                          ],
                          color: const Color.fromARGB(255, 58, 98, 241),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.play_arrow_rounded,
                              color: Colors.white,
                            ),
                            Text('Play All',
                                style: TextStyle(color: Colors.white)),
                          ],
                        )),
                    const SizedBox(width: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 58, 98, 241),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.shuffle,
                          ),
                          Text('Shuffle'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16.0),
                    itemCount: songs.length,
                    itemBuilder: (context, index) {
                      return SongTile(songName: songs[index]);
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
