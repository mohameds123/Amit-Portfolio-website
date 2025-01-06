import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webportofolio/core/utils/colors_manager.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "John Don",
          style: TextStyle(
              color: ColorsManagers.darkBlue, fontWeight: FontWeight.w600, fontSize: 24,fontFamily: "Poppins"),
        ),
        Row(
          children: [
            Text(
              "Home",
              style: TextStyle(color: ColorsManagers.darkBlue, fontSize: 18,fontFamily: "Poppins", fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 24,
            ),
            Text(
              "About",
              style: TextStyle(color: ColorsManagers.darkBlue, fontSize: 18,fontFamily: "Poppins", fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 24,
            ),
            Text(
              "Work",
              style: TextStyle(color: ColorsManagers.darkBlue, fontSize: 18,fontFamily: "Poppins", fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset("assets/images/o_logo.svg"),
            SizedBox(
              width: 24,
            ),
            SvgPicture.asset("assets/images/be_logo.svg"),
            SizedBox(
              width: 24,
            ),
            SvgPicture.asset("assets/images/twitter_logo.svg"),
          ],
        ),
      ],
    );
  }
}
