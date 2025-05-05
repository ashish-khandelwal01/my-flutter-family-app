import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'gallery_data.dart';  // Import the gallery data file
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Family Moments',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        fontFamily: 'DancingScript',
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Family Moments'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late AudioPlayer _audioPlayer;
  bool _musicStarted = false;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    if (!kIsWeb) {
      _playBackgroundMusic();
      _musicStarted = true;
    }
  }

  void _playBackgroundMusic() async {
    await _audioPlayer.setSource(AssetSource('music/audio.mp3'));
    await _audioPlayer.setVolume(0.4);
    await _audioPlayer.setReleaseMode(ReleaseMode.loop);
    await _audioPlayer.resume();
  }

  @override
  void dispose() {
    _audioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF3F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE6B5C3),
        elevation: 0,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.deepPurple),
      ),
      body: Stack(
        children: [
          const Positioned.fill(child: FloatingBalloons()),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Cherished Family Moments ❤️",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.purple,
                  ),
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    ..._buildGalleryButtons(),  // Dynamically add buttons based on data
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: kIsWeb && !_musicStarted
          ? FloatingActionButton(
        onPressed: () {
          _playBackgroundMusic();
          setState(() {
            _musicStarted = true;
          });
        },
        child: const Icon(Icons.play_arrow),
      )
          : null,
    );
  }

  List<Widget> _buildGalleryButtons() {
    List<Widget> buttons = [];
    for (var entry in GalleryData.gallery.images.entries) {
      buttons.add(
        _buildCuteButton(
          context,
          entry.key, // Use the key as the description
          ImageGalleryScreen(
            images: entry.value.map((image) => image['path']!).toList(), // Extract paths
            captions: entry.value.map((image) => image['caption'] ?? "").toList(), // Extract captions
            description: entry.key,
          ),
        ),
      );
    }
    return buttons;
  }

  static Widget _buildCuteButton(BuildContext context, String text, Widget screen) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(100, 100),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.white.withOpacity(0.9),
        foregroundColor: Colors.pinkAccent,
        elevation: 8,
        shadowColor: Colors.pinkAccent.withOpacity(0.5),
      ),
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => screen,
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(0.0, 1.0);
              const end = Offset.zero;
              const curve = Curves.easeInOut;
              final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              final offsetAnimation = animation.drive(tween);
              return SlideTransition(position: offsetAnimation, child: child);
            },
          ),
        );
      },
      child: Text(
        text,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class ImageGalleryScreen extends StatefulWidget {
  const ImageGalleryScreen({
    super.key,
    required this.images,
    required this.description,
    required this.captions,
  });

  final List<String> images;
  final String description;
  final List<String> captions;

  @override
  State<ImageGalleryScreen> createState() => _ImageGalleryScreenState();
}

class _ImageGalleryScreenState extends State<ImageGalleryScreen> {
  late final PageController _pageController;
  late final Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_currentPage < widget.images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.description,
          style: const TextStyle(color: Colors.deepPurple),
        ),
        backgroundColor: Colors.pinkAccent.shade100,
        iconTheme: const IconThemeData(color: Colors.deepPurple),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: widget.images.length,
        itemBuilder: (context, index) {
          final imagePath = widget.images[index];
          final caption = widget.captions[index];

          return AnimatedBuilder(
            animation: _pageController,
            builder: (context, child) {
              double value = 1.0;
              if (_pageController.position.haveDimensions) {
                value = _pageController.page! - index;
                value = (1 - (value.abs() * 0.3)).clamp(0.8, 1.0);
              }
              return Transform.scale(
                scale: value,
                child: child,
              );
            },
            child: Stack(
              fit: StackFit.expand,
              children: [
                // ✅ Blurred background image
                Image.asset(imagePath, fit: BoxFit.cover),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),
                // ✅ Foreground image and caption
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      caption,
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            blurRadius: 4,
                            color: Colors.black45,
                            offset: Offset(1, 1),
                          )
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


class FloatingBalloons extends StatefulWidget {
  const FloatingBalloons({Key? key}) : super(key: key);

  @override
  _FloatingBalloonsState createState() => _FloatingBalloonsState();
}

class _FloatingBalloonsState extends State<FloatingBalloons> {
  final List<Widget> _balloons = [];
  final List<GlobalKey> _balloonKeys = [];

  @override
  void initState() {
    super.initState();
    _startAddingBalloons();
  }

  void _startAddingBalloons() {
    Timer.periodic(const Duration(milliseconds: 800), (timer) {
      if (mounted) {
        setState(() {
          final key = GlobalKey();
          _balloonKeys.add(key);
          _balloons.add(_buildBalloon(key));
        });
      }
    });
  }

  Widget _buildBalloon(GlobalKey key) {
    final random = Random();
    final double left = random.nextDouble() * MediaQuery.of(context).size.width;
    final double size = random.nextDouble() * 30 + 20;
    final int duration = random.nextInt(3000) + 2000;

    return Positioned(
      key: key,
      left: left,
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: MediaQuery.of(context).size.height, end: -size),
        duration: Duration(milliseconds: duration),
        builder: (context, topValue, child) {
          return Positioned(
            top: topValue,
            child: child!,
          );
        },
        child: Icon(
          Icons.circle,
          color: Colors.lightBlueAccent.withOpacity(0.7),
          size: size,
        ),
        onEnd: () {
          if (mounted) {
            setState(() {
              _removeBalloon(key);
            });
          }
        },
      ),
    );
  }

  void _removeBalloon(GlobalKey key) {
    final index = _balloonKeys.indexOf(key);
    if (index != -1) {
      _balloonKeys.removeAt(index);
      _balloons.removeAt(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: _balloons);
  }

  Widget buildBlurredImageDisplay(String imagePath) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // ✅ Background image (blurred)
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
        // ✅ Apply blur to the background image
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              color: Colors.black.withOpacity(0.3), // Optional dark overlay
            ),
          ),
        ),
        // ✅ Foreground: Actual image in center
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
