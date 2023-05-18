// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:car_dealership/widgets/app_bar_widget.dart';
import 'package:car_dealership/widgets/footer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import '../providers/cars_api.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static const routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late VideoPlayerController _controller;
  late ScrollController _scrollController;

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
    _scrollController = ScrollController();
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

  void onPageChange(int index, _) {
    setState(() {
      _currentIndex = index;
      _controller.pause();
      _controller = VideoPlayerController.network(
        videoLink[_currentIndex],
      )..initialize().then((_) {
          _onVideoPlayerInitialized();
        });
    });
  }

  bool number = true;
  ScrollPhysics physics = const BouncingScrollPhysics();
  CurrencyFormatterSettings som = CurrencyFormatterSettings(
    symbol: '',
    thousandSeparator: ' ',
  );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Material(
      child: DefaultTabController(
        length: 9,
        animationDuration: const Duration(milliseconds: 500),
        child: WebSmoothScroll(
          controller: _scrollController,
          scrollOffset: 10,
          animationDuration: 600,
          curve: Curves.easeOutSine,
          child: CustomScrollView(
            physics: NeverScrollableScrollPhysics(),
            controller: _scrollController,
            scrollBehavior: ScrollBehavior(),
            slivers: [
              SliverAppBar(
                // title: Image.network('https://cdn.mos.cms.futurecdn.net/owm4oa3hXUG58mka7hPvfP.jpg'),
                expandedHeight: 80,
                backgroundColor: number ? const Color(0xFF227093) : Colors.white,
                flexibleSpace: const AppBarWidget(),
              ),
              SliverToBoxAdapter(
                child: Stack(
                  children: [
                    CarouselSlider.builder(
                      itemCount: 8,
                      itemBuilder: (context, index, realIndex) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: VideoPlayer(_controller),
                        );
                      },
                      options: CarouselOptions(
                        aspectRatio: 1.778,
                        viewportFraction: 4,
                        autoPlay: false,
                        onPageChanged: onPageChange,
                      ),
                    ),
                    Positioned(
                      left: 70,
                      top: 290,
                      child: FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Color(0xFF05141F),
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(25),
                        ),
                        onPressed: () => onPageChange(_currentIndex != 0 ? _currentIndex -= 1 : _currentIndex = videoLink.length - 1, CarouselPageChangedReason),
                        child: Icon(Icons.arrow_back_rounded),
                      ),
                    ),
                    Positioned(
                      right: 70,
                      top: 290,
                      child: FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Color(0xFF05141F),
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(25),
                        ),
                        onPressed: () => onPageChange(_currentIndex != videoLink.length - 1 ? _currentIndex += 1 : _currentIndex = 0, CarouselPageChangedReason),
                        child: Icon(Icons.arrow_forward),
                      ),
                    )
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Kia Modellari',
                      style: TextStyle(
                        fontSize: 65,
                        color: Color(0xFF05141F),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(bottom: 80),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      DefaultTabController(
                        length: 10,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.12,
                            right: MediaQuery.of(context).size.width * 0.12,
                          ),
                          child: Column(
                            children: [
                              const TabBar(
                                dividerColor: Colors.grey,
                                indicatorColor: Color(0xFF05141F),
                                labelColor: Color(0xFF05141F),
                                unselectedLabelColor: Color(0xFF05141F),
                                labelStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF05141F),
                                ),
                                tabs: [
                                  Tab(
                                    text: 'Cerato',
                                  ),
                                  Tab(
                                    text: 'Sorento',
                                  ),
                                  Tab(
                                    text: 'Yangi seltos',
                                  ),
                                  Tab(
                                    text: 'Sportage',
                                  ),
                                  Tab(
                                    text: 'Yangi EV6',
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
                              Container(
                                padding: EdgeInsets.only(bottom: 30, top: 20),
                                height: 560,
                                child: FutureBuilder(
                                  future: Provider.of<CarApi>(context, listen: false).getCars(),
                                  builder: (context, snapshot) {
                                    return snapshot.hasData
                                        ? TabBarView(
                                            children: snapshot.data!.map((e) {
                                              return Stack(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Positioned(
                                                        top: 150,
                                                        child: Image.network('https://telegra.ph/file/ab9aad16525cddc05477c.png'),
                                                      ),
                                                      SizedBox(
                                                        height: 380,
                                                        width: double.maxFinite,
                                                        child: Image.network(e.image),
                                                      ),
                                                    ],
                                                  ),
                                                  Positioned(
                                                    bottom: 0,
                                                    right: MediaQuery.of(context).size.width * 0.28,
                                                    child: Container(
                                                      width: 300,
                                                      alignment: Alignment.center,
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            e.name,
                                                            style: GoogleFonts.openSans(
                                                              fontSize: 38,
                                                              fontWeight: FontWeight.w600,
                                                              color: Color(0xFF05141F),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 8,
                                                          ),
                                                          Text(
                                                            '${CurrencyFormatter.format(e.price, som)} so\'m dan',
                                                            style: GoogleFonts.montserrat(
                                                              fontSize: 18,
                                                              color: Color(0xFF05141F),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    bottom: 0,
                                                    right: 10,
                                                    child: SizedBox(
                                                      width: 250,
                                                      height: 60,
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton.styleFrom(
                                                          primary: Color(0xFF05141F),
                                                          shape: const RoundedRectangleBorder(),
                                                        ),
                                                        child: Text('Model haqida batafsil ma\'lumot'),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            }).toList(),
                                          )
                                        : snapshot.connectionState == ConnectionState.waiting
                                            ? const Center(
                                                child: CircularProgressIndicator(),
                                              )
                                            : Center(
                                                child: Text(snapshot.error.toString()),
                                              );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 70, right: 70),
                  child: Column(
                    children: [
                      const Text(
                        'Maxsus takliflar',
                        style: TextStyle(
                          fontSize: 65,
                          color: Color(0xFF05141F),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: width * 0.21,
                            height: 400,
                            color: Colors.grey[100],
                            padding: EdgeInsets.only(left: 8, right: 8),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 200,
                                  width: width * 0.21,
                                  child: Image.network(
                                    'https://storage.kun.uz/source/9/Ft-zwD3CBaQoN2gP-wAzbERVsyCxYROJ.jpg',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    right: 5,
                                    top: 10,
                                  ),
                                  child: Text(
                                    '12 oy davomida foizsiz bo\'lib to\'lash',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 17,
                                      color: Color(0xFF05141F),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width * 0.21,
                            height: 400,
                            color: Colors.grey[100],
                            padding: EdgeInsets.only(left: 8, right: 8),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 200,
                                  width: width * 0.21,
                                  child: Image.network(
                                    'https://www.autocar.co.nz/wp-content/uploads/2021/06/Kia-Sorento-PHEV-Premium_front-static_www-750x375.jpg',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    right: 5,
                                    top: 10,
                                  ),
                                  child: Text(
                                    'Kreditlash uchun maxsus taklif',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 17,
                                      color: Color(0xFF05141F),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width * 0.21,
                            height: 400,
                            color: Colors.grey[100],
                            padding: EdgeInsets.only(left: 8, right: 8),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 200,
                                  width: width * 0.21,
                                  child: Image.network(
                                    'https://listcarbrands.com/wp-content/uploads/2022/08/Can-the-Kia-Seltos-Tow-a-Trailer-600x400.jpg',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    right: 5,
                                    top: 10,
                                  ),
                                  child: Text(
                                    'Asaka Bank-dan 50% avans to\'lovi bilan avtomobil krediti, butun model oralig\'i uchun 0% stavka',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 17,
                                      color: Color(0xFF05141F),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width * 0.21,
                            height: 400,
                            color: Colors.grey[100],
                            padding: EdgeInsets.only(left: 8, right: 8),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 200,
                                  width: width * 0.21,
                                  child: Image.network(
                                    'https://stimg.cardekho.com/images/cms/carnewsimages/editorimages/640aea8a230cd.jpg',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    right: 5,
                                    top: 10,
                                  ),
                                  child: Text(
                                    'Davr Bank-dan 0% avans to\'lovi bilan avtomobil krediti, butun model oralig\'i uchun 24% stavka',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 17,
                                      color: Color(0xFF05141F),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: 260,
                        height: 60,
                        child: FilledButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF05141F),
                            shape: const RoundedRectangleBorder(),
                          ),
                          onPressed: () {},
                          child: Text('Barcha maxsus takliflar'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Xabardor bo\'ling',
                      style: TextStyle(
                        fontSize: 65,
                        color: Color(0xFF05141F),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Footer(),
              )
            ],
          ),
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
