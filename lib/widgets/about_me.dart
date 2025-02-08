import 'package:flutter/material.dart';
import 'package:webportofolio/core/utils/colors_manager.dart';
import '../services/supabase_service.dart'; // Import your Supabase service
import 'experience.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SupabaseService().getAboutMe(), // Fetching "About Me" data from Supabase
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          final data = snapshot.data!;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "about.",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontFamily: "Poppins",
                  fontSize: 100,
                  color: ColorsManagers.tooLightYellow,
                ),
              ),
              SizedBox(height: 16),
              Text(
                data['description'] ?? 'No description available', // Use fetched description here
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  fontSize: 24,
                  color: ColorsManagers.darkBlue,
                ),
              ),
              SizedBox(height: 90),
              Padding(
                padding: EdgeInsets.only(left: 200),
                child: SizedBox(
                  height: 900,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 35),
                        child: ExperienceWidget(),
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        } else {
          return Center(child: Text('No data found.'));
        }
      },
    );
  }
}
