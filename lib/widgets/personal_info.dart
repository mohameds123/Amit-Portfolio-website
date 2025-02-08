import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webportofolio/core/utils/colors_manager.dart';
import 'package:supabase/supabase.dart';

class PersonalInfoWidget extends StatelessWidget {
  final SupabaseClient supabase = SupabaseClient('your-supabase-url', 'your-supabase-key');

  Future<Map<String, dynamic>> fetchPersonalInfo() async {
    final response = await supabase.from('personal_info').select().single().execute();
    if (response.error != null) {
      throw response.error!;
    }
    return response.data as Map<String, dynamic>;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: fetchPersonalInfo(), // Fetch dynamic data
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Text('No personal info found');
        } else {
          var personalInfo = snapshot.data!;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, I’m ${personalInfo['name'] ?? 'John'}," ,  // Dynamic Name
                    style: TextStyle(
                      color: ColorsManagers.darkBlue,
                      fontSize: 28,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "${personalInfo['title'] ?? 'Product Designer'}",  // Dynamic Job Title
                    style: TextStyle(
                      color: ColorsManagers.darkBlue,
                      fontSize: 28,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "${personalInfo['location'] ?? 'based in Netherland.'}",  // Dynamic Location
                    style: TextStyle(
                      color: ColorsManagers.darkBlue,
                      fontSize: 28,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 26),
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
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Resume',
                        style: TextStyle(
                          fontFamily: 'Poppins',
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
                  SvgPicture.network(personalInfo['svg_image_url'] ?? "assets/images/profile_pic_style_2.svg"),  // Dynamic SVG image URL
                  Image.network(personalInfo['image_url'] ?? "assets/images/profile_pic.png"),  // Dynamic image URL
                ],
              ),
            ],
          );
        }
      },
    );
  }
}
