import 'package:flutter/material.dart';
import 'package:webportofolio/core/utils/colors_manager.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                color: ColorsManagers.darkBlue,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            SizedBox(width: 12,),
            Text("2014 - 2018",
            style: TextStyle(
              color: ColorsManagers.darkBlue,
              fontSize: 24,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600
            ),
            )
          ],
        ),
        SizedBox(height: 12,),
        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet vulputate tristique quam felis. Id phasellus dui orci vulputate consequat nulla proin. Id sit scelerisque neque, proin bibendum diam.',
          style: TextStyle(
              color: ColorsManagers.darkBlue,
              fontSize: 24,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400
          ),

        )
      ],
    );
  }
}
