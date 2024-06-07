import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  double _currentSliderValue = 0.0;
  final double _maxSliderValue = 180.0;

  String _formatDuration(double seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = (seconds % 60).toInt();
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  static const _colors = [
    Color.fromARGB(123, 58, 98, 241),
    Color.fromARGB(108, 58, 98, 241),
    Color.fromARGB(187, 58, 98, 241),
  ];

  static const _durations = [
    5000,
    4000,
    3000,
  ];

  static const _heightPercentages = [
    0.2,
    0.4,
    0.6,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        title: const Text('Now Playing'),
        centerTitle: true,
      ),
      bottomNavigationBar: WaveWidget(
        backgroundColor: Colors.white,
        config: CustomConfig(
          colors: _colors,
          durations: _durations,
          heightPercentages: _heightPercentages,
        ),
        size: const Size(double.infinity, 50),
        waveAmplitude: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/photo1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Song Title',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_outline_rounded,
                          ),
                          onPressed: () {},
                        ),
                        const Text('Artist',
                            style: TextStyle(color: Colors.black)),
                        IconButton(
                          icon: const Icon(
                            Icons.share_outlined,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _formatDuration(_currentSliderValue),
                        ),
                        SizedBox(
                          width: 300,
                          child: Slider(
                            value: _currentSliderValue,
                            min: 0.0,
                            max: _maxSliderValue,
                            onChanged: (value) {
                              setState(() {
                                _currentSliderValue = value;
                              });
                            },
                          ),
                        ),
                        Text(
                          _formatDuration(_maxSliderValue),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.shuffle_outlined,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.skip_previous_outlined,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.pause_outlined,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.skip_next_outlined,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.loop_outlined,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
