import 'package:car_dealership/style/appBar_style.dart';
import 'package:car_dealership/widgets/app_bar_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
  int _currentIndex = 0;
  List<String> videoLink = [
    'https://cdn.kia-motors.uz/uploads/video/Kia_Seltos.mp4',
    'https://cdn.kia-motors.uz/uploads/files/2021.08.30_8_Kia_Launch_20s_16x9_IT_Apple%20ProRes%204444%20(2)%20(1)%20(1)%20(1).mp4',
    'https://cdn.kia-motors.uz/uploads/video/k5_video_orginal_compressed.mp4',
    'https://cdn.kia-motors.uz/uploads/files/Sportage%202022.mp4',
    'https://cdn.kia.ru/media-data/banner/video/carnival-new.mp4',
    'https://cdn.kia.ru//media-data/banner/video/stinger-main.mp4',
    'https://cdn.kia-motors.uz/uploads/video/K8_launching_MUSIC_notext.mp4',
  ];

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      videoLink[0],
      videoPlayerOptions: VideoPlayerOptions(allowBackgroundPlayback: true),
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _controller.play();
          _controller.setLooping(true);
        });
      });
  }

  void _onVideoPlayerInitialized() {
    // Play the video when it's initialized
    _controller.play();
    _controller.setLooping(true);
  }

  bool number = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 9,
        animationDuration: const Duration(milliseconds: 500),
        child: CustomScrollView(
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
              child: CarouselSlider.builder(
                itemCount: 8,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: VideoPlayer(_controller),
                  );
                },
                options: CarouselOptions(
                  aspectRatio: 1.778,
                  viewportFraction: 4,
                  autoPlay: false,
                  onPageChanged: (index, _) {
                    setState(() {
                      _currentIndex = index;
                      _controller.pause();
                      _controller = VideoPlayerController.network(
                        videoLink[_currentIndex],
                      )..initialize().then((_) {
                          _onVideoPlayerInitialized();
                        });
                    });
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: const [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Kia Modellari',
                    style: TextStyle(
                      fontSize: 65,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                bottom: 40,
                left: MediaQuery.of(context).size.width / 5,
                right: MediaQuery.of(context).size.width / 5,
              ),
              sliver: const SliverToBoxAdapter(
                child: TabBar(
                  dividerColor: Colors.grey,
                  indicatorColor: Colors.orange,
                  labelColor: Colors.orange,
                  unselectedLabelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 119, 115, 115),
                  ),
                  tabs: [
                    Tab(
                      text: 'Yangi seltos',
                    ),
                    Tab(
                      text: 'Cerato',
                    ),
                    Tab(
                      text: 'Sorento',
                    ),
                    Tab(
                      text: 'Sportage',
                    ),
                    Tab(
                      text: 'K5',
                    ),
                    Tab(
                      text: 'Stinger',
                    ),
                    Tab(
                      text: 'Carnival',
                    ),
                    Tab(
                      text: 'K8',
                    ),
                    Tab(
                      text: 'Bongo',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
// Positioned(
                      //   left: 50,
                      //   // bottom: MediaQuery.of(context).size.height / 2,
                      //   // top: MediaQuery.of(context).size.height / 2 + 25,
                      //   child: InkWell(
                      //     onTap: () {
                      //       print(index);
                      //       setState(() {
                      //         index != 0
                      //             ? index -= 1
                      //             : index = videoLink.length - 1;
                      //       });
                      //     },
                      //     child: Container(
                      //       height: 50,
                      //       width: 50,
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(50),
                      //         color: Color(0xFF05141f),
                      //       ),
                      //       child: const Icon(
                      //         Icons.arrow_back,
                      //         color: Colors.white,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // Positioned(
                      //   right: 50,
                      //   // bottom: MediaQuery.of(context).size.height / 2 + 25,
                      //   // top: MediaQuery.of(context).size.height / 2,
                      //   child: InkWell(
                      //     onTap: () {
                      //       print(index);
                      //       setState(() {
                      //         index += 1;
                      //       });
                      //     },
                      //     child: Container(
                      //       height: 50,
                      //       width: 50,
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(50),
                      //         color: Color(0xFF05141f),
                      //       ),
                      //       child: const Icon(
                      //         Icons.arrow_forward,
                      //         color: Colors.white,
                      //       ),
                      //     ),
                      //   ),
                      // ),