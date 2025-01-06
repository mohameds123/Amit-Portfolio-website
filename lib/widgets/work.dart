import 'package:flutter/material.dart';
import 'package:webportofolio/core/utils/colors_manager.dart';
import 'package:webportofolio/widgets/work_details.dart';

class WorkWidget extends StatelessWidget {
  const WorkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "work.",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: "Poppins",
            fontSize: 100,
            color: ColorsManagers.tooLightYellow,
          ),
        ),
        Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet vulputate tristique quam felis. Id phasellus dui orci vulputate consequat nulla proin. Id sit scelerisque neque, proin bibendum diam.",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: "Poppins",
            fontSize: 24,
            color: ColorsManagers.darkBlue,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 600,
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
              itemBuilder:(context,index){
              return WorkDetailsWidget();
              }
          ),
        )

      ],
    );
  }
}
