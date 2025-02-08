import 'package:flutter/material.dart';
import 'package:webportofolio/core/utils/colors_manager.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: SupabaseService().fetchData('experiences'),  // Replace 'experiences' with your Supabase table
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Text('No experiences found');
        } else {
          return Column(
            children: snapshot.data!.map((experience) {
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
                      SizedBox(width: 12),
                      Text(
                        experience['date'],  // Display dynamic date
                        style: TextStyle(
                          color: ColorsManagers.darkBlue,
                          fontSize: 24,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    experience['description'],  // Display dynamic description
                    style: TextStyle(
                      color: ColorsManagers.darkBlue,
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              );
            }).toList(),
          );
        }
      },
    );
  }
}
