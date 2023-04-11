import 'package:car_dealership/style/appBar_style.dart';
import 'package:car_dealership/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static const routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://cdn.kia-motors.uz/uploads/video/Kia_Seltos.mp4',
        videoPlayerOptions: VideoPlayerOptions(allowBackgroundPlayback: true))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _controller.setLooping(true);
          _controller.play();
        });
      });
  }

  bool number = true;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          // title: Image.network('https://cdn.mos.cms.futurecdn.net/owm4oa3hXUG58mka7hPvfP.jpg'),
          expandedHeight: 80,
          backgroundColor: number ? Color(0xFF227093) : Colors.white,
          flexibleSpace: MouseRegion(
            onEnter: (event) {
              setState(() {
                number = false;
                appBarText = TextStyle(color: Colors.black, fontSize: 15);
              });
            },
            onExit: (event) {
              setState(() {
                number = true;
              });
            },
            child: AppBarWidget(),
          ),
        ),
        SliverToBoxAdapter(
          child: Center(
            child: _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : Container(),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
