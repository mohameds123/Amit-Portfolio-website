import 'package:flutter/material.dart';
import 'package:webportofolio/core/utils/colors_manager.dart';

import 'experience.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
         "about.",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: "Poppins",
            fontSize: 100,
            color: ColorsManagers.tooLightYellow

          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet vulputate\ntristique quam felis. Id phasellus dui orci vulputate consequat nulla proin.\nId sit scelerisque neque, proin bibendum diam.",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
              fontSize: 24,
              color: ColorsManagers.darkBlue

          ),
        ),
        SizedBox(
          height: 90,
        ),
        Padding(
          padding: EdgeInsets.only(left: 200),
          child: SizedBox(
            height: 900,
            child: ListView.builder(
              itemCount: 4,
                itemBuilder:(context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: ExperienceWidget(),
              );
            } ),
          ),
        )
      ],


    );
  }
}
