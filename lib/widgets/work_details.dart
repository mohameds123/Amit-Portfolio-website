import 'package:flutter/material.dart';

import '../core/utils/colors_manager.dart';

class WorkDetailsWidget extends StatelessWidget {
  final Map<String, dynamic> work;

  const WorkDetailsWidget({super.key, required this.work});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(work['imageUrl']),  // Use dynamic image URL
          SizedBox(height: 18),
          Text(
            work['date'],  // Use dynamic date
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
              fontSize: 15,
              color: ColorsManagers.darkBlue,
            ),
          ),
          Text(
            work['title'],  // Use dynamic title
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
              fontSize: 24,
              color: ColorsManagers.darkBlue,
            ),
          ),
          Text(
            work['description'],  // Use dynamic description
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
