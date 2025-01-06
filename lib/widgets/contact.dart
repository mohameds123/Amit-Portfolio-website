import 'package:flutter/material.dart';

import '../core/utils/colors_manager.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Text(
          "contact.",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: "Poppins",
            fontSize: 100,
            color: ColorsManagers.tooLightYellow,
          ),
        ),
        SizedBox(height: 50),

        // Image and Text Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            Image.asset(
              "assets/images/contact.png",
              width: 440,
              height: 314,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 32),

            // Text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nUt sed aliquam sollicitudin rhoncus morbi.\nTincidunt quam sem elit a convallis.\nEget ipsum, velit vitae eu nunc, consequat, at.",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    fontSize: 24,
                    color: ColorsManagers.darkBlue,
                  ),
                ),
                SizedBox(
                  height: 62,
                ),
                Text(
                  "johndoe@mail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    fontSize: 24,
                    color: ColorsManagers.darkBlue,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "twitter.com/johndoe",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    fontSize: 24,
                    color: ColorsManagers.darkBlue,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),Text(
                  "behance.com/johndoe",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    fontSize: 24,
                    color: ColorsManagers.darkBlue,
                  ),
                ),


              ],
            ),
          ],
        ),
      ],
    );
  }
}
