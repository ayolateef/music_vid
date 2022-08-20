import 'package:flutter/material.dart';


import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import '../model/home_page_info.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDF7),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          padding: kContainerPadding,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('images/street.jpeg')),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            
SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                    CardWidget(
                    color: kCardColor,
                    icon: Icons.flash_off_outlined,
                    IconSize: kIconSize
                    ),




                    Row(

                  children: const [
                    CardWidget2(
                      color: Color(0xffFF4F6C),
                      cardChild: Icon(
                        Icons.camera_alt,
                        size: kIconSize3,
                        color: Color(0xffFBF6FD),
                      ),
                    ),
                    SizedBox(width: 10,),
                    CardWidget2(
                      color: kCardColor,
                      cardChild: Icon(
                        Icons.picture_in_picture_outlined,
                        size: kIconSize3,
                        color: kIconColor,
                      ),
                    )
                  ],
                )
                 ],),
                 
           
          ]),
        )),
      ),
    );
  }
}
