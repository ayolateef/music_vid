import 'package:flutter/material.dart';
import 'package:music_demo_app/views/page2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import '../model/container_widget.dart';
import '../model/home_page_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDF7),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: kContainerPadding,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.bars,
                            color: Color(0xff57588C),
                          )),

                      // ignore: prefer_const_literals_to_create_immutables
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                'Hello, Amy',
                                style: kBoldSmallTextStyle,
                              ),
                              const Text(
                                'lorem ipsum color',
                                style: kTextStyle,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage('images/girl.png'),
                            backgroundColor: Color(0xffF9F8FE),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'English',
                        style: kBoldTextStyle,
                      ),
                      CardWidget(
                        color: kCardColor,
                        icon: FontAwesomeIcons.arrowRightArrowLeft,
                        IconSize: kIconSize,
                      ),
                      Text(
                        'Spanish',
                        style: kBoldTextStyle,
                      ),
                    ],
                  ),
                  ContainerWidget(
                    colour: const Color(0XFFDADBEB),
                    cardChild: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Love',
                              style: kTextStyle,
                            ),
                            Icon(
                              Icons.close,
                              color: kIconColor,
                              size: kIconSize,
                            )
                          ],
                        ),
                        InkWell(
                          onTap: (() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Page2()));
                          }),
                          child: const Icon(
                            Icons.volume_up,
                            color: kIconColor,
                            size: kIconSize,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CardWidget(
                                color: kCardColor,
                                icon: Icons.camera_alt,
                                IconSize: kIconSize),
                            CardWidget(
                                color: kCardColor,
                                icon: Icons.mode_edit_outline_outlined,
                                IconSize: kIconSize),
                            CardWidget(
                                color: kCardColor,
                                icon: FontAwesomeIcons.microphoneLines,
                                IconSize: kIconSize)
                          ],
                        )
                      ],
                    ),
                  ),
                  ContainerWidget(
                    colour: const Color(0XFFDADBEB),
                    cardChild: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Love',
                              style: kTextStyle,
                            ),
                            Icon(
                              Icons.close,
                              color: kIconColor,
                              size: kIconSize,
                            )
                          ],
                        ),
                        const Icon(
                          Icons.volume_up,
                          color: kIconColor,
                          size: kIconSize,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            const CardWidget(
                                color: kCardColor,
                                icon: Icons.open_in_new_rounded,
                                IconSize: kIconSize),
                            const CardWidget(
                                color: kCardColor,
                                icon: FontAwesomeIcons.message,
                                IconSize: kIconSize),

                            Card(
                              elevation: 5,
                              color: kCardColor,
                              shape: RoundedRectangleBorder(
                                borderRadius:  BorderRadius.circular(40.0)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.bookmark_outline,
                                  size: kIconSize,
                                  color: Color(0xffFFD469)
                                ),
                              ),
                            )

                            // CardWidget(
                            //     color: kCardColor,
                            //     icon: Icons.bookmark_outline,
                            //     IconSize: kIconSize

                            //     )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Text(
                    'Defination',
                    style: kBoldTextStyle,
                  ),
                  const Text(
                    'Amor(noun)',
                    style: kTextStyle,
                  ),
                  const Text(
                    'a secret or illicit love affair or lover.',
                    style: kTextStyle,
                  ),
                  const Text(
                    '"Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s"',
                    style: TextStyle(
                        fontWeight: FontWeight.w200, color: Color(0xff5A5A85)),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
