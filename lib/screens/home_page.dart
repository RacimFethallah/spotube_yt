import 'package:flutter/material.dart';
import 'package:spotube/screens/favorites_page.dart';
import 'package:spotube/screens/song_page.dart';
import 'package:spotube/widgets/song_tile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> songs = List.generate(20, (index) => 'Song $index');
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        title: const Text('Spotube'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SongPage();
                  },
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 58, 98, 241),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/photo1.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text('Song Titile', style: TextStyle(color: Colors.white)),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.pause, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          BottomNavigationBar(
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, color: Colors.black),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.album_outlined, color: Colors.black),
                label: 'Albums',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded, color: Colors.black),
                label: 'Artists',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music_outlined, color: Colors.black),
                label: 'Playing',
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/photo1.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.library_music_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(height: 8),
                        Text('Playlists', style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const FavoritesPage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/photo2.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.favorite_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(height: 8),
                          Text('Favorites', style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/photo3.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.history_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(height: 8),
                        Text('Recent', style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: SingleChildScrollView(
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: const Offset(0, 1),
                          )
                        ],
                        color: const Color.fromARGB(255, 58, 98, 241),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.all(12.0),
                      child: const Text(
                        'Songs',
                        style: TextStyle(color: Colors.white),
                      )),
                  const SizedBox(width: 16),
                  const Text('Albums'),
                  const SizedBox(width: 16),
                  const Text('Artists'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
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
    );
  }
}
