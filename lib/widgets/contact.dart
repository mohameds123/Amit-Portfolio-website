import 'package:flutter/material.dart';
import 'package:webportofolio/core/utils/colors_manager.dart';
import '../services/supabase_service.dart'; // Import your Supabase service

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SupabaseService().getContactInfo(), // Fetching contact details from Supabase
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
                        data['description'] ?? 'No description available', // Dynamic description
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
                      SizedBox(height: 62),
                      Text(
                        data['email'] ?? 'No email provided', // Dynamic email
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          fontSize: 24,
                          color: ColorsManagers.darkBlue,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        data['twitter'] ?? 'No Twitter provided', // Dynamic Twitter link
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          fontSize: 24,
                          color: ColorsManagers.darkBlue,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        data['behance'] ?? 'No Behance provided', // Dynamic Behance link
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
        } else {
          return Center(child: Text('No data found.'));
        }
      },
    );
  }
}
