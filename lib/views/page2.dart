import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_demo_app/model/container_widget.dart';
import 'package:music_demo_app/views/page3.dart';

import '../constants.dart';
import '../model/home_page_info.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDF7),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding:kContainerPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (() {
                    Navigator.pop(context);
                  }),
                  child:  CardWidget(
                    color: kCardColor,
                    icon: Icons.arrow_back,
                    IconSize: kIconSize2,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  [
                    Text(
                      'English',
                      style: kBoldTextStyle,
                    ),
                    CardWidget(
                      color: kCardColor,
                      icon: FontAwesomeIcons.arrowRightArrowLeft,
                      IconSize: 12,
                      padding: EdgeInsets.all(15),
                    ),
                    Text(
                      'Spanish',
                      style: kBoldTextStyle,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ContainerWidget2(
                    colour: const Color(0XFFDADBEB),
                    cardChild: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Love',
                              style: kTextStyle,
                            ),
                            Row(
                              children:  [
                                InkWell(
                                  onTap: () {

                                  },
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: kIconColor,
                                    size: kIconSize,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Icon(
                                  Icons.close,
                                  color: kIconColor,
                                  size: kIconSize,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
                    const SizedBox(
                  height: 20.0,
                ),
                Center(

                  child: Image.asset(
                    'images/sound-waves.png',
                    height: 100.0,
                    color: const Color(0XFFFF4F6F),
                  ),
                ),
                  const SizedBox(height: 20.0,),
                Center(
                  child: SizedBox(

                    height: 120,
                    width: 120,
                    child: Card(
                      color: Color(0xffFF4F6C),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'images/mic.png',
                          color: Colors.white,
                          scale: 10,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
