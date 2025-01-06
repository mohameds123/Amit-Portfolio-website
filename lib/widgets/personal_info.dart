import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webportofolio/core/utils/colors_manager.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, I’m John,",
              style: TextStyle(
                  color: ColorsManagers.darkBlue,
                  fontSize: 28,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Product\nDesigner",
              style: TextStyle(
                  color: ColorsManagers.darkBlue,
                  fontSize: 28,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "based in Netherland.",
              style: TextStyle(
                  color: ColorsManagers.darkBlue,
                  fontSize: 28,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
              width: 164,
              height: 68,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  backgroundColor: Color(0xFFFFFF88),
                  foregroundColor: Colors.black,
                  side: BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                ),
                child: Text(
                  'Resume',
                  style: TextStyle(
                    fontFamily: 'Poppins', // Replace with your font if added
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgPicture.asset("assets/images/profile_pic_style_2.svg"),
            Image.asset("assets/images/profile_pic.png"),

          ],
        ),
      ],
    );
  }
}
