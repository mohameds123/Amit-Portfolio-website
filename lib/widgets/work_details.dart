import 'package:flutter/material.dart';

import '../core/utils/colors_manager.dart';

class WorkDetailsWidget extends StatelessWidget {
  const WorkDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/work.png"),
          SizedBox(
            height: 18,
          ),

          Text(
            "November 24, 2019",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
              fontSize: 15,
              color: ColorsManagers.darkBlue,
            ),
          ),
          Text(
            "Some Case Study",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
              fontSize: 24,
              color: ColorsManagers.darkBlue,
            ),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nUt sed aliquam sollicitudin rhoncus morbi.\nTincidunt quam sem elit a convallis.\nEget ipsum, velit vitae eu nunc, consequat, at.",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
              fontSize: 18,
              color: ColorsManagers.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}
