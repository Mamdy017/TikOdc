import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math' as math;

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: PageAccueil());
  }
}

class PageAccueil extends StatelessWidget {
  PageAccueil({super.key});
  final List<Map> tiktokitems = [
    {
      "video": "assets/videos/video_1.mp4",
    },
    {
      "video": "assets/videos/video_2.mp4",
    },
    {
      "video": "assets/videos/video_3.mp4",
    },
    {
      "video": "assets/videos/video_4.mp4",
    },
    {
      "video": "assets/videos/video_5.mp4",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.infinity,
        scrollDirection: Axis.vertical,
        viewportFraction: 1.0,
      ),
      items: tiktokitems.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              color: const Color(0xFF141518),
              child: Stack(
                children: [
                  VideoWidget(
                    videoUrl: i['video'],
                  ),
                  const PostContent()
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class VideoWidget extends StatefulWidget {
  const VideoWidget({super.key, required this.videoUrl});

  final String videoUrl;
  @override
  State<VideoWidget> createState() => _VideoWidgetState(this.videoUrl);
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  final String videoUrl;
  _VideoWidgetState(this.videoUrl);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.asset(videoUrl)
      ..initialize().then((_) {
        _controller.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}

class PostContent extends StatelessWidget {
  const PostContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          padding: const EdgeInsets.only(top: 40),
          // color: Colors.blue,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Icon(
              Icons.live_tv_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 70,
            ),
            Text(
              "Abonnement",
              style:
                  TextStyle(color: Colors.white54, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Pour toi",
              style:
                  TextStyle(color: Colors.white54, fontWeight: FontWeight.w600),
            )
          ]),
        ),
        Expanded(
          child: Row(children: [
            Expanded(
              child: Container(
                // color: Colors.red.withOpacity(0.5),
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "@Mamdy017",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "#La foi. #Pour toi. #Motivation",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.music_note,
                          color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Original sound - extreme',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 80,
              // color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 80,
                    // color:Colors.blue,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/photo-5.jpeg'),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    // color:Colors.grey,
                    child: Column(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red.withOpacity(0.85),
                          size: 40,
                        ),
                        Text(
                          '30.0K',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    child: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.commentDots,
                          color: Colors.white.withOpacity(0.85),
                          size: 40,
                        ),
                        Text(
                          '1250',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    child: Column(
                      children: [
                        Icon(
                          Icons.bookmark,
                          color: Colors.white.withOpacity(0.85),
                          size: 40,
                        ),
                        Text(
                          '200',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    child: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.share,
                          color: Colors.white.withOpacity(0.85),
                          size: 35,
                        ),
                        Text(
                          '200',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  const AnimatedLogo(),
                ],
              ),
            ),
          ]),
        )
      ],
    );
  }
}

class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({super.key});

  @override
  State<AnimatedLogo> createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Container(
        height: 45,
        width: 45,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: const DecorationImage(
            image: AssetImage("assets/images/disc_icon.png"),
          ),
        ),
        child: Image.asset('assets/images/tiktok_icon.png'),
      ),
    );
  }
}
